package com.icia.shop.repository;

import com.icia.shop.dto.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ShopRepository {
    @Autowired
    private SqlSessionTemplate sql;

    public List<MemberDTO> findAll() {
        List<MemberDTO> mList = sql.selectList("Shop.findAll");
        return mList;
    }

    public int save(MemberDTO memberDTO) {
        return sql.insert("Shop.save",memberDTO);
    }

    public int update(MemberDTO memberDTO) {
        return sql.update("Shop.update",memberDTO);
    }
}
