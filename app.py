from flask import Flask,render_template, request,session, redirect, url_for, flash
import pymysql.cursors

app = Flask(__name__)

app.secret_key = "abdhghsbghddvbnbaq"

Con = pymysql.Connect(host="127.0.0.1", port=3306, user="root", passwd=
"",db='computerclinic')
cur = Con.cursor()


@app.route("/", methods = ['GET','POST'])
def signup():
    if request.method == "POST":
        fname = request.form["firstname"]
        lname = request.form["lastname"]
        email = request.form["email"]
        pwd = request.form["email"]

        sql = "INSERT INTO signup(firstname, lastname, email, password) VALUES (%s, %s, %s, %s)"
        val = (fname, lname, email, pwd)
        Con.ping(reconnect = True)
        cur.execute(sql, val)
        Con.commit()

        return redirect(url_for('home'))
    return render_template("signup.html")

@app.route("/login", methods=['GET', 'POST'])
def login():
    if request.method == "POST":
        email = request.form["email"]
        password = request.form["password"]
        check_email = "SELECT * FROM signup WHERE email = '"+email+"'"
        Con.ping(reconnect = True)
        cur.execute(check_email)
        get_one_email = cur.fetchone()
        
        if (not get_one_email):
            flash("You entered wrong email address")
            return redirect(url_for('login'))
        elif(get_one_email[4]!=password):
            flash("Wrong Password")
            return redirect(url_for('login'))
        else:
            session['loggedin'] = True 
            session['myuserid'] = get_one_email[0]
            return redirect(url_for('home'))

    return render_template("login.html")

@app.route("/home")
def home():
    return render_template("home.html")



@app.route("/custompc", methods=["GET", "POST"])
def custom():
    if request.method == "POST":
        antec = request.form["antec"]
        amd = request.form["amd"]
        tuf = request.form["tuf"]
        asus = request.form["asus"]
        ssd = request.form["ssd"]
        g = request.form["g"]
        air = request.form["air"]
        tp_link = request.form["tp-link"]
        windows = request.form["windows"]

        global all_componenets

        all_componenets = antec + " " + amd + " " + tuf + " " + asus + " " + ssd + " " + g + " " + air + " " + tp_link + " " + windows + " "

 
        antec_li = antec.split("+")

        price_antec = antec_li[1].replace('₹', '')

        amd_li = amd.split("+")
        tuf_li = tuf.split("+")
        asus_li = asus.split("+")
        ssd_li = ssd.split("+")
        g_li = g.split("+")
        air_li = air.split("+")
        tp_link_li = tp_link.split("+")
        windows_li = windows.split("+")
        
        

        price_amd =amd_li[1].replace('₹', '')
        price_tuf = tuf_li[1].replace('₹', '')
        price_asus = asus_li[1].replace('₹', '')
        price_ssd =ssd_li[1].replace('₹', '')
        price_g = g_li[1].replace('₹', '')
        price_air = air_li[1].replace('₹', '')
        price_tp_link = tp_link_li[1].replace('₹', '')
        price_windows = windows_li[1].replace('₹', '')

        global total

        total = int(price_antec)  + int(price_amd) + int(price_air) + int(price_asus) + int(price_g) + int(price_ssd) + int(price_tuf) + int(price_tp_link) + int(price_windows) 

        return redirect(url_for('checkout'))
        
    return render_template("custompc.html")

@app.route("/devices", methods=["GET", "POST"])
def device():
    if request.method == "POST":
        product = request.form["product"]
        global item_name
        item_name = product.split("-")[0]
        global item_price
        item_price = product.split("-")[1]
        return redirect(url_for('checkout2'))
    return render_template("devices.html")

@app.route("/components", methods=["GET", "POST"])
def components():
    if request.method == "POST":
        product = request.form["product"]
        global item_name
        item_name = product.split("-")[0]
        global item_price
        item_price = product.split("-")[1]
        return redirect(url_for('checkout2'))
    return render_template("components.html")

