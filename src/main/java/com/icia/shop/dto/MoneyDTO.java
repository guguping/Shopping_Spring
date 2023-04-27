package com.icia.shop.dto;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class MoneyDTO {
    Long custno;
    String custName;
    String grade;
    int price;
}
