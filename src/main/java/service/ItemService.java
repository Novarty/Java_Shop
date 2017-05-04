package service;

import form.ItemCreatingForm;
import model.Item;

import java.util.List;

/**
 * Created by admin on 02.05.2017.
 */
public interface ItemService {
    void saveNewItem(ItemCreatingForm form);
    List<Item> getAllItems();
    void editItem(ItemCreatingForm form);
    Item findOneById(Integer id);
}
