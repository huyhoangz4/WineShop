/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Product;
import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author HOANGPC
 */
public class DAOProduct {

    Connection connection;
    PreparedStatement pre;
    ResultSet rs;

    public List<Product> getAllProducts() {
        List<Product> list = new ArrayList<>();
        try {
            connection = new DBContext().getConnection();
            pre = connection.prepareStatement("select * from Product");
            rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4), rs.getString(5)));
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public Product getProductByID(String pid) {
        try {
            connection = new DBContext().getConnection();
            pre = connection.prepareStatement("select * from Product where productID = ?");
            pre.setString(1, pid);
            rs = pre.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4), rs.getString(5));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void insert(String title, String price, String description, String image) {
        try {
            connection = new DBContext().getConnection();
            pre = connection.prepareStatement("insert into Product values (?,?,?,?)");
            pre.setString(1, title);
            pre.setString(2, price);
            pre.setString(3, description);
            pre.setString(4, image);
            pre.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        DAOProduct dao = new DAOProduct();
        System.out.println(dao.getProductByID("1"));
    }
}
