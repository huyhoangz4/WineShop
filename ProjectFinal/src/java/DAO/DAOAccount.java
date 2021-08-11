/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Account;
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
public class DAOAccount {

    Connection conn = null;
    PreparedStatement pre = null;
    ResultSet rs = null;

    public boolean isExist(String email) {
        String query = "select * from Account\n"
                + "where [email] = ? ";
        try {
            conn = new DBContext().getConnection();
            pre = conn.prepareStatement(query);
            pre.setString(1, email);
            rs = pre.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
        }
        return false;
    }

    public Account getAccounts(String email, String password) {
        String query = "select * from Account\n"
                + "where [email] = ? and [password] = ?";
        try {
            conn = new DBContext().getConnection();
            pre = conn.prepareStatement(query);
            pre.setString(1, email);
            pre.setString(2, password);
            rs = pre.executeQuery();
            while (rs.next()) {
               
                return new Account(rs.getInt(1),rs.getString(2),rs.getString(3),
                        rs.getString(4),rs.getString(5),rs.getInt(6),rs.getString(7));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void insert(String email, String password, String username, String address, String phoneNumber) {
        try {
            conn = new DBContext().getConnection();
            pre = conn.prepareStatement("insert into Account values (?,?,?,?,0,?)");
            pre.setString(1, email);
            pre.setString(2, password);
            pre.setString(3, username);
            pre.setString(4, address);
            pre.setString(5, phoneNumber);
            pre.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

      public List<Account> acceptAccounts(String query) {
        List<Account> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            pre = conn.prepareStatement(query);
            rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1),rs.getString(2),rs.getString(3),
                        rs.getString(4), rs.getString(5),rs.getInt(6),rs.getString(7)));
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;

    }
      
         public void setPermission(String id, int role) {
        try {
            conn = new DBContext().getConnection();
            pre = conn.prepareStatement("update Account set role = ? where userID = ?");
            pre.setInt(1, role);
            pre.setString(2, id);
            pre.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static void main(String[] args) {
        DAOAccount dao = new DAOAccount();
        System.out.println(dao.isExist("abc@gmail.com"));
//        dao.insert("abc@gmai.com", "bca", "123", "098", "PT");
    }
}
