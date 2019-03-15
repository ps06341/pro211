/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import components.Site;
import dao.producerDAO;
import dao.productDAO;
import model.Product;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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
//        set content a site
        site.setTitle(other.getTitleWeb("index"));
        site.setCarousel("home/slider.jsp");
        site.setContent("home/index.jsp");
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
        
        productDAO pd = new productDAO();
        model.addAttribute("products", pd.findAll(factory));

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
        site.setContent("home/404.jsp");
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

    @RequestMapping(value="/{row.productId}")
    public String getProductDetails(Model model,@PathVariable("row.productId") String id) {
        site.setTitle(other.getTitleWeb("productDetails"));
        site.setCarousel("home/blank.jsp");
        site.setContent("home/productDetails.jsp");
        site.setFeature("home/blank.jsp");
        model.addAttribute("index", site);
        
        productDAO pd = new productDAO();
        Product p = pd.find(factory, other.subString(id));
        model.addAttribute("productSingle", p);
        
        

        return "home/index";
    }

}
