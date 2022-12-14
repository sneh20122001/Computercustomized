function validation(){

    var user = document.getElementById('user').value;
    var pass = document.getElementById('pass').value;
    var confirmpass = document.getElementById('conpass').value;
    var emails = document.getElementById('emails').value;





    if(user == ""){
        document.getElementById('username').innerHTML =" ** Please fill the username field";
        return false;
    }
    if((user.length <= 2) || (user.length > 20)) {
        document.getElementById('username').innerHTML =" ** Username lenght must be between 2 and 20";
        return false;	
    }
    if(!isNaN(user)){
        document.getElementById('username').innerHTML =" ** only characters are allowed";
        return false;
    }







    if(pass == ""){
        document.getElementById('passwords').innerHTML =" ** Please fill the password field";
        return false;
    }
    if((pass.length <= 5) || (pass.length > 20)) {
        document.getElementById('passwords').innerHTML =" ** Passwords lenght must be between  5 and 20";
        return false;	
    }


    if(pass!=confirmpass){
        document.getElementById('confrmpass').innerHTML =" ** Password does not match the confirm password";
        return false;
    }



    if(confirmpass == ""){
        document.getElementById('confrmpass').innerHTML =" ** Please fill the confirmpassword field";
        return false;
    }







    if(emails == ""){
        document.getElementById('emailids').innerHTML =" ** Please fill the email idx` field";
        return false;
    }
    if(emails.indexOf('@') <= 0 ){
        document.getElementById('emailids').innerHTML =" ** @ Invalid Position";
        return false;
    }

    if((emails.charAt(emails.length-4)!='.') && (emails.charAt(emails.length-3)!='.')){
        document.getElementById('emailids').innerHTML =" ** . Invalid Position";
        return false;
    }