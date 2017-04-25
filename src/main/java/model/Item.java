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

    @Column
    private String itemName;
    @Column
    private String description;

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
