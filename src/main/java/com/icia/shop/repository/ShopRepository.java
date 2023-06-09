package com.icia.shop.repository;

import com.icia.shop.dto.MemberDTO;
import com.icia.shop.dto.MoneyDTO;
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

    public boolean save(MemberDTO memberDTO) {
        try {
            sql.insert("Shop.save", memberDTO);
            return true;
        } catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    public int update(MemberDTO memberDTO) {
        return sql.update("Shop.update",memberDTO);
    }

    public MemberDTO findByid(Long custno) {
        MemberDTO memberDTO = sql.selectOne("Shop.findByid",custno);
        return memberDTO;
    }

    public List<MoneyDTO> membersales() {
        List<MoneyDTO>mList = sql.selectList("Shop.membersales");
        return mList;
    }
}
