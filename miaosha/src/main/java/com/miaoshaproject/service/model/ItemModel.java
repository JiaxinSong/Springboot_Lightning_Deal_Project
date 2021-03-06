package com.miaoshaproject.service.model;

import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;

/**
 * Created by Jiaxin on 5/20/21
 */
public class ItemModel {

    private Integer id;

    @NotBlank(message = "Item name should not be empty")
    private String title;

    @NotNull(message="Item price should not be empty")
    @Min(value = 0, message = "Item price should be more than 0")
    private BigDecimal price;

    @NotNull(message="Stock should not be empty")
    private Integer stock;

    @NotBlank(message = "Item description should not be empty")
    private String description;

    private Integer sales;

    @NotBlank(message = "Item img should not be empty")
    private  String imgUrl;


    private PromoModel promoModel;

    public PromoModel getPromoModel() {
        return promoModel;
    }

    public void setPromoModel(PromoModel promoModel) {
        this.promoModel = promoModel;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getSales() {
        return sales;
    }

    public void setSales(Integer sales) {
        this.sales = sales;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }


}
