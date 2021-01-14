package fullProject.sell.Entity;

import javax.persistence.*;

/**
 * Created by Nizis on 9/5/2020.
 */
@Entity
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private double price;
    private String image;
    private int categoryId;

    public Product(int id, String name, double price, String image, int categoryId) {
        this.id = id;
        this.name = name;
        this.price = price;

        this.image = image;
        this.categoryId = categoryId;
    }

    public Product() {
    }



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }
}
