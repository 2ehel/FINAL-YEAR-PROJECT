/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package photo;

import java.io.PrintWriter;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Khairi
 */

@MultipartConfig(maxFileSize = 16177215)
public class uploadPhoto extends HttpServlet {

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

            String dbURL = "jdbc:mysql://localhost:3306/fyp";
            String dbUser = "root";
            String dbPass = "";
            String name = request.getParameter("name");
            String Price = request.getParameter("price");
            String type= request.getParameter("type");
            String link="";
            String id =request.getParameter("hidid");
            

            InputStream inputStream = null; // input stream of the upload file

            // obtains the upload file part in this multipart request
            Part filePart = request.getPart("photo");
            if (filePart != null) {
                // prints out some information for debugging
                System.out.println(filePart.getName());
                System.out.println(filePart.getSize());
                System.out.println(filePart.getContentType());

                // obtains input stream of the upload file
                inputStream = filePart.getInputStream();
            }

            Connection conn = null; // connection to the database
            String message = null;  // message will be sent back to client

            try {
                // connects to the database
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
                if(type.equalsIgnoreCase("food")){
                // constructs SQL statement
                String sql = "insert into food (food_name, food_price, food_pic) values(?,?,?)";
                PreparedStatement statement = conn.prepareStatement(sql);
                statement.setString(1, name);
                statement.setString(2, Price);
                statement.setBlob(3, inputStream);
                int row = statement.executeUpdate();
                if (row > 0) {
                    message = "File uploaded and saved into database";
                    link="manageFood";
                }
                }
                else if(type.equalsIgnoreCase("drink")){
                     // constructs SQL statement
                String sql = "insert into drink (drink_name, drink_price, drink_pic) values(?,?,?)";
                PreparedStatement statement = conn.prepareStatement(sql);
                statement.setString(1, name);
                statement.setString(2, Price);
                statement.setBlob(3, inputStream);
                int row = statement.executeUpdate();
                if (row > 0) {
                    message = "File uploaded and saved into database";
                    link="manageDrink";
                }
                }
                else if(type.equalsIgnoreCase("updateDrink")){
                    
                             String sql = "update drink set drink_name=?, drink_price=?, drink_pic=? where drink_id=?";
                PreparedStatement statement = conn.prepareStatement(sql);
                statement.setString(1, name);
                statement.setString(2, Price);
                statement.setBlob(3, inputStream);
                statement.setString(4, id);
                int row = statement.executeUpdate();
                if (row > 0) {
                    message = "File uploaded and saved into database";
                    link="manageDrink";
                }
                }
                else if(type.equalsIgnoreCase("updateFood")){
                    
                             String sql = "update food set food_name=?, food_price=?, food_pic=? where food_id=?";
                PreparedStatement statement = conn.prepareStatement(sql);
                statement.setString(1, name);
                statement.setString(2, Price);
                statement.setBlob(3, inputStream);
                statement.setString(4, id);
                int row = statement.executeUpdate();
                if (row > 0) {
                    message = "File uploaded and saved into database";
                    link="manageFood";
                }
                }
                

                // sends the statement to the database server
                
            } catch (SQLException ex) {
                message = "ERROR: " + ex.getMessage();
                ex.printStackTrace();
            } finally {
                if (conn != null) {
                    // closes the database connection
                    try {
                        conn.close();
                    } catch (SQLException ex) {
                        ex.printStackTrace();
                    }
                }
                // sets the message in request scope
               

                // forwards to the message page
                
               response.sendRedirect("/placeOrder/Place_Order/"+link+".jsp?message="+message+"");
                
                
            }
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
        processRequest(request, response);
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
