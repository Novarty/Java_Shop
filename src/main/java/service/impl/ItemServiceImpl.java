package service.impl;

import form.ItemCreatingForm;
import form.ItemCreatingFormToItemTransformer;
import model.Item;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import repository.ItemRepository;
import service.ItemService;

import java.util.List;

/**
 * Created by admin on 02.05.2017.
 */
@Service(value = "itemService")
public class ItemServiceImpl implements ItemService {

    @Autowired
    ItemRepository itemRepository;

    @Override
    public void saveNewItem(ItemCreatingForm form) {
        Item item = ItemCreatingFormToItemTransformer.transform(form);
        itemRepository.save(item);
    }

    @Override
    public List<Item> getAllItems() {
        List<Item> list = itemRepository.findAll();
        return list;
    }

    @Override
    public void editItem(ItemCreatingForm form) {
        Item item = ItemCreatingFormToItemTransformer.transform(form);
        itemRepository.saveAndFlush(item);
    }
}
