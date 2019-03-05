/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import components.Site;

import org.hibernate.SessionFactory;
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
@RequestMapping("/home/")
@Transactional
public class homeController {
    @Autowired
    SessionFactory factory;
    
    @Autowired
    Other other;

    @Autowired
    @Qualifier("index")
    Site site;

    @RequestMapping("index")
    public String getIndex(Model model) {
//        site.setTitle(other.getTitleWeb("index"));
        site.setTitle(other.getTitleWeb("index"));
        site.setCarousel("home/slider.jsp");
        site.setContent("home/content.jsp");
        site.setFeature("home/feature.jsp");
        model.addAttribute("index", site);
       
        return "home/index";
    }

    @RequestMapping("contact-us")
    public String getContactUs(Model model) {
        site.setTitle(other.getTitleWeb("contact"));
        site.setCarousel("home/slider.jsp");
        site.setContent("home/contact.jsp");
        site.setFeature("home/feature.jsp");

        model.addAttribute("index", site);

        return "home/index";
    }

    @RequestMapping("about")
    public String getAbout(Model model) {
        site.setTitle(other.getTitleWeb("about"));
        site.setCarousel("home/blank.jsp");
        site.setContent("home/about.jsp");
        site.setFeature("home/about2.jsp");
        model.addAttribute("index", site);

        return "home/index";
    }

    @RequestMapping("product")
    public String getProduct(Model model) {
        site.setTitle(other.getTitleWeb("product"));
        site.setCarousel("home/blank.jsp");
        site.setContent("home/product.jsp");
        site.setFeature("home/blank.jsp");
        model.addAttribute("index", site);

        return "home/index";
    }

    @RequestMapping("help")
    public String getHelp(Model model) {
        site.setTitle(other.getTitleWeb("help"));
        site.setCarousel("home/blank.jsp");
        site.setContent("home/help.jsp");
        site.setFeature("home/feature.jsp");
        model.addAttribute("index", site);

        return "home/index";
    }

    @RequestMapping("search")
    public String getSearch(Model model) {
        site.setTitle(other.getTitleWeb("search"));
        site.setCarousel("home/blank.jsp");
        site.setContent("home/blank.jsp");
        site.setFeature("home/blank.jsp");
        model.addAttribute("index", site);

        return "home/index";
    }

    @RequestMapping("login")
    public String getLogin(Model model) {
        site.setTitle(other.getTitleWeb("login"));
        site.setCarousel("home/blank.jsp");
        site.setContent("home/login.jsp");
        site.setFeature("home/blank.jsp");
        model.addAttribute("index", site);

        return "home/index";
    }

    @RequestMapping("register")
    public String getRegister(Model model) {
        site.setTitle(other.getTitleWeb("register"));
        site.setCarousel("home/blank.jsp");
        site.setContent("home/register.jsp");
        site.setFeature("home/blank.jsp");
        model.addAttribute("index", site);

        return "home/index";
    }

    @RequestMapping("cart")
    public String getCart(Model model) {
        site.setTitle(other.getTitleWeb("cart"));
        site.setCarousel("home/blank.jsp");
        site.setContent("home/cart.jsp");
        site.setFeature("home/blank.jsp");
        model.addAttribute("index", site);

        return "home/index";
    }


    


}
