/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.CartItem;
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
public class DAOCart {

    Connection connection;
    PreparedStatement pre;
    ResultSet rs;

    public List<CartItem> getCartItemsByID(int userid) {
        DAOProduct dao = new DAOProduct();
        List<CartItem> list = new ArrayList<>();
        try {
            connection = new DBContext().getConnection();
            pre = connection.prepareStatement("select * from Cart where userid = ?");
            pre.setInt(1, userid);
            rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new CartItem(dao.getProductByID(rs.getString(2)), rs.getString(3)));
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void insert(int userid, String pid, String quantity) {
        String query = "insert into Cart values (?,?,?)";
        try {
            connection = new DBContext().getConnection();
            pre = connection.prepareStatement(query);
            pre.setInt(1, userid);
            pre.setString(2, pid);
            pre.setString(3, quantity);
            pre.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void delete(int userid) {
        String query = "delete from Cart\n" + "where userid = ?";
        try {
            connection = new DBContext().getConnection();
            pre = connection.prepareStatement(query);
            pre.setInt(1, userid);
            pre.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        DAOCart dao = new DAOCart();
        List<CartItem> list = dao.getCartItemsByID(13);
        for (CartItem cartItem : list) {
            System.out.println(cartItem);
        }
    }

}
