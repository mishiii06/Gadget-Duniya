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
            <input type="text" placeholder=" Search...." name="search" style='margin-left:810px;'>   
            <button type="submit">Search</button>   
        </form>
        
        <div style="width:47%;height:20px;margin-left:650px;margin-top:78px;background-color:white;margin-left: 800px;">
            <table width= "100%" height="100%" border="0" style='margin-top:-80px;background-color: white;margin-left: 0px'>
                <tr align="center">
                    <td class="tdtheme"><a href="userhome.jsp">Home</a></td>
                    <td class="tdtheme"><a href="services.jsp">Services</a></td>
                    <td class="tdtheme"><a href="userproducts.jsp">Products</a></td>
                     <td class="tdtheme"><a href="askit.jsp">Ask it</a></td>
                    <td class="tdtheme"><a href="userfeeds.jsp">Feeds</a></td>
                    <td class="tdtheme"><a href="sessiondestroy.jsp">Logout</a></td>
                    <td class="tdtheme"><a href="home.jsp"><img src='Images/cart.jpg' width='52px' height='52px'></a></td>
                    <td><select style="width: 80px; height: 30px;margin-right: 60px" onchange=" location= this.value">
                            <option value="">More</option>
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
        
        <div style="height: 30%; width: 20%; margin-top: 5%;margin-left: 20%">
            <a href=""><img src="Images/instagram.jpg" style="border-radius: 60px;"></a>
        </div>
        
        <div style="height: 30%; width: 20%; margin-top: -15%;margin-left: 60%">
            <a href=""><img src="Images/facebook.jpg" style="border-radius: 20px;"></a>
        </div>
        
        <div style="height: 30%; width: 20%; margin-top: 5%;margin-left: 20%">
            <a href=""><img src="Images/twitter.jpg" style="border-radius: 20px;" ></a>
        </div>
        
        <div style="height: 30%; width: 20%; margin-top: -15%;margin-left: 60%">
            <a href=""><img src="Images/linkedin.jpg" style="border-radius: 20px;"></a>
        </div>
    </body>
</html>