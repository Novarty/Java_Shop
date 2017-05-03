package repository;

import model.Item;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * Created by admin on 02.05.2017.
 */

public interface ItemRepository extends JpaRepository<Item, Long> {
    Item findOneByItemName(String itemName);
    List<Item> findAll();
}
