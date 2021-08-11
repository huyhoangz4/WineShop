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
public class Product {
        private int pid;
        private String title;
        private double price;
        private String description;
        private String image;

    public Product() {
    }

    public Product(int pid, String title, double price, String description, String image) {
        this.pid = pid;
        this.title = title;
        this.price = price;
        this.description = description;
        this.image = image;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Product{" + "pid=" + pid + ", title=" + title + ", price=" + price + ", description=" + description + ", image=" + image + '}';
    }
        
}
