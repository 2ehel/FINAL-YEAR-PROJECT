<%-- 
    Document   : newjsp
    Created on : Jul 6, 2021, 2:23:29 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="main">

            <p class="sign"><b>Add Food</b></p><br>
            <form class="form1" action="Photo" method="POST" enctype="multipart/form-data">
                <p style="color: black; margin-top: -30px" ></p><br>

                <label>Name:</label>
                <input class="un " type="text" name="name" required/><br/>

                <label>Price:&nbsp;&nbsp;</label>
                <input class="pass" type="text" name="price" required/><br/>

                <label>Category:</label>
                <div>
                    <input type="radio" id="" name="ctgy" value="Malay_Food">
                    <label for="male">Malay Food</label><br>
                    <input type="radio" id="" name="ctgy" value="Chicken">
                    <label for="female">Fried Chicken</label><br>
                    <input type="radio" id="" name="ctgy" value="Noodles">
                    <label for="other">Noodles</label><br>
                    <input type="radio" id="" name="ctgy" value="Dessert">
                    <label for="other">Dessert</label><br>
                    <input type="radio" id="" name="ctgy" value="Burgers">
                    <label for="other">Burgers</label>
                </div>

                <label>Photo:</label>
                <input class="pass" type="file" name="photo" required/><br/>
                <input type="hidden" name="type" value="food">

                <br/>
                <input type="hidden" name="type" value="food">
                <input type="submit" class="submit" align="center" value="Add"/><br/><br/><br/>

            </form>
        </div>

        <div class="main">

            <p class="sign"><b>Add Drink</b></p><br>
            <form class="form1" action="Photo" method="POST" enctype="multipart/form-data">
                <p style="color: black; margin-top: -30px" ></p><br>

                <label>Name:</label>
                <input class="un " type="text" name="name" required/><br/>

                <label>Price:&nbsp;&nbsp;</label>
                <input class="pass" type="text" name="price" required/><br/>

                <label>Photo:</label>
                <input class="pass" type="file" name="photo" required/><br/>
                <input type="hidden" name="type" value="drink">

                <br/>
                <input type="hidden" name="type" value="drink">
                <input type="submit" class="submit" align="center" value="Add"/><br/><br/><br/>

            </form>
        </div>
    </body>
</html>
