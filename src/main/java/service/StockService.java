package service;

import form.ItemCreatingForm;
import model.Stock;

import java.util.List;

/**
 * Created by admin on 03.05.2017.
 */
public interface StockService {
    void saveStock(ItemCreatingForm form);
    List<Stock> getAllItems();
//    Stock editStock(Stock stock);
}
