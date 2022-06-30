/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

import db.DBConn;
import java.sql.*;

/**
 *
 * @author ariff
 */
public class UserDAO {

    private final Connection connection;
    private int result;

    public UserDAO() {
        connection = DBConn.getConnection();
    }

    public User login(String Email, String Password) {
        User user = new User();
        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select * from account where user_email='"
                    + Email + "' AND user_password='" + Password + "'";
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                user.setUserID(myRs.getInt(1));
                user.setUser_name(myRs.getString(4));
            }
        } catch (Exception e) {
            System.out.println("Exception is :" + e);
        }
        return user;
    }

    public int addUser(User user) { 
        try {
            String mySqlQuery = "insert into account(firstname, lastname, user_name, user_password, user_email, user_phone)"
                    + " values(?,?,?,?,?,?)";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
            myPs.setString(1, user.getFname());
            myPs.setString(2, user.getLname());
            myPs.setString(3, user.getUser_name());
            myPs.setString(4, user.getUser_password());
            myPs.setString(5, user.getUser_email());
            myPs.setString(6, user.getUser_phone());
            result = myPs.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is :" + e);
        }
        return result;
    }

    public User retrieveById(int userID) {
        User user = new User();
        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select * from account where userID=" + userID;
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                user.setUserID(myRs.getInt(1));
                user.setFname(myRs.getString(2));
                user.setLname(myRs.getString(3));
                user.setUser_name(myRs.getString(4));
                user.setUser_password(myRs.getString(5));
                user.setUser_email(myRs.getString(6));
                user.setUser_phone(myRs.getString(7));
            }
        } catch (Exception e) {
            System.out.println("Exception is :" + e);
        }
        return user;
    }

    public int updateUser(User user) {
        try {
            String mySqlQuery = "update account set firstname=?, lastname=?, user_name=?, user_password=?, user_email=?, user_phone=? where userID=?";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
            myPs.setString(1, user.getFname());
            myPs.setString(2, user.getLname());
            myPs.setString(3, user.getUser_name());
            myPs.setString(4, user.getUser_password());
            myPs.setString(5, user.getUser_email());
            myPs.setString(6, user.getUser_phone());
            myPs.setInt(7, user.getUserID());
            result = myPs.executeUpdate();
        
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return result;
        
    }
}
