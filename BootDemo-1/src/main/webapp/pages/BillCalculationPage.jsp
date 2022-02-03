<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bill Calculation Page</title>
<link rel="stylesheet" href="cal.css">
</head>

<body id="bodyid">

    <div id="divid" class="main-container">

        <h2 align="center">
            <font face="sans-serif">Bill Calculation</font>
        </h2>

        <table align="center">
            <tr>
                <td id="tid" class="details"><b> Account Number </b></td>
                <td> <input class="data" type="text" name="accountNumber"><br><br> </td>
            </tr>

            <tr>
                <td id="tid" class="details"> <b> User Name </b></td>
                <td> <input class="data" type="text" name="username"><br><br> </td>
            </tr>


            <tr>
                <td class="details"> <b> Unit Rate </b></td>
                <td> <input id="unitrate" disabled value="Rs 6 per unit" class="data" type="text"
                        name="username"><br><br> </td>
            </tr>

            <tr>
                <td id="tid" class="details"> <b> Bill Type </b></td>
                <td>
                    <select name="" id="selectedvalue" onchange="optionChange()">
                        <option onchange="optionChange()" value="Domestic">Domestic</option>
                        <option onchange="optionChange()" value="Commercial">Commercial</option>
                    </select><br><br>
                </td>
            </tr>

            <tr>
                <td id="tid" class="details"> <b> Upload Meter Photo </b></td>
                <td><input type="file" name="" id=""> <br><br> </td>
            </tr>



            <tr>
                <td id="tid" class="details"> <b> Units Consumed </b></td>
                <td> <input id="unitsconsumed" class="data" type="text" name="units" value=""><br><br> </td>
            </tr>

            <tr>
                <td id="tid" class="details"><b> Amount </b></td>
                <td><input id="amm" class="data" type="text" name="amount"><br><br> </td>
            </tr>

            <tr>
                <td id="pr" class="details"><button id="btn2" onclick="printt()"><b> Print</b></button> </td>

                <td> <button id="btn" onclick="calculateFunction()" name="calculate"><b>Calculate
                            Bill</b></button><br><br> </td>
            </tr>

        </table>

    </div> 
    
    <b>  <div id="amountprice"></div>  </b>
    <p id="note"></p>

   


</body>
<script>
    function calculateFunction() {

        var a = document.getElementById("unitsconsumed").value;
        var b = parseInt(a);

      var s=  document.getElementById("selectedvalue").selectedIndex;
if (s==0) {
    var c = b * 6;
    document.getElementById("note").innerHTML="Note: You selected Domestic bill type"
    
} else {
    var c = b * 9;
    document.getElementById("note").innerHTML="Note: You selected Commercial bill type"

}


        if (a == 0) {
            document.getElementById("amountprice").innerHTML = `Your bill amount is 0`;
            document.getElementById("amm").value = 0;


        } else {
            document.getElementById("amountprice").innerHTML = `Your bill amount is Rs \${c}`;
            document.getElementById("amm").value = c;
        }

    }

    function printt(params) {
        window.print();
    }


    function optionChange(params) {

        var x = document.getElementById("selectedvalue").selectedIndex;
        if (x == 0) {
            document.getElementById("unitrate").value = "Rs 6 per unit";
        } else {
            document.getElementById("unitrate").value = "Rs 9 per unit";
        }

    }

</script>

</html>