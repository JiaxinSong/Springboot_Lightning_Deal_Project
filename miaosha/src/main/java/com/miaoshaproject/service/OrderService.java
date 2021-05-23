package com.miaoshaproject.service;

import com.miaoshaproject.error.BusinessException;
import com.miaoshaproject.service.model.OrderModel;

/**
 * Created by Jiaxin on 5/21/21
 */
public interface OrderService {

    //1.通过前端url上传过来秒杀活动id，然后下单接口内判断对应id是否属于对应商品且活动已开始
    //2.直接在下单接口内判断对应商品是否在秒杀

    OrderModel createOrder(Integer userId,Integer itemId,Integer promoId,Integer amount) throws BusinessException;
}
