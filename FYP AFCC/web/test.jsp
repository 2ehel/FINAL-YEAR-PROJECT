<%-- 
    Document   : test
    Created on : Jan 27, 2022, 1:18:09 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body><form action="test-process.jsp">
            <label>Name: </label>
            <input type="text" name="uname" id="uname">
            <label>Birthday</label>    
            <input type="date" id="bdate" name="bdate" onclick="fnCalculateAge();">
            <button id="btnCalculate"  onclick="fnCalculateAge();" >Calculate Age</button>

        </form>
        <script>
            function fnCalculateAge() {

                var userDateinput = document.getElementById("bdate").value;
                console.log(userDateinput);

                // convert user input value into date object
                var birthDate = new Date(userDateinput);
                console.log(" birthDate" + birthDate);

            }
        </script>
    </body>
</html>

