package com.icia.shop.service;

import com.icia.shop.dto.MemberDTO;
import com.icia.shop.repository.ShopRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ShopService {
    @Autowired
    private ShopRepository shopRepository;

    public List<MemberDTO> findAll() {
        return shopRepository.findAll();
    }

    public int save(MemberDTO memberDTO) {
        return shopRepository.save(memberDTO);
    }

    public void update(MemberDTO memberDTO) {
        shopRepository.update(memberDTO);
    }
}
