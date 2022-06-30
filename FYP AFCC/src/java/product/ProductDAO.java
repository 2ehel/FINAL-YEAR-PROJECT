/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package product;

import db.DBConn;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import product.Product;

/**
 *
 * @author ariff
 */
public class ProductDAO {

    private final Connection connection;
    private int result;

    public ProductDAO() {
        connection = DBConn.getConnection();
    }

    public List<Product> retrieveAllProduct() {
        List<Product> allProduct = new ArrayList<Product>();
        Product All;

        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select * from product";
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                All = new Product();
                All.setProductID(myRs.getString(1));
                All.setProductName(myRs.getString(2));
                All.setProductCategory(myRs.getString(3));
                All.setProductPrice(myRs.getInt(4));
                All.setProductCondition(myRs.getString(5));
                All.setTotalStock(myRs.getString(6));
                All.setProductDesc(myRs.getString(7));
                All.setFilename(myRs.getString(8));
                allProduct.add(All);
            }
        } catch (Exception e) {
            System.out.println("Exception is ;" + e);
        }
        return allProduct;
    }

    public List<Product> retrieveProductBasedOnCart() {
        List<Product> allProduct = new ArrayList<Product>();
        Product All;

        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select product.* from product join cart on product.productID = cart.productID";
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                All = new Product();
                All.setProductID(myRs.getString(1));
                All.setProductName(myRs.getString(2));
                All.setProductCategory(myRs.getString(3));
                All.setProductPrice(myRs.getInt(4));
                All.setProductCondition(myRs.getString(5));
                All.setTotalStock(myRs.getString(6));
                All.setProductDesc(myRs.getString(7));
                All.setFilename(myRs.getString(8));
                allProduct.add(All);
            }
        } catch (Exception e) {
            System.out.println("Exception is ;" + e);
        }
        return allProduct;
    }

    public List<Product> retrieveProductBasedOnCheckout() {
        List<Product> allProduct = new ArrayList<Product>();
        Product All;

        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select product.* from product join checkout on product.productID = checkout.productID";
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                All = new Product();
                All.setProductID(myRs.getString(1));
                All.setProductName(myRs.getString(2));
                All.setProductCategory(myRs.getString(3));
                All.setProductPrice(myRs.getInt(4));
                All.setProductCondition(myRs.getString(5));
                All.setTotalStock(myRs.getString(6));
                All.setProductDesc(myRs.getString(7));
                All.setFilename(myRs.getString(8));
                allProduct.add(All);
            }
        } catch (Exception e) {
            System.out.println("Exception is ;" + e);
        }
        return allProduct;
    }

    public int addProduct(Product product) {
        try {
            String mySqlQuery = "insert into product(productID, productName, productCategory, productPrice, productCondition, totalStock, productDesc)"
                    + " values(?,?,?,?,?,?,?)";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
            myPs.setString(1, product.getProductID());
            myPs.setString(2, product.getProductName());
            myPs.setString(3, product.getProductCategory());
            myPs.setInt(4, product.getProductPrice());
            myPs.setString(5, product.getProductCondition());
            myPs.setString(6, product.getTotalStock());
            myPs.setString(7, product.getProductDesc());
            myPs.setString(8, product.getFilename());
            result = myPs.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is :" + e);
        }
        return result;
    }

    public int deleteProduct(String productID) {
        try {
            String mySqlQuery = "delete from product where productID=?";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
            myPs.setString(1, productID);
            result = myPs.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is :" + e);
        }
        return result;
    }

    public Product retrieveById(String productID) {
        Product product = new Product();
        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select * from product where productID=" + productID;
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                product.setProductID(myRs.getString(1));
                product.setProductName(myRs.getString(2));
                product.setProductCategory(myRs.getString(3));
                product.setProductPrice(myRs.getInt(4));
                product.setProductCondition(myRs.getString(5));
                product.setTotalStock(myRs.getString(6));
                product.setProductDesc(myRs.getString(7));
                product.setFilename(myRs.getString(8));
            }
        } catch (Exception e) {
            System.out.println("Exception is :" + e);
        }
        return product;
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
                product.setFilename(myRs.getString(8));
            }
        } catch (Exception e) {
            System.out.println("Exception is :" + e);
        }
        return product;
    }

    public int updateProduct(Product product) { 
        try {
            String mySqlQuery = "update product set productName=?, productCategory=?,"
                    + " productPrice=?, productCondition=?, totalStock=?, productDesc=? where productID=?";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
            
            myPs.setString(1, product.getProductName());
            myPs.setString(2, product.getProductCategory());
            myPs.setInt(3, product.getProductPrice());
            myPs.setString(4, product.getProductCondition());
            myPs.setString(5, product.getTotalStock());
            myPs.setString(6, product.getProductDesc());
            myPs.setString(7, product.getProductID());
            result = myPs.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is :" + e);
        }
        return result;
    }
}
