package form;

import model.Item;

/**
 * Created by admin on 02.05.2017.
 */
public class ItemCreatingFormToItemTransformer {
    public static Item transform(ItemCreatingForm form){
        if (form == null){
            return null;
        }
        Item item = new Item();
        item.setItemName(form.getItemName());
        item.setDescription(form.getDescription());
        item.setAmount(form.getAmount());
        return item;
    }
}
