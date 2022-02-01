function validate() {

 //---------------------------------------username validation-------------------------
 
 /*var user = document.getElementById("user").value;

 if(user==""){
  document.getElementById("username").innerHTML="*Please fill the details";
  return false;
 }

 if(user.length<3){
  document.getElementById("username").innerHTML="*Please give username greater than 2 characters";
  return false;
 }

 if(user.length>13){
  document.getElementById("username").innerHTML="*Please give username less than 14 characters";
  return false;
 }*/

 //-----------------------------------------password validation--------------------------

var pass = document.getElementById("pass").value;

    if (pass == "") {
        document.getElementById("password").innerHTML = "*Please fill the details";
        document.getElementById("password").style.color = "red";
        return false;
    }
    else if (pass.length < 8) {
        document.getElementById("password").innerHTML = "*Please give password greater than 7 characters";
        document.getElementById("password").style.color = "red";
        return false;
    }
    else if(pass.search(/[0-9]/)== -1){
      document.getElementById("password").innerHTML = "*Atleast 1 numeric value must be enter.";
        document.getElementById("password").style.color = "red";
        return false;
    }
    else if(pass.search(/[a-z]/)== -1){
      document.getElementById("password").innerHTML = "*Atleast 1 small letter must be enter.";
        document.getElementById("password").style.color = "red";
        return false;
    }
    else if(pass.search(/[A-Z]/)== -1){
      document.getElementById("password").innerHTML = "*Atleast 1 uppercase letter must be enter.";
        document.getElementById("password").style.color = "red";
        return false;
    }
    else if(pass.search(/[@]/)== -1){
      document.getElementById("password").innerHTML = "*Atleast 1 special character must be enter.";
        document.getElementById("password").style.color = "red";
        return false;
    }
    else {
        document.getElementById("password").innerHTML = "*Valid";
        document.getElementById("password").style.color = "green";
        return true;
    }
}