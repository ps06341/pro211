/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import components.Site;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import other.Other;

/**
 *
 * @author Admin
 */
@Controller
@RequestMapping("/admin/")
@Transactional
public class adminController {

    @Autowired
    Other other;

    @Autowired
    @Qualifier("indexAdmin")
    Site site;

    @RequestMapping("index")
    public String getIndexAdmin(Model model) {
        site.setTitle(other.getTitleAdmin("index"));
        site.setContent("admin/content.jsp");
        model.addAttribute("indexAdmin", site);
        return "admin/index";
    }
    
    @RequestMapping("producttype")
    public String getProductType(Model model) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/producttype.jsp");
        model.addAttribute("indexAdmin", site);
        return "admin/index";
    }
    
    @RequestMapping("producer")
    public String getProducer(Model model) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/producer.jsp");
        model.addAttribute("indexAdmin", site);
        return "admin/index";
    }
    
    @RequestMapping("product")
    public String getProduct(Model model) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/product.jsp");
        model.addAttribute("indexAdmin", site);
        return "admin/index";
    }
    
    @RequestMapping("about")
    public String getAbout(Model model) {
        site.setTitle(other.getTitleAdmin("about"));
        site.setContent("admin/about.jsp");
        model.addAttribute("indexAdmin", site);
        return "admin/index";
    }
    
    @RequestMapping("employee")
    public String getEmployee(Model model) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/employee.jsp");
        model.addAttribute("indexAdmin", site);
        return "admin/index";
    }
}
