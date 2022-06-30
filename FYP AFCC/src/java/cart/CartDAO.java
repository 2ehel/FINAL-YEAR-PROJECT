/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cart;

import db.DBConn;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Acer
 */
public class CartDAO {
    
    private final Connection connection;
    private int result;
    
    public CartDAO(){
        connection = DBConn.getConnection();
    }
    
    public int deleteCart(int cartID) {
        try {
            String mySqlQuery = "delete from cart where cartID=?";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
            myPs.setInt(1, cartID);
            result = myPs.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is :" + e);
        }
        return result;
    }
    
    public Cart retrieveCartById(int cartID){
        Cart cart = new Cart();
        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select * from cart where cartID=" + cartID;
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                cart.setCartID(myRs.getInt(1)); 
                cart.setUserID(myRs.getInt(2));
                cart.setProductID(myRs.getString(3));
                cart.setQuantity(myRs.getInt(4));
                cart.setTotalPrice(myRs.getInt(5));
            }
        } catch (Exception e) {
            System.out.println("Exception is :" + e);
        }
        return cart;
    }
    
    public List<Cart> retrieveAllCart(){
        List<Cart> allCart = new ArrayList<Cart>();
        Cart All;
        
        try{
            Statement myStatement = connection.createStatement();
            String myQuery= "select * from cart";
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()){
                All = new Cart();
                All.setUserID(myRs.getInt(1));
                All.setProductID(myRs.getString(2));
                All.setQuantity(myRs.getInt(3));
                All.setTotalPrice(myRs.getInt(4));
            }
        }catch (Exception e){
            System.out.println("Exception is ;" + e);
        }
        return allCart;
    }
    
    public int addCart(Cart cart) {
        try {
            String mySqlQuery = "insert into cart(userID, productID, quantity, totalPrice)"
                    + " values(?,?,?,?)";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
            myPs.setInt(1, cart.getUserID());
            myPs.setString(2, cart.getProductID());
            myPs.setInt(3, cart.getQuantity());
            myPs.setDouble(4, cart.getTotalPrice());
            result = myPs.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is :" + e);
        }
        return result;
    }
    
    public List<Cart> retrieveAllCartByUserID(int userID) {
        List<Cart> allCart = new ArrayList<Cart>();
        Cart All;

        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select * from cart where userID=" + userID;
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                All = new Cart();
                All.setCartID(myRs.getInt(1));
                All.setUserID(myRs.getInt(2));
                All.setProductID(myRs.getString(3));
                All.setQuantity(myRs.getInt(4));
                All.setTotalPrice(myRs.getDouble(5));
                allCart.add(All);
            }
        } catch (Exception e) {
            System.out.println("Exception is ;" + e);
        }
        return allCart;
    }
}
