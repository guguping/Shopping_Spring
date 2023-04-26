package com.icia.shop.dto;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ShoppingDTO {
    Long custno;
    Long salenol;
    int pcost;
    int amount;
    int price;
    String pcode;
    int date;
}
