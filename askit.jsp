<%@page import="java.sql.DriverManager,java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

<%
    String button=request.getParameter("submit");
    if(button!=null)
    {
    String fullName=request.getParameter("fullN");
    String id=request.getParameter("email");
    String contactN=request.getParameter("contact");
    String req=request.getParameter("request");
    String date=request.getParameter("deadline");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gadget","root","root");
    PreparedStatement st=con.prepareStatement("insert into askit values(?,?,?,?,?)");
    st.setString(1, fullName);
    st.setString(2, id);
    st.setString(3, contactN);
    st.setString(4, req);
    st.setString(5, date);
    st.executeUpdate();
    response.sendRedirect("request.jsp");
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
            font-size: 20px;
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
        
        <div align="center" style="width: 14%; height: 5%; background-color: white; margin-left: 45%; margin-top: 1%; font-size: 25px; color: Black; font-weight: bold; padding-top: 10px">
            REQUEST NOW
        </div>
        
       
        <div style="width: 40%; height: 50%; background-color: white; margin-left: 45%; margin-top: 4%; margin-left: 30%;">
             <form action="">
            <table width="100%" height="100%" border="1" cellspacing="2" style="background-color: lightblue; color: darkblue; font-weight: bold;">
                <tr align="center">
                    <td colspan="2" style="font-size: 20px; color: darkblue; font-weight: bold; text-decoration: underline;">
                        ENTER THE DETAILS
                    </td>
                </tr>
                
                <tr align="center" >
                    <td class="ask" style=" padding-right       : 250px;">Full Name</td>
                    <td><input type="text" placeholder="Enter full name..." name="fullN" style="width: 80%"</td>
                </tr>
                
                <tr align="center">
                    <td class="ask" style=" padding-right: 250px;">E-mail ID</td>
                    <td><input type="text" placeholder="Enter e-mail id..." name="email"</td>
                </tr>
                
                <tr align="center">
                    <td class="ask" style=" padding-right: 190px;">Contact Number</td>
                    <td><input type="text" placeholder="Enter contact number..." name="contact"</td>
                </tr>
                
                <tr align="center">
                    <td class="ask" style=" padding-right: 260px;">Request</td>
                    <td> <textarea input type="text" placeholder="Enter your request..." name="request"></textarea></td>
                </tr>
                
                <tr align="center">
                    <td class="ask" style=" padding-right: 250px;">Deadline</td>
                    <td><input type="date" placeholder="date" name="deadline"</td>
                </tr>
            </table>
        </div>
        
        <div style="width: 20%; height: 50%; background-color: white; margin-top: -370px;border-radius: 50px;">
            <img src="Images/askit1.jpg" height="100%" width="100%">
        </div>
        
        <div style="width: 20%; height: 50%; background-color: white; margin-top: -370px; margin-left:1220px; border-radius: 50px;">
            <img src="Images/askit2.jpg" height="100%" width="100%" style="border-radius: 50px;">
        </div>
        
        <div style="width: 12%; height: 5%; background-color: lightblue;margin-left: 455px; margin-top: 0.5%">
            <table width="100%" height="100%" border="2" style="color: darkblue; font-weight: bold;font-size: 20px;">
                <tr>
                    <td><a href="request.jsp">
                        Your Requests
                    </a></td>
                </tr>
            </table> 
        </div>
         
            <button name="submit" type="submit" style="height: 30px; width: 70px; margin-left: 995px; margin-top: -40px">Submit</button>   
        </form>
        
    </body>
</html>