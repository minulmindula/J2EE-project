<%-- 
    Document   : user_profile
    Created on : Mar 25, 2018, 9:41:23 PM
    Author     : Minul Mindula
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="userprofile_view.css">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            
            String sql = "select * from user where username='"+session.getAttribute("un")+"'";
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/constructiondb","root","");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            
            
            String fname = rs.getString("firstName");
            String lname = rs.getString("lastName");

        %>
        
        
        <table border="1" width="100%" cellspacing="0" cellpadding="0">
            
            <tbody>
                <tr style="height: auto;">
        <td style="background-color: grey; background: rgba(255, 255, 255, 0.5); width: 25%;">
            <img style="margin-left:40px;;" class="titlebar_icon" src="images/msg.png" width="32" height="32" alt="msg" />
            <img class="titlebar_icon" src="images/noti.png" width="32" height="32" alt="noti"/>
        </td>
        <td style="background-color: grey; background: rgba(255, 255, 255, 0.5);">
            <form action="searchbar" method="post">
                <input type="text" placeholder="Search..." name ="search" class="searchbar" required>
                <button type="submit" style="width: 60px;" class="sbtn">
                    <img src="images/search.png" width="20" height="20" alt="search"/>
                </button>
            </form>
        </td>
        <td style="background-color: grey; background: rgba(255, 255, 255, 0.5); width: 15%;">
            <form action="logout" method="post">
                <input type="submit" value="Logout" />
            </form>
            
        </td>
    </tr>
    <tr style="height: 20%">
        <td>
            <div class="propic">
                
            </div>
        </td>
        <td rowspan="2" colspan="2">
            <div class="options">
                nvhj
            </div>
            <div class="personal_details">
                jhjvjh
            </div>
        </td>
                    
    </tr>
    <tr style="height: 20%">
        <td>
            <div class="pro_sidebar">
                igly
            </div>          
        </td>
                    
    </tr>
    </tbody>
        </table>

    </body>
</html>
