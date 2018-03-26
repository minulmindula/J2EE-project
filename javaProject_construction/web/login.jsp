<%-- 
    Document   : login
    Created on : Mar 14, 2018, 8:34:48 PM
    Author     : Minul Mindula
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="login.css">
        
    </head>
    <body>
    <center>
        <table border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td style="width: 68%;" valign="middle">
                    <img src="images/login_img.jpg" width="700" height="480" alt="login_img" style="margin-top: 35px"/>
                </td>
                <td style="width: 32%; padding-top: 50px;">
                    <center>
                        <div class="forms">
                        
                            <p>Sign up to experience the most<br>
                            efficient way of communication</p>
                            
                        <form>
                            <input type="button" value="Click here to Signup" onclick="window.location.href='signup.jsp'" />
                        </form> 
                        
                            <p style="font-size: 13px;"><b>Already have an account?</b></p>
                        <!--signin-->
                        <form action="login" method="post">
                            <input type="text" name="username" value="" placeholder="Username" required/><br>
                            <input type="password" name="password" value="" placeholder="Password" required/><br>
                            <input type="submit" value="Connect Now" />
                        </form>
                    </div>
                    </center>
                </td>
            </tr>
        </table>
    </center>
        
    </body>
</html>
