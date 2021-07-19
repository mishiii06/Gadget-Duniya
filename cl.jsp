<%@page import="java.sql.DriverManager,java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

<%
    String button=request.getParameter("submit");
    if(button!=null)
    {
    String fullName=request.getParameter("fullN");
    String id=request.getParameter("email");
    String contactN=request.getParameter("contact");
    String pro=request.getParameter("product");
    String par=request.getParameter("part");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gadget","root","root");
    PreparedStatement st=con.prepareStatement("insert into clean values(?,?,?,?,?)");
    st.setString(1, fullName);
    st.setString(2, id);
    st.setString(3, contactN);
    st.setString(4, pro);
    st.setString(5, par);
    st.executeUpdate();
    response.sendRedirect("userhome.jsp");
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
          color: black;
          font-weight: bold;
        }
    </style>
    
    <body background="Images/background.jpg">
        
            <input type="text" placeholder=" Search...." name="search" style='margin-left:810px;'>   
            <button type="submit">Search</button>   
        
        
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

        <div style="width: 40%; height: 50%; background-color: white; margin-left: 45%; margin-top: 4%; margin-left: 30%;">
            <form action="">
            <table width="100%" height="100%" border="1" cellspacing="2" style="background-color: lightblue; color: darkblue; font-weight: bold;">
                <tr align="center">
                    <td colspan="2" style="font-size: 25px; color: darkblue; font-weight: bold; text-decoration: underline;">
                        Clean your Product
                    </td>
                </tr>
                
                <tr align="center" >
                    <td width="50%" class="ask" style=" padding-right: 50px;">Full Name</td>
                    <td><input type="text" placeholder="Enter full name..." name="fullN" style="width: 80%"</td>
                </tr>
                
                <tr align="center">
                    <td class="ask" style=" padding-right: 50px;">E-mail ID</td>
                    <td><input type="text" placeholder="Enter e-mail id..." name="email" style="width: 80%"</td>
                </tr>
                
                <tr align="center">
                    <td class="ask" style=" padding-right: 50px;">Contact Number</td>
                    <td><input type="text" placeholder="Enter contact number..." name="contact" style="width: 80%"</td>
                </tr>
                
                <tr align="center">
                    <td class="ask" style=" padding-right: 50px;">Product</td>
                    <td> <input type="text" placeholder="Enter product name..." name="product" style="width: 80%"></td>
                </tr>
                
                <tr align="center">
                    <td class="ask" style=" padding-right: 50px;">Part</td>
                    <td><input type="text" placeholder="Enter part to clean..." name="part" style="width: 80%"</td>
                </tr>
            </table>
        </div>
        
            <button name="submit" type="submit" style="height: 30px; width: 80px; margin-left: 47.5%; margin-top: 10px; font-weight: bold; background-color: whitesmoke;font-size: 18px;color: darkblue;">Submit</button>   
        </form>

    </body>
</html>