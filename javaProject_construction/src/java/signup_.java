

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Minul Mindula
 */
public class signup_ extends HttpServlet {

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
        processRequest(request, response);
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
            
            String user = request.getParameter("username");
            String pass = request.getParameter("password");
            String pass1 = request.getParameter("password1");
            String fname = request.getParameter("firstname");
            String lname = request.getParameter("lastname");
            String email = request.getParameter("email");
            String mobilenum = request.getParameter("mobile");
            String occ = request.getParameter("occupation");
            String company = request.getParameter("company");
            
            String mysql = ("INSERT INTO `user`(`firstName`, `lastName`, `email`, `mobile`, `username`, `password`, `occupation`, `company`) VALUES ('"+fname+"','"+lname+"','"+email+"','"+mobilenum+"','"+user+"','"+pass+"','"+occ+"','"+company+"')");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/constructiondb","root","");
            Statement stmt = conn.createStatement();
            int rowsEffected = stmt.executeUpdate(mysql);
            
            if(rowsEffected > 0){
                
                response.sendRedirect("login.jsp");
            }
            
           
            
            //processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(signup_.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(signup_.class.getName()).log(Level.SEVERE, null, ex);
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
