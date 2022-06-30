/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin;

import db.DBConn;
import java.sql.*;
import admin.Admin;

/**
 *
 * @author ariff
 */
public class AdminDAO {
    private final Connection connection;
    private int result;
    
    public AdminDAO(){
        connection = DBConn.getConnection();
    }
    
        public int addUser(Admin admin) {
        try {
            String mySqlQuery = "insert into admin(adminName, adminEmail, adminPassword)"
                    + " values(?,?,?)";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
            myPs.setString(1, admin.getAdminName());
            myPs.setString(2, admin.getAdminEmail());
            myPs.setString(3, admin.getAdminPassword());


            result = myPs.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is :" + e);
        }
        return result;
    }
    
    public Admin login(String Email, String Password){
        Admin admin = new Admin();
        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select * from admin where adminEmail='"
                    + Email + "' AND adminPassword='" + Password + "'";
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                admin.setAdminID(myRs.getInt(1));
                admin.setAdminName(myRs.getString(4));
            }
        } catch (Exception e) {
            System.out.println("Exception is :" + e);
        }
        return admin;
    }
    
    public Admin retrieveById(int adminID) {
        Admin admin = new Admin();
        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select * from admin where adminID="+adminID;
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                admin.setAdminID(myRs.getInt(1));
                admin.setAdminName(myRs.getString(2));
                admin.setAdminEmail(myRs.getString(3));
                admin.setAdminPassword(myRs.getString(4));
            }
        } catch (Exception e) {
            System.out.println("Exception is :" + e);
        }
        return admin;
    }
    
    public int updateAdmin(Admin admin) {
        try {
            String mySqlQuery = "update admin set adminName=?, adminEmail=?, adminPassword=? where adminID=?";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
             myPs.setString(1, admin.getAdminName());
            myPs.setString(2, admin.getAdminEmail());
            myPs.setString(3, admin.getAdminPassword());
            myPs.setInt(4, admin.getAdminID());
            result = myPs.executeUpdate();
        
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return result;
        
    }
}
