<html>
    <style>
        .tdtheme
        {
            width:13%;
            background-color: white;
            height:10px;
            font-size:15px;
            font-family: arial;
        }
        .tdtheme:hover
        {
            background-color:#8FC1E3;
        }
        body
        {
            background-repeat:no-repeat;
            background-position:center bottom;
        }
        a{
            text-decoration:none;  
            color: black;
            font-weight: bold;         
        }
    </style>

    <body background="Images/background.jpg">
        <form>   
            <input type="text" placeholder=" Search...."name="Search" style='margin-left:810px;'>   
            <button type="submit">Search</button>   
        </form> 

        <div style="width:47%;height:20px;margin-left:650px;margin-top:78px;background-color:white;margin-left: 800px;">
            <table width= "100%" height="100%" border="0" style='margin-top:-80px;background-color: white;margin-left: 0px'>
                <tr align="center">
                    <td class="tdtheme"><a href="home.jsp">Home</a></td>
                    <td class="tdtheme"><a href="products.jsp">Products</a></td>
                    <td class="tdtheme"><a href="feeds.jsp">Feeds</a></td>
                    <td class="tdtheme"><a href="login.jsp">Login</a></td>
                    <td class="tdtheme"><a href="home.jsp"><img src='Images/cart.jpg' width='52px' height='52px'></a></td>
                    <td><select style="width: 80px; height: 30px;margin-right: 60px" onchange=" location = this.value">
                            <option>More</option>
                            <option value="aboutus.jsp">About Us</option>
                            <option value="expertiseprofiles.jsp">Expertise Profiles</option>
                            <option value="location.jsp">Location</a></option>
                            <option value="reviews.jsp">Reviews</option>
                            <option value="complaints.jsp">Complaints</option>
                            <option value="contactus.jsp">Contact Us</option>
                </tr>
            </table>
        </div>
        <div style="width:40%;height:80px;margin-left:20px;margin-top:-45px;background-color:white;">
            <table width="100%" border="0" style='margin-left: 11%; font-size: 40px;font-weight: bold;'>
                <tr>
                    <td>
                        GADGET DUNIYA
                        <img src="Images/logo.jpg" style="width: 80px; height: 75px; margin-left: -435px; margin-bottom:-25px;">
                    </td>
                </tr>
            </table>
        </div>
        <div style="width: 100%; height: 500px; margin-top: 85px;display: flex;justify-content: space-evenly; align-items: center;">
            <div style="width: 300px; height: 400px;border: 5px solid white;border-radius: 50px;background-color: white;"><h1 style="text-align: center;text-decoration: underline;">Profile 1</h1><img src="Images/profile.jpg" style="width: 200px; height: 200px;margin-left: 50px;"><p style="margin-left: 20px;">Name: </p><p style="margin-left: 20px;">Age: </p><p style="margin-left: 20px;">Designation: </p></div>
            <div style="width: 300px; height: 400px;border: 5px solid white;border-radius: 50px;background-color: white;"><h1 style="text-align: center;text-decoration: underline;">Profile 2</h1><img src="Images/profile.jpg" style="width: 200px; height: 200px;margin-left: 50px;"><p style="margin-left: 20px;">Name: </p><p style="margin-left: 20px;">Age: </p><p style="margin-left: 20px;">Designation: </p></div>
            <div style="width: 300px; height: 400px;border: 5px solid white;border-radius: 50px;background-color: white;"><h1 style="text-align: center;text-decoration: underline;">Profile 3</h1><img src="Images/profile.jpg" style="width: 200px; height: 200px;margin-left: 50px;"><p style="margin-left: 20px;">Name: </p><p style="margin-left: 20px;">Age: </p><p style="margin-left: 20px;">Designation: </p></div>
        </div>
    </body>
</html>