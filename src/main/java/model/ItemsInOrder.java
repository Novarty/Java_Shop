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
    @JoinColumn(name = "item_id", nullable = false)
    private Item item;

    @OneToOne(optional = false)
    @JoinColumn(name = "stock_id", nullable = false)
    private Stock stock;

    public ItemsInOrder() {
    }

    public ItemsInOrder(Item item, Stock stock) {
        this.item = item;
        this.stock = stock;
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public Item getItem() {
        return item;
    }

    public void setItem(Item item) {
        this.item = item;
    }

    public Stock getStock() {
        return stock;
    }

    public void setStock(Stock stock) {
        this.stock = stock;
    }
}
