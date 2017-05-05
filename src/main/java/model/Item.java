package model;


import javax.persistence.*;

/**
 * Created by admin on 24.04.2017.
 */
@Entity
@Table(name = "items")
public class Item {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private int id;

    @Column(unique = true)
    private String itemName;
    @Column(columnDefinition = "TEXT")
    private String description;
    @Column
    private Integer amount;

    public Item() {
    }

    public Item(String itemName, String description, Integer amount) {
        this.itemName = itemName;
        this.description = description;
        this.amount = amount;
    }

    public Integer getAmount() {
        return amount;
    }
    public void setAmount(Integer amount) {
        this.amount = amount;
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getItemName() {
        return itemName;
    }
    public void setItemName(String itemName) {
        this.itemName = itemName;
    }
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
}
