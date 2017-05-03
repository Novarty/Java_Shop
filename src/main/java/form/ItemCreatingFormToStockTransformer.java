package form;

import model.Stock;

/**
 * Created by admin on 02.05.2017.
 */
public class ItemCreatingFormToStockTransformer {
    public static Stock transform(ItemCreatingForm form){
        if (form == null){
            return null;
        }
        Stock stock = new Stock();
        stock.setCity(form.getCity());
        stock.setAddress(form.getAddress());
        return stock;
    }
}
