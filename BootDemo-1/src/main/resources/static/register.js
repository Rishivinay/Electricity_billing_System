function validation(){
var pass = document.getElementById("pass").value;

    if (pass == "") {
        document.getElementById("pwd").innerHTML = "*Please fill the details";
        document.getElementById("pwd").style.color = "red";
        return false;
    }
    else if (pass.length < 8) {
        document.getElementById("pwd").innerHTML = "*Please give password greater than 7 characters";
        document.getElementById("pwd").style.color = "red";
        return false;
    }
    else if(pass.search(/[0-9]/)== -1){
      document.getElementById("pwd").innerHTML = "*Atleast 1 numeric value must be enter.";
        document.getElementById("pwd").style.color = "red";
        return false;
    }
    else if(pass.search(/[a-z]/)== -1){
      document.getElementById("pwd").innerHTML = "*Atleast 1 small letter must be enter.";
        document.getElementById("pwd").style.color = "red";
        return false;
    }
    else if(pass.search(/[A-Z]/)== -1){
      document.getElementById("pwd").innerHTML = "*Atleast 1 uppercase letter must be enter.";
        document.getElementById("pwd").style.color = "red";
        return false;
    }
    else if(pass.search(/[@]/)== -1){
      document.getElementById("pwd").innerHTML = "*Atleast 1 special character must be enter.";
        document.getElementById("pwd").style.color = "red";
        return false;
    }
    else {
        document.getElementById("pwd").innerHTML = "*Valid";
        document.getElementById("pwd").style.color = "green";
        return true;
    }
    }