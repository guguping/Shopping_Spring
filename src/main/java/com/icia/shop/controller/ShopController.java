package com.icia.shop.controller;

import com.icia.shop.dto.MemberDTO;
import com.icia.shop.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class ShopController {
    @Autowired
    private ShopService service;

    @GetMapping("/save")
    public String save(){
        return "save";
    }
    @PostMapping("/saveParam")
    public String saveParam(@ModelAttribute MemberDTO memberDTO){
        System.out.println("memberDTO = " + memberDTO);
        int saveResult = service.save(memberDTO);
        return "redirect:/list";
    }
    @GetMapping("/list")
    public String findAll(Model model){
        List<MemberDTO> mList = service.findAll();
        model.addAttribute("mList",mList);
        return "list";
    }

    @GetMapping("/update")
    public String update(@RequestParam("custno") String custno,Model model){
        model.addAttribute("custno",custno);
        return "update";
    }
    @PostMapping("/update")
    public String updateFaram(@ModelAttribute MemberDTO memberDTO , Model model){
        model.addAttribute("updateResult",service.update(memberDTO));
        return "updateResult";
    }
}
