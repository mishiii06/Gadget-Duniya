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
                    <td class="tdtheme"><a href="home.jsp">Home</a></td>
                    <td class="tdtheme"><a href="products.jsp">Products</a></td>
                    <td class="tdtheme"><a href="feeds.jsp">Feeds</a></td>
                    <td class="tdtheme"><a href="login.jsp">Login</a></td>
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
        
        <div style="width:15%; height: 25.5%; background-color: lightblue;margin-top: 100px;margin-left: 25%; font-size: 18px; font-weight: bold;text-align: center; text-decoration: underline;">
            <img src="Images/mobile.jpg" width="100%" height="80%"><hr><a href="mobilephones.jsp">Mobile Phones</a>
            
        </div>
        
        <div style="width:15%; height: 25.5%; background-color: lightblue;margin-top: -188px;margin-left: 42%; font-size: 18px; font-weight: bold;text-align: center; text-decoration: underline;">
            <img src="Images/laptop.jpg" width="100%" height="80%"><hr><a href="laptop.jsp">Laptops</a>
            
        </div>
        
        <div style="width:15%; height: 25.5%; background-color: lightblue;margin-top: -190px;margin-left: 59%;font-size: 18px; font-weight: bold;text-align: center; text-decoration: underline;">
            <img src="Images/accessories.jpg" width="100%" height="80%"><hr><a href="mobileaccessories.jsp">Mobile Accessories</a>
            
        </div>
        
        <div style="width:15%; height: 25.5%; background-color: lightblue;margin-top: -190px;margin-left: 76%;font-size: 18px; font-weight: bold;text-align: center; text-decoration: underline;">
            <img src="Images/laptopaccessories.jpg" width="100%" height="80%"><hr><a href="laptopaccessories.jsp">Laptop Accessories</a>
            
        </div>
        
        <div style="width:15%; height: 25.5%; background-color: lightblue;margin-top: 100px;margin-left: 25%;font-size: 18px; font-weight: bold;text-align: center; text-decoration: underline;">
            <img src="Images/tablet.jpg" width="100%" height="80%"><hr><a href="tablet.jsp">Tablet and iPad</a>
            
        </div>
        
        <div style="width:15%; height: 25.5%; background-color: lightblue;margin-top: -190px;margin-left: 42%;font-size: 18px; font-weight: bold;text-align: center; text-decoration: underline;">
            <img src="Images/camera.jpg" width="100%" height="80%"><hr><a href="camera.jsp">Cameras</a>
            
        </div>
        
        <div style="width:15%; height: 25.5%; background-color: lightblue;margin-top: -190px;margin-left: 59%;font-size: 18px; font-weight: bold;text-align: center; text-decoration: underline;">
            <img src="Images/watch.jpg" width="100%" height="80%"><hr><a href="smartwatch.jsp">Smart Watch</a>
            
        </div>
        
        <div style="width:15%; height: 25.5%; background-color: lightblue;margin-top: -190px;margin-left: 76%;font-size: 18px; font-weight: bold;text-align: center; text-decoration: underline;">
            <img src="Images/speaker.jpg" width="100%" height="80%"><hr><a href="speaker.jsp">Speakers</a>
            
        </div>
        
        <div style="width:15%; height: 89%; background-color: darkblue;margin-top:-566px;margin-left:0%">
            <table width="100%" height="10%" border="4" style="font-size: 30px;color: white;text-align: center;";>
                <tr>
                    <td>
                        Best Selling
                    </td>
                </tr>
            </table>
        </div>
        <div style="width:15%; height: 80%;margin-top: -590px;">
                <marquee height="100%" behavior="scroll" direction="down" style="margin-top: 0px;">
                    <img src="Images/clip.jpg" width="100%" height="30%" alt="natural"/><hr>
                <img src="Images/fossil.jpg" width="100%" height="30%" alt="natural"/><hr>
                <img src="Images/headphones.jpg" width="100%" height="30%" alt="natural"/><hr>
                <img src="Images/nord.jpg" width="100%" height="30%" alt="natural"/><hr>
                <img src="Images/protector.jpg" width="100%" height="30%" alt="natural"/><hr>
                <img src="Images/alpha.jpg" width="100%" height="30%" alt="natural"/><hr>
            </marquee>
        </div>
             
        <form action="log.jsp">
            <button style="border-radius: 20px;width: 75px;height: 20px;margin-top: -50px;margin-left: 770px;text-align: center;font-size: 17px;background-color: red;color: white;font-weight: bold;cursor: pointer;padding-bottom:22.5px;">Login</button>
        </form>
    </body>
</html>