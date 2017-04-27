package model;

import javax.persistence.*;

/**
 * Created by admin on 26.04.2017.
 */
@Entity
@Table(name = "itemsInOrder")
public class ItemsInOrder {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private int id;

//    @OneToOne(targetEntity = Item.class, mappedBy = "item_id")
//    private int item_id;

//    @OneToOne(targetEntity = Stock.class, mappedBy = "stock_id")
//    private int stock_id;

    private int amount;

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public int getAmount() {
        return amount;
    }
    public void setAmount(int amount) {
        this.amount = amount;
    }
}
