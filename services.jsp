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
        
        <div style="width:47%;height:20px;margin-left:650px;margin-top:78px;background-color:white;margin-left: 800px">
            <table width= "100%" height="100%" border="0" style='margin-top:-80px;background-color: white;margin-left: 0px'>
                <tr align="center">
                    <td class="tdtheme"><a href="userhome.jsp">Home</a></td>
                    <td class="tdtheme"><a href="services.jsp">Services</a></td>
                    <td class="tdtheme"><a href="userproducts.jsp">Products</a></td>
                    <td class="tdtheme"><a href="askit.jsp">Ask it</a></td>
                    <td class="tdtheme"><a href="userfeeds.jsp">Feeds</a></td>
                    <td class="tdtheme"><a href="sessiondestroy.jsp">Logout</a></td>
                    <td class="tdtheme"><a href="home.jsp"><img src='Images/cart.jpg' width='52px' height='52px'></a></td>
                    <td><select style="width: 80px; height: 30px;margin-right: 60px">
                        <option><a href="home.jsp">More</a></option>
                        <option><a href="aboutus.jsp">About Us</a></option>
                        <option><a href="expertiseprofiles.jsp">Expertise Profiles</a></option>
                        <option><a href="location.jsp">Location</a></option>
                        <option><a href="reviews.jsp">Reviews</a></option>
                        <option><a href="complaints.jsp">Complaints</a></option>
                        <option><a href="contactus.jsp">Contact Us</a></option>
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

        <div style="width:30%;height:65%;margin-top:115px;background-color:white;">
            <a href="cust.jsp"><img src="Images/book.jpg" height="125px" width="250px" opacity="1" style="margin-top: 340px; margin-left: 100px;opacity: 1;"></a>
            <img src="Images/Customization.jpg" height="270px" width="100%" opacity="1" style="margin-top: -465px; margin-left: 0px;opacity: 1;">
            <table width="100%" border="0" style='margin-top: -170px; font-size: 40px;font-weight: bold;text-align: center;text-decoration: underline;'>
            <tr>
                <td>
                    Customize
                    </td>
            </tr>
            </table>
        </div>
            <table width="9%" height="5%" border="1" style="background-color: lightblue; font-weight: bold; color: darkblue; font-size: 20px;">
                <tr style="margin-top: 100px;">
                    <td>
                        <a href="custreq.jsp">
                            Your Requests
                        </a>
                    </td>
                </tr>
            </table>
        
        <div style="width:30%;height:65%;margin-left:35%;margin-top: -517px;background-color:white;">
            <a href="rep.jsp"><img src="Images/book.jpg" height="125px" width="250px" opacity="1" style="margin-top: 340px; margin-left: 100px;opacity: 1;"></a>
            <img src="Images/Repair.jpg" height="270px" width="100%" opacity="1" style="margin-top: -465px; margin-left: 0px;opacity: 1;">
            <table width="100%" border="0" style='margin-top: -170px; font-size: 40px;font-weight: bold;text-align: center;text-decoration: underline;'>
            <tr>
                <td>
                    Repair
                    </td>
            </tr>
            </table>
        </div>
        <table width="9%" height="5%" border="1" style="background-color: lightblue; font-weight: bold; color: darkblue; font-size: 20px; margin-left: 35%">
                <tr style="">
                    <td>
                        <a href="repreq.jsp">
                            Your Requests
                        </a>
                    </td>
                </tr>
            </table>
        
        <div style="width: 30%; height: 65%; background-color: white; margin-top: -517px; margin-left: 70%;background-color:white;">
            <a href="cl.jsp"><img src="Images/book.jpg" height="125px" width="250px" opacity="1" style="margin-top: 340px; margin-left: 100px;opacity: 1;"></a>
            <img src="Images/Cleaning.jpg" height="270px" width="100%" opacity="1" style="margin-top: -465px; margin-left: 0px;opacity: 1;">
            <table width="100%" border="0" style='margin-top: -170px; font-size: 40px;font-weight: bold; text-decoration: underline; text-align: center;'>
            <tr>
                <td>
                    Clean
                </td>
            </tr>
            </table>
        </div>
        <table width="9%" height="5%" border="1" style="background-color: lightblue; font-weight: bold; color: darkblue; font-size: 20px; margin-left: 70%;  ">
                <tr style="margin-top: 100px;">
                    <td>
                        <a href="clreq.jsp">
                            Your Requests
                        </a>
                    </td>
                </tr>
            </table>   
    </body>
</html>