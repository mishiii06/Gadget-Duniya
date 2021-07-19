<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager,java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

<%
   
    int LOGIN=0;
    String button =request.getParameter("sub");
    if(button!=null)
    {
    String id=request.getParameter("email");
    String password=request.getParameter("pass");
    String type=request.getParameter("sel");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gadget","root","root");
    PreparedStatement st=con.prepareStatement("select *from signup where Email=? and npass=? and type=?");
    st.setString(1,id);
    st.setString(2, password);
    st.setString(3, type);
    ResultSet rs=st.executeQuery();
    if(rs.next())
            {
                String qw=rs.getString(3);
                if(type.equals("User"))
                {
                    session.setAttribute("name", id);
                    session.setAttribute("cont",qw);
                    response.sendRedirect("userhome.jsp");
                }
                 if(type.equals("Manager"))
                {
                    session.setAttribute("name", id);
                    response.sendRedirect("manager.jsp");
                }
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

        <div style="width: 40%; height: 25%; background-color: white; margin-top: -21.5%; margin-left: 50%;">
            
            <table width="100%" height="100%" border="1" cellspacing="2" style="background-color: lightblue; color: darkblue; font-weight: bold;">
                <form action="" method="doPost">
                <tr align="center">
                    <td colspan="2" style="font-size: 20px; color: darkblue; font-weight: bold; text-decoration: underline;">
                        LOGIN
                    </td>
                </tr>
                
                <td colspan="2" align="center"><select name="sel" class="ask" width="50%" style="text-align: center; background-color: lightblue;color: darkblue;font-weight: bold; font-family: times new roman; font-size: 20px;">
                        <option><a href="home.jsp">Login As</a></option>
                        <option><a href="aboutus.jsp">Manager</a></option>
                        <option><a href="home.jsp">User</a></option>                
                </td>
                
                <tr align="center">
                    <td class="ask" width="50%" style=" text-align: center;">E-mail ID</td>
                    <td><input  type="text"   placeholder="Enter e-mail id..." name="email" style="width: 80%"</td>
                </tr>
                
                <tr align="center">
                    <td class="ask" width="50%" style=" text-align: center;">Password</td>
                    <td><input type="password" placeholder="Enter password..." name="pass" style="width: 80%"</td>
                </tr>   
                <% if(LOGIN==1) {%>
                <tr  align="center">
                    <td colspan="2" class="ask" width="50%" style=" text-align: center; color: red;">*Invalid ID/password*</td>
                </tr>   
                <%}%>
            </table>
        </div>
          
        <button name="sub" type="submit" style="height: 30px; width: 80px; margin-left: 67.5%; margin-top: 10px; font-weight: bold; background-color: lightblue;font-size: 18px;color: darkblue;">Login</button>   
        </form>
        
        <div style="width: 12%; height: 3%; border-radius: 20px; background-color: white; margin-top: 10px; margin-left: 50%;">
            <table width="100%" height="100%" cellspacing="2" border="2" style="background-color: lightblue; color: darkblue; font-weight: bold;">
                <tr align="center">
                    <td colspan="2" style="font-size: 20px; color: darkblue; font-weight: bold;">
                    <a href="forpass.jsp">
                        Forgot Password?
                    </a>
                    </td>
                </tr>
            </table>
        </div>

    </body>
</html>