/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Minul Mindula
 */
public class post_txt_servlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
          
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        try {
            String sql = "select * from newsfeed";
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/constructiondb","root","");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            
            if(rs.next()){
                String posts = rs.getString("post_txt");
                String dateandtime = rs.getString("dateNtime"); 
                HttpSession lol = request.getSession(true);
                lol.setAttribute("poststxt", posts);
                lol.setAttribute("dNt", dateandtime);
                
            }
            
            
            
            //processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(post_txt_servlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(post_txt_servlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            
            
            String post_txt = request.getParameter("post_txt");
            Timestamp date = new Timestamp(System.currentTimeMillis());
            String mysql = "INSERT INTO newsfeed(post_txt,dateNtime) VALUES ('"+post_txt+"','"+date+"')";
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/constructiondb","root","");
            Statement stmt = conn.createStatement();
            int rowsEffected = stmt.executeUpdate(mysql);
            
            if(rowsEffected > 0){
                System.out.println("post updated successfully");
                response.sendRedirect("home.jsp");
            }
            else{
                System.out.println("post not updated successfully");
            }
            
            //processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(post_txt_servlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(post_txt_servlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
