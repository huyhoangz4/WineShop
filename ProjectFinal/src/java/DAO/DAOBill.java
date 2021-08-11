/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Bill;
import Entity.CartItem;
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
public class DAOBill {

    Connection connection;
    PreparedStatement pre;
    ResultSet rs;

    public int getBillID() {
        try {
            connection = new DBContext().getConnection();
            pre = connection.prepareStatement("select count(distinct BillID) from Bill");
            rs = pre.executeQuery();
            while (rs.next()) {
                return rs.getInt(1) + 1;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
    
    public List<Bill> getAllBills(){
        List<Bill> list = new ArrayList<>();
        DAOProduct dAOProduct = new DAOProduct();
        try {
            connection = new DBContext().getConnection();
            pre = connection.prepareStatement("select * from Bill");
            rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new Bill(rs.getInt(1),rs.getString(2),rs.getInt(3),dAOProduct.getProductByID(rs.getString(4))));
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    

    public void insert(int billID,int userid ,List<CartItem> list) {
        for (CartItem cartItem : list) {
            try {
                connection = new DBContext().getConnection();
                pre = connection.prepareStatement("insert into Bill values (?,GETDATE(),?,?)");
                pre.setInt(1, billID);
                pre.setInt(2, userid);
                pre.setInt(3,cartItem.getProduct().getPid());
                pre.executeUpdate();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

    }

    public static void main(String[] args) {
        DAOBill dao = new DAOBill();
    }
}
