package service.impl;

import form.ItemCreatingForm;
import form.ItemCreatingFormToStockTransformer;
import model.Stock;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import repository.StockRepository;
import service.StockService;

import java.util.List;

/**
 * Created by admin on 03.05.2017.
 */
@Service("stockService")
public class StockServiceImpl implements StockService {
    @Autowired
    StockRepository stockRepository;

    @Override
    public void saveStock(ItemCreatingForm form) {
        Stock stock = ItemCreatingFormToStockTransformer.transform(form);
        stockRepository.save(stock);
    }

    @Override
    public List<Stock> getAllItems() {
        List<Stock> list = stockRepository.findAll();
        return list;
    }
}
