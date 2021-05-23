package com.miaoshaproject.service.model;

import java.math.BigDecimal;

/**
 * Created by Jiaxin on 5/21/21
 */
//用户下单交易模型
public class OrderModel {
    private String id;
    private Integer userId;
    private Integer itemId;

    //购买商品的单价 若非空，表示以秒杀价格
    private BigDecimal itemPrice;

    //若非空，表示以秒杀方式下单
    private Integer promoId;

    //购买数量
    private Integer amount;

    //购买金额  若非空，表示以秒杀价格
    private BigDecimal orderPrice;

    public Integer getPromoId() {
        return promoId;
    }

    public void setPromoId(Integer promoId) {
        this.promoId = promoId;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public BigDecimal getOrderPrice() {
        return orderPrice;
    }

    public void setOrderPrice(BigDecimal orderPrice) {
        this.orderPrice = orderPrice;
    }

    public Integer getItemId() {
        return itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public BigDecimal getItemPrice() {
        return itemPrice;
    }

    public void setItemPrice(BigDecimal itemPrice) {
        this.itemPrice = itemPrice;
    }
}
