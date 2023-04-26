package com.icia.shop.dto;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class MemberDTO {
    Long custno;
    String custName;
    String phone;
    String address;
    String joinDate;
    String grade;
    String city;
}
