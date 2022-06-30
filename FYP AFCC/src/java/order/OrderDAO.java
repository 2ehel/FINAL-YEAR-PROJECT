/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package order;

import db.DBConn;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import product.Product;
import order.Order;

/**
 *
 * @author ariff
 */
public class OrderDAO {

    private final Connection connection;
    private int result;

    public OrderDAO() {
        connection = DBConn.getConnection();
    }

    public List<Order> retrieveAllOrder() {
        List<Order> allOrder = new ArrayList<Order>();
        Order All;

        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select order.*, product.productName, account.user_name from order inner "
                    + "join product on product.productID = order.productID "
                    + "inner join account on account.userID = order.userID";
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                All = new Order();
                All.setOrderID(myRs.getInt(1));
                All.setUserID(myRs.getInt(2));
                All.setProductID(myRs.getString(3));
                All.setOrderPaymentMethod(myRs.getString(4));
                All.setDate(myRs.getDate(5));
                All.setOrderAddress(myRs.getString(6));
                All.setOrderShippingOption(myRs.getString(7));
                All.setGrandTotal(myRs.getString(8));
                All.setOrderStatus(myRs.getString(9));
                allOrder.add(All);
            }
        } catch (Exception e) {
            System.out.println("Exception is ;" + e);
        }
        return allOrder;
    }
    
    public List<Order> retrieveAllOrderByUserID(int userID) {
        List<Order> allOrder = new ArrayList<Order>();
        Order All;

        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select * from order where userID=" + userID;
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                All = new Order();
                All.setOrderID(myRs.getInt(1));
                All.setUserID(myRs.getInt(2));
                All.setProductID(myRs.getString(3));
                All.setFirstName(myRs.getString(4));
                All.setLastName(myRs.getString(5));
                All.setOrderPaymentMethod(myRs.getString(6));
                All.setDate(myRs.getDate(7));
                All.setOrderAddress(myRs.getString(8));
                All.setOrderAddress2(myRs.getString(9));
                All.setOrderAddress2(myRs.getString(10));
                All.setOrderAddress2(myRs.getString(11));
                All.setOrderShippingOption(myRs.getString(12));
                All.setGrandTotal(myRs.getString(13));
                All.setOrderStatus(myRs.getString(14));
                allOrder.add(All);
            }
        } catch (Exception e) {
            System.out.println("Exception is ;" + e);
        }
        return allOrder;
    }

    public Order retrieveById(int orderID) {
        Order order = new Order();
        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select * from order where orderID=" + orderID;
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                order.setOrderID(myRs.getInt(1));
                order.setUserID(myRs.getInt(2));
                order.setProductID(myRs.getString(3));
                order.setOrderPaymentMethod(myRs.getString(4));
                order.setDate(myRs.getDate(5));
                order.setOrderAddress(myRs.getString(6));
                order.setOrderShippingOption(myRs.getString(7));
                order.setGrandTotal(myRs.getString(8));
                order.setOrderStatus(myRs.getString(9));
            }
        } catch (Exception e) {
            System.out.println("Exception is :" + e);
        }
        return order;
    }

    public Order retrieveByUser(int userID) {
        Order order = new Order();
        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select * from order where userID=" + userID;
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                order.setOrderID(myRs.getInt(1));
                order.setOrderPaymentMethod(myRs.getString(2));
                order.setDate(myRs.getDate(3));
                order.setOrderAddress(myRs.getString(4));
                order.setOrderShippingOption(myRs.getString(5));
                order.setOrderStatus(myRs.getString(6));
            }
        } catch (Exception e) {
            System.out.println("Exception is :" + e);
        }
        return order;
    }

    public Product retrieveByCategory(String productCategory) {
        Product product = new Product();
        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select * from product where productCategory=" + productCategory;
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                product.setProductID(myRs.getString(1));
                product.setProductName(myRs.getString(2));
                product.setProductCategory(myRs.getString(3));
                product.setProductPrice(myRs.getInt(4));
                product.setProductCondition(myRs.getString(5));
                product.setTotalStock(myRs.getString(6));
                product.setProductDesc(myRs.getString(7));
            }
        } catch (Exception e) {
            System.out.println("Exception is :" + e);
        }
        return product;
    }

    public int updateOrder(Order order) {
        try {
            String mySqlQuery = "update order set orderStatus=? where orderID=?";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
            myPs.setString(1, order.getOrderStatus());
            myPs.setInt(2, order.getOrderID());
            result = myPs.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is :" + e);
        }
        return result;
    }

    public int addOrder(Order order) {
        try {
            String mySqlQuery = "insert into order(orderID, userID, productID, firstName, lastName, orderPaymentMethod, date, orderAddress, orderAddress2, orderState, orderZip, orderShippingOption, grandTotal, orderStatus)"
                    + " values(?,?,?,?,?,?,?.?,?,?,?,?,?,?)";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
            myPs.setString(1, order.getProductID());
            myPs.setInt(2, order.getUserID());
            myPs.setString(3, order.getProductID());
            myPs.setString(4, order.getFirstName());
            myPs.setString(5, order.getLastName());
            myPs.setString(6, order.getOrderPaymentMethod());
            myPs.setDate(7, order.getDate());
            myPs.setString(8, order.getOrderAddress());
            myPs.setString(9, order.getOrderAddress2());
            myPs.setString(10, order.getOrderState());
            myPs.setInt(11, order.getOrderZip());
            myPs.setString(12, order.getOrderShippingOption());
            myPs.setString(13, order.getGrandTotal());
            myPs.setString(14, order.getOrderStatus());
            result = myPs.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is :" + e);
        }
        return result;
    }
}
