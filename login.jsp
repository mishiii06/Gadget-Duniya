<%@page import="java.sql.DriverManager,java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

<%
    int LOGIN=0 ;
    String qw="",qw1="";
    String fullName=request.getParameter("fullN");
    String id=request.getParameter("email");
    String contactN=request.getParameter("contactN");
    String add=request.getParameter("address");
    String pincode=request.getParameter("pin");
    String town=request.getParameter("city");
   qw=request.getParameter("npass");
   qw1=request.getParameter("cnpass");
    String question=request.getParameter("ques");
    String Ass=request.getParameter("sub");
    if(Ass!=null)
    {
   if(qw.equals(qw1))
   {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gadget","root","root");
    PreparedStatement st=con.prepareStatement("insert into signup values(?,?,?,?,?,?,?,?,?,?)");
    st.setString(1, fullName);
    st.setString(2, id);
    st.setString(3, contactN);
    st.setString(4, add);
    st.setString(5, pincode);
    st.setString(6, town);
    st.setString(7, qw);
    st.setString(8, qw1);
    st.setString(9, question);
    st.setString(10, "User");
    st.executeUpdate();
    
    response.sendRedirect("log.jsp");
   }
else
   LOGIN=1;
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
        
        .ask
        {
            font-size: 17px;
            font-family: arial;
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
        
        <form action="" method="doPost">
        <div style="width: 50%; height: 60%; background-color: white; margin-top: 2%; margin-left: 25%;">
            <table width="100%" height="100%" border="1" cellspacing="2" style="background-color: lightblue; color: darkblue; font-weight: bold;">
                <tr align="center">
                    <td colspan="2" style="font-size: 20px; color: darkblue; font-weight: bold; text-decoration: underline;">
                        SIGN UP
                    </td>
                </tr>
                
                <tr align="center" >
                    <td class="ask" width="30%" style=" text-align: center">Full Name</td>
                    <td><input type="text" placeholder="Enter full name..." name="fullN" style="width: 80%"</td>
                </tr>
                
                <tr align="center">
                    <td class="ask" width="50%" style=" text-align: center;">E-mail ID</td>
                    <td><input type="text" placeholder="Enter e-mail id..." name="email" style="width: 80%"</td>
                </tr>
                
                <tr align="center">
                    <td class="ask" width="50%" style="  text-align: center;">Contact Number</td>
                    <td><input type="text" placeholder="Enter contact number..." name="contactN" style="width: 80%"</td>
                </tr>
                
                <tr align="center">
                    <td class="ask" width="50%" style=" text-align: center;">Address</td>
                    <td> <textarea input type="text" placeholder="Enter address..." name="address" style="width: 80%"></textarea></td>
                </tr>
                
                <tr align="center">
                    <td class="ask" width="50%" style=" text-align: center;">PIN Code</td>
                    <td><input type="text" placeholder="Enter PIN code..." name="pin" style="width: 80%"</td>
                </tr>
                
                <tr align="center">
                    <td class="ask" width="50%" style=" text-align: center;">City/Town</td>
                    <td><input type="text" placeholder="Enter your city/town..." name="city" style="width: 80%"</td>
                </tr>
                
                <tr align="center">
                    <td class="ask" width="50%" style=" text-align: center;">New Password</td>
                    <td><input type="password" placeholder="Enter new password..." name="npass" style="width: 80%"</td>
                </tr>
                
                <tr align="center">
                    <td class="ask" width="50%" style=" text-align: center;">Confirm New Password</td>
                    <td><input type="password" placeholder="Enter new password again..." name="cnpass" style="width: 80%"</td>
                </tr

                <tr align="center">
                    <td class="ask" width="50%" style=" text-align: center;">Which is your favorite  word?</td>
                    <td><input type="text" placeholder="Your Answer..." name="ques" style="width: 80%; margin-left: 38px;"</td>
                </tr>
                
                <%if(LOGIN==1){%>
                 <tr align="center">
                     <td  class="ask" colspan="2" width="50%" style=" text-align: center; color: red">*New password and Confirm new password does not match*</td>                  
                </tr>
                <%}%>
            </table>
        </div>
        
                <button type="submit" name="sub"  style="height: 30px; width: 80px; margin-left: 47.5%; margin-top: 10px; font-weight: bold; background-color: lightblue;font-size: 18px;color: darkblue;">Submit</button>   
        </form>
        
        <div style="width: 45%; height: 11%; background-color: white; margin-top: 10px; margin-left: 27.5%;">
            <table width="100%" height="100%" border="1" cellspacing="2" style="background-color: lightblue; color: darkblue; font-weight: bold;">
                <tr align="center">
                    <td colspan="2" style="font-size: 23px; color: darkblue; font-weight: bold;">
                        Already have an account?
                    </td>
                </tr>
                
                <tr align="center" >
                    <td class="ask" width="30%" style=" text-align: center;  text-decoration: underline;"><a href="log.jsp">Login</a></td>
                </tr>
                
            </table>
        </div>
    </body>
</html> 