@app.route("/trackorder", methods=["GET", "POST"])
def track():
    if request.method == "POST":
        orderNumber = request.form["orderNumber"]

        sql = "SELECT currentLocation FROM checkout WHERE id = '"+orderNumber+"'"
        Con.ping(reconnect = True)
        cur.execute(sql)
        location = cur.fetchone()[0]

        return render_template("location.html", location= location, orderNumber = orderNumber)
    return render_template("trackorder.html")

@app.route("/contact", methods=["GET","POST"])
def contact():
    if request.method == "POST":
        name = request.form["name"]
        email = request.form["email"]
        msg = request.form['message']
        sql = "INSERT INTO contact(name, email, message) VALUES (%s, %s, %s)"
        val = (name, email,msg)
        Con.ping(reconnect = True)
        cur.execute(sql, val)
        Con.commit()
        return redirect(url_for('contact'))
    return render_template("contact.html")

@app.route("/checkout", methods=["GET","POST"])
def checkout():
    if request.method == "POST":
        name = request.form["firstname"]
        email = request.form["email"]
        address = request.form["address"]
        city = request.form["city"]
        state = request.form["state"]
        zip = request.form["zip"]
        sql = "INSERT INTO checkout(name, email, address, city, state, zip, items) VALUES (%s, %s, %s, %s, %s, %s, %s)"
        val = (name, email, address, city, state, zip, all_componenets)
        Con.ping(reconnect = True)
        cur.execute(sql, val)
        Con.commit()
        sql2 = "SELECT id FROM checkout ORDER BY id DESC LIMIT 1"
        Con.ping(reconnect = True)
        cur.execute(sql2)
        Con.commit()
        id = cur.fetchone()[0]
        
        return render_template("thanks.html", count = id)
    return render_template("chekout.html", total = total)

@app.route("/thanks",)
def thanks():
    cur.execute("""SELECT id FROM checkout WHERE email = %s""", (id,))
    user = cur.fetchone()
    return render_template("thanks.html")

@app.route("/profilepage",)
def profilepage():
    return render_template("profilepage.html")

@app.route("/logout")
def logout():
    
    session.clear()
    return redirect(url_for('login'))

@app.route("/feedback", methods=["GET","POST"])
def feedback():
    if request.method=="POST":
        name = request.form["name"]
        email = request.form["email"]
        msg = request.form["message"]
        sql = "INSERT INTO feedback(name, email, message) VALUES (%s, %s, %s)"
        val = (name, email, msg)
        cur.execute(sql,val)
        Con.commit()
        return render_template("feedback.html")
    return render_template("feedback.html")

@app.route("/update", methods=["GET","POST"])
def update():
    if request.method == "POST":
        orderno = request.form["orderno"]
        updatedloc = request.form["location"]
        sql = "UPDATE checkout SET currentLocation = '"+updatedloc+"' WHERE id = '"+orderno+"'"
        Con.ping(reconnect=True)
        cur.execute(sql)
        Con.commit()
        return redirect(url_for('track'))
    return render_template("Updateloc.html")

item_price = 0

@app.route("/checkout2", methods=["GET","POST"])
def checkout2():
    if request.method=="POST":
        name = request.form["firstname"]
        email = request.form["email"]
        address = request.form["address"]
        city = request.form["city"]
        state = request.form["state"]
        zip = request.form["zip"]
        sql = "INSERT INTO checkout(name, email, address, city, state, zip, items) VALUES (%s, %s, %s, %s, %s, %s, %s)"
        val = (name, email, address, city, state, zip, item_name)
        Con.ping(reconnect = True)
        cur.execute(sql, val)
        Con.commit()
        sql2 = "SELECT id FROM checkout ORDER BY id DESC LIMIT 1"
        Con.ping(reconnect = True)
        cur.execute(sql2)
        Con.commit()
        id = cur.fetchone()[0]
        
        return render_template("thanks.html",count = id)
    return render_template("checkout2.html", total = item_price)
    
if __name__ == '__main__':
    app.run(debug=True)
