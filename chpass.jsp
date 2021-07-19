<%@page import="java.sql.DriverManager,java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

<%
    int LOGIN=0 ;
    String id=request.getParameter("email");
    String oldp=request.getParameter("opass");
    String newp=request.getParameter("newpass");
    String cnewp=request.getParameter("cnewpass");
    String Ass=request.getParameter("sub");
    if(Ass!=null)
    {
   if(newp.equals(cnewp))
   {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gadget","root","root");
    PreparedStatement st=con.prepareStatement("update signup set npass=? where email=? and =?");
    st.setString(1, newp);
    st.setString(2, id);
    st.setString(3, );
    st.executeUpdate();
    response.sendRedirect("log.jsp");
   }
else
   {
   LOGIN=1;
   }
}

%>

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
          color: darkblue;
          font-weight: bold;
        }
        
        .ask
        {
            font-size: 17px;
            font-family: arial;
        }
    </style>
    
    <body background="background.jpg">
        <form>   
            <input type="text" placeholder=" Search...." name="search" style='margin-left:810px;'>   
            <button type="submit">Search</button>   
        </form>
        
        <div style="width:47%;height:20px;margin-left:650px;margin-top:78px;background-color:white;margin-left: 800px">
            <table width= "100%" height="100%" border="0" style='margin-top:-80px;background-color: white;margin-left: 0px'>
                <tr align="center">
                    <td class="tdtheme"><a href="home.jsp">Home</a></td>
                    <td class="tdtheme"><a href="services.jsp">Services</a></td>
                    <td class="tdtheme"><a href="products.jsp">Products</a></td>
                    <td class="tdtheme"><a href="askit.jsp">Ask it</a></td>
                    <td class="tdtheme"><a href="offers.jsp">Offers</a></td>
                    <td class="tdtheme"><a href="feeds.jsp">Feeds</a></td>
                    <td class="tdtheme"><a href="login.jsp">Login</a></td>
                    <td class="tdtheme"><a href="microphone.jsp"><img src='microphone.jpg' width='30px' height='30px'></a></td>
                    <td class="tdtheme"><a href="home.jsp"><img src='cart.jpg' width='52px' height='52px'></a></td>
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
                        <img src="logo.jpg" style="width: 80px; height: 75px; margin-left: -435px; margin-bottom:-25px;">
                    </td>
                </tr>
            </table>
        </div>
        
        <div style="width:30%;height:55%;margin-left:85px;margin-top:105px;background-color:white;opacity: 0.6;">         
        </div>
        
        <div style="width:20%;height:35%;margin-left:160px;margin-top:-335px;background-color:white;opacity: 0.6;">
            <table width="100%" border="0" style='padding-top: 80px; font-size: 30px;opacity: 1;color: goldenrod;text-align: center;font-weight: bold;'>
                <tr>
                    <td>
                        GADGET DUNIYA
                        <hr>
                        We Can Fix That
                    </td>
                </tr>
            </table>
        </div>

        <div style="width: 40%; height: 30%; background-color: white; margin-top: -21.5%; margin-left: 50%;">
            <table width="100%" height="100%" border="1" cellspacing="2" style="background-color: lightblue; color: darkblue; font-weight: bold;">
                <tr align="center">
                    <td colspan="2" style="font-size: 20px; color: darkblue; font-weight: bold; text-decoration: underline;">
                        CHANGE PASSWORD
                    </td>
                </tr>
                
                <tr align="center">
                    <td class="ask" width="50%" style=" text-align: center;">E-mail ID</td>
                    <td><input type="text" placeholder="Enter e-mail id..." name="email" style="width: 80%"</td>
                </tr>
                
                <tr align="center">
                    <td class="ask" width="50%" style=" text-align: center;">Old Password</td>
                    <td><input type="password" placeholder="Enter old password..." name="opass" style="width: 80%"</td>
                </tr>
                
                <tr align="center">
                    <td class="ask" width="50%" style=" text-align: center;">New Password</td>
                    <td><input type="password" placeholder="Enter new password..." name="cnpass" style="width: 80%"</td>
                </tr>
                
                <tr align="center">
                    <td class="ask" width="50%" style=" text-align: center;">Confirm New Password</td>
                    <td><input type="text" placeholder="Enter new password again..." name="ccnpass" style="width: 80%"</td>
                </tr>
            </table>
        </div>
        
        <form>   
            <button type="submit" style="height: 30px; width: 80px; margin-left: 67.5%; margin-top: 10px; font-weight: bold; background-color: lightblue;font-size: 18px;color: darkblue;">Change</button>   
        </form>
    </body>
</html>