/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import components.Site;
import dao.customerDAO;
import dao.producerDAO;
import dao.productDAO;
import javax.servlet.http.HttpSession;
import model.Customer;
import model.Product;
import org.hibernate.Session;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
    public String getLogin(Model model, @ModelAttribute("customer") Customer customer) {
        site.setTitle(other.getTitleWeb("login"));
        site.setCarousel("home/blank.jsp");
        site.setContent("home/login.jsp");
        site.setFeature("home/blank.jsp");
        model.addAttribute("index", site);
        return "home/login";
    }

    @RequestMapping(value = "login", params = "showLog")
    public String login(ModelMap model,
            @RequestParam("username") String username,
            @RequestParam("password") String password,
            HttpSession httpSession, Customer customer) {
        site.setTitle(other.getTitleWeb("login"));
        site.setContent("home/login.jsp");
        model.addAttribute("index", site);
        Session session = factory.getCurrentSession();
        try {
            customerDAO ptd = new customerDAO();
            Customer existing = ptd.findByUsername(factory, customer.getUsername());
            if (!existing.getPassword().equals(password)) {
                model.addAttribute("message", "sai mat khau !");
            } else {
                httpSession.setAttribute("username", existing.getUsername());
                return "redirect:/home/index.htm";
            }
        } catch (Exception e) {
            model.addAttribute("message", "Sai ten dang nhap !");
        }

        return "home/login";
    }

    @RequestMapping("logout")
    public String logout(HttpSession session) {
        session.removeAttribute("username");
        return "redirect:/home/index.htm";
    }
    @RequestMapping("register")
    public String getRegister(Model model, @ModelAttribute("abc") Customer customer) {
        site.setTitle(other.getTitleWeb("register"));
        site.setCarousel("home/blank.jsp");
        site.setContent("home/register.jsp");
        site.setFeature("home/blank.jsp");
        model.addAttribute("index", site);
        return "home/register";
    }

    @RequestMapping(value = "register", method = RequestMethod.POST)
    public String insertCus(ModelMap model, @ModelAttribute("abc") Customer customer) {
        site.setTitle(other.getTitleWeb("register"));
        site.setContent("home/register.jsp");
        model.addAttribute("index", site);
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
        try {

            session.save(customer);
            t.commit();
            model.addAttribute("message", "dang ky thanh cong !");
            return "redirect:/home/login.htm";
        } catch (Exception e) {
            t.rollback();
            model.addAttribute("message", "dang ky that bai !");
        } finally {
            session.close();
        }
        return "home/register";

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
