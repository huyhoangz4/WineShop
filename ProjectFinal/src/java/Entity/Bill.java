/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

/**
 *
 * @author HOANGPC
 */
public class Bill {
    private int billID;
    private String date;
    private int userid;
    private Product productid;

    public Bill() {
    }

    public Bill(int billID, String date, int userid, Product productid) {
        this.billID = billID;
        this.date = date;
        this.userid = userid;
        this.productid = productid;
    }

    public int getBillID() {
        return billID;
    }

    public void setBillID(int billID) {
        this.billID = billID;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public Product getProductid() {
        return productid;
    }

    public void setProductid(Product productid) {
        this.productid = productid;
    }

    
    
   
    
}
