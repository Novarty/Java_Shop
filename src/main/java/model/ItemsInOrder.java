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

    @OneToOne(optional = false)
    @JoinColumn(name = "item_id", unique = true, nullable = false)
    private Item item;

    @OneToOne(optional = false)
    @JoinColumn(name = "stock_id", unique = true, nullable = false)
    private Stock stock;

//    private int amount;

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
//    public int getAmount() {
//        return amount;
//    }
//    public void setAmount(int amount) {
//        this.amount = amount;
//    }
}
