package form;

import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.NotNull;

/**
 * Created by admin on 02.05.2017.
 */
public class ItemCreatingForm {
    @NotEmpty(message = "Укажите название товара")
    private String itemName;
    @NotEmpty(message = "Дайте небольшое описание для товара")
    private String description;
    @NotEmpty(message = "Укажите с какого города склад")
    private String city;
    @NotEmpty(message = "Укажите адрес склада")
    private String address;
    @NotNull(message = "Укажите количество товара на складе")
    private Integer amount;

    public String getItemName() {
        return itemName;
    }
    public void setItemName(String itemName) {
        this.itemName = itemName;
    }
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    public String getCity() {
        return city;
    }
    public void setCity(String city) {
        this.city = city;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public Integer getAmount() {
        return amount;
    }
    public void setAmount(Integer amount) {
        this.amount = amount;
    }
}
