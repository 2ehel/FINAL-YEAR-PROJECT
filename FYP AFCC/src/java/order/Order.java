/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package order;

import java.sql.Date;

/**
 *
 * @author ariff
 */
public class Order {
    
    private int orderID;
    private int userID;
    private String productID;
    private String firstName;
    private String lastName;
    private String orderPaymentMethod;
    private Date date;
    private String orderAddress;
    private String orderAddress2;
    private String orderState;
    private int orderZip;
    private String grandTotal;

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getOrderAddress2() {
        return orderAddress2;
    }

    public void setOrderAddress2(String orderAddress2) {
        this.orderAddress2 = orderAddress2;
    }

    public String getOrderState() {
        return orderState;
    }

    public void setOrderState(String orderState) {
        this.orderState = orderState;
    }

    public String getGrandTotal() {
        return grandTotal;
    }

    public void setGrandTotal(String grandTotal) {
        this.grandTotal = grandTotal;
    }

    
    public int getOrderZip() {
        return orderZip;
    }

    public void setOrderZip(int orderZip) {
        this.orderZip = orderZip;
    }
    private String orderShippingOption;
    private String orderStatus;

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

  

    public String getOrderPaymentMethod() {
        return orderPaymentMethod;
    }

    public void setOrderPaymentMethod(String orderPaymentMethod) {
        this.orderPaymentMethod = orderPaymentMethod;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getOrderAddress() {
        return orderAddress;
    }

    public void setOrderAddress(String orderAddress) {
        this.orderAddress = orderAddress;
    }

    public String getOrderShippingOption() {
        return orderShippingOption;
    }

    public void setOrderShippingOption(String orderShippingOption) {
        this.orderShippingOption = orderShippingOption;
    }
    
    
    
}
