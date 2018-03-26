<%-- 
    Document   : home
    Created on : Mar 14, 2018, 9:03:34 PM
    Author     : Minul Mindula
--%>


<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Construction</title>
	<link rel="stylesheet" type="text/css" href="home.css">
</head>
<body>

    <%
            String sql = "select * from newsfeed ORDER BY dateNtime DESC";
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/constructiondb","root","");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            
            int count = 0;
    %>            
            
                
   
                
      
    
<table border="0" width="100%" cellspacing="0" cellpadding="0">
    
    <!--title bar!!-->
    
    <tr style="height: auto;">
        <td style="background-color: grey; background: rgba(255, 255, 255, 0.5);">
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
    
    
	<tr>
            <!--profile box-->
            <td rowspan="2" width="25%" height="100px" valign="top">
			<div class="profiletile">
                                <p style="float: bottom; margin: 15px;"><b>Welcome</b> <%=session.getAttribute("fname")%> <%=session.getAttribute("lname")%></p>
                            
			</div>
		</td>
                
                <!--post bar-->
                <td valign="top" colspan="2">
			
			<div class="postbar">
				<table border="0">
					<tr>
						<td valign="top">
							<div id="small_pro_pic">
								<center><img src="images/pro.png" alt="pro" height="20" width="20" style="margin-top: 25%"></center>
							</div>
						</td>
						<td>
                                                    <form action="post_txt_servlet" method="post">
                                                        <textarea name="post_txt" class="txtarea"></textarea>
                                                        <input type="submit" id="postbar_send" value="Posts">
                                                    </form>
                                                </td>
					</tr>
					
				</table>
				
			</div>
                    
                    

		</td>
                
               
	</tr>
        
        <!-- posts -->
	<tr>
        
		<td height="95px" rowspan="2" colspan="2" valign="top">
                    
                    <%while(rs.next()){
                        count++;
                        %>
        
                    <div class="posts">
                            <table border="0" height="auto" width="100%">
                                <tbody>
                                    <tr>
                                        <td rowspan="3" width="12%" valign="top">
                                            <div id="small_pro_pic">
						<center><img src="images/pro.png" alt="pro" height="20" width="20" style="margin-top: 25%"></center>
                                            </div>
                                        </td>
                                        
                                        
                                
                                        
                                        <td height="20px" >
                                            <h4 style="margin:8px; display: inline;"><%=session.getAttribute("fname")%> <%=session.getAttribute("lname")%></h4><h6 style="display: inline;"> º &nbsp;</h6> <p style="display: inline; font-size: 11px;"><%=rs.getDate("dateNtime")%></p>
                                            
                                        </td>
                                        
                                    </tr>
                                   
                                     <tr>
                                         <td height="auto" valign="top" style="padding-left: 10px;">
                                             <!--posts-->
                                             
                                             <p><%=rs.getString("post_txt")%></p>
                                         </td>
                                    </tr>
                                    
                                    <tr>
                                        <td>
                                            <img src="images/like.png" width="20" height="20" alt="like"/>
                                            <img src="images/comment.png" width="20" height="20" alt="comment" style="margin: 0 0 0 20px;" />
                                            
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            
                            
			</div>
                         <% }%>
                        
		</td>
        
                
                
	</tr>
        
        <!--side bar-->
	<tr>
		<td valgin="top">
			<div class="leftsidebar">
	
			</div>
		</td>
		
	</tr>
</table>




</body>
</html>