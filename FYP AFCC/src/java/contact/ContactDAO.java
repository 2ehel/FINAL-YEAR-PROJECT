/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package contact;

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
 * @author Acer
 */
public class ContactDAO {
    
    private final Connection connection;
    private int result;
    
    public ContactDAO() {
        connection = DBConn.getConnection();
    }
    
    public List<Contact> retrieveAllContact() {
        List<Contact> allContact = new ArrayList<Contact>();
        Contact All;

        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select * from contact ";
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                All = new Contact();
                All.setContactID(myRs.getInt(1));
                All.setUserID(myRs.getInt(2));
                All.setSubject(myRs.getInt(3));
                All.setMessage(myRs.getString(4));
                allContact.add(All);
            }
        } catch (Exception e) {
            System.out.println("Exception is ;" + e);
        }
        return allContact;
    }
}
