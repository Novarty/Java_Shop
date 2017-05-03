package model;

import model.enums.ItemStatus;

import javax.persistence.*;

/**
 * Created by admin on 26.04.2017.
 */
@Entity
@Table(name = "orders") //"order" is a keyword of SQL
public class Order {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private int id;

//    @OneToOne(targetEntity = User.class)
//    private int user_id;

    @Enumerated(EnumType.STRING)
    private ItemStatus status;

    //Не доделано


    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public ItemStatus getStatus() {
        return status;
    }
    public void setStatus(ItemStatus status) {
        this.status = status;
    }
}
