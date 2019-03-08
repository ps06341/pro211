/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import components.Site;
import dao.producerDAO;
import dao.productDAO;
import dao.productypeDAO;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import model.Producer;
import model.Product;
import model.ProductType;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
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

    @Autowired
    SessionFactory factory;

    @RequestMapping("index")
    public String getIndexAdmin(Model model) {
        site.setTitle(other.getTitleAdmin("index"));
        site.setContent("admin/content.jsp");
        model.addAttribute("indexAdmin", site);
        return "admin/index";
    }

    @RequestMapping("producttype")
    public String getProductType(Model model, @ModelAttribute("protype") ProductType producttype) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/producttype.jsp");
        model.addAttribute("indexAdmin", site);
        
        productypeDAO ptd = new productypeDAO();
        List<ProductType> list = ptd.findAll(factory);
        model.addAttribute("ptd", list);
        return "admin/index";
    }
    
    @RequestMapping(value = "producttype", params = "addPT")
    public String insertPT(Model model, @ModelAttribute("protype") ProductType producttype) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/producttype.jsp");
        model.addAttribute("indexAdmin", site);
        
        productypeDAO ptd = new productypeDAO();
        ptd.create(factory, producttype);
        
        List<ProductType> list = ptd.findAll(factory);
        model.addAttribute("ptd", list);
        return "admin/index";
    }
    
    @RequestMapping("editpt")
    public String getEditPT(HttpServletRequest request,Model model, @ModelAttribute("protype") ProductType producttype) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/editproducttype.jsp");
        model.addAttribute("indexAdmin", site);

        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String des = request.getParameter("des");
        ProductType a = new ProductType(id,name,des);
        model.addAttribute("protype", a);
        return "admin/index";
    }
    
    @RequestMapping(value = "producttype", params = "updatePT")
    public String update(Model model, @ModelAttribute("protype") ProductType producttype, 
            BindingResult errors) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/producttype.jsp");
        model.addAttribute("indexAdmin", site);
        
        productypeDAO ptd = new productypeDAO();
        ptd.edit(factory, producttype);
        List<ProductType> list = ptd.findAll(factory);
        model.addAttribute("ptd", list);
        return "admin/index";
    }

    @RequestMapping("producer")
    public String getProducer(Model model, @ModelAttribute("pro") Producer producer) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/producer.jsp");
        model.addAttribute("indexAdmin", site);

        producerDAO pd = new producerDAO();      
        List<Producer> list = pd.findAll(factory);
        model.addAttribute("pd", list);
        return "admin/index";
    }
    
    @RequestMapping(value = "producer", params = "add")
    public String insert(Model model, @ModelAttribute("pro") Producer producer, 
            BindingResult errors) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/producer.jsp");
        model.addAttribute("indexAdmin", site);
        producerDAO pd = new producerDAO();
        if (producer.getProducerName().isEmpty()) {
            errors.rejectValue("producerName","pro","Name is null");
        }
        else {
            pd.create(factory, producer);
        }
        List<Producer> list = pd.findAll(factory);
        model.addAttribute("pd", list);
        return "admin/index";
    }
    
    @RequestMapping("edit")
    public String getEdit(HttpServletRequest request,Model model, @ModelAttribute("pro") Producer producer) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/editproducer.jsp");
        model.addAttribute("indexAdmin", site);

        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        Producer a = new Producer(id,name);
        model.addAttribute("pro", a);
        return "admin/index";
    }
    
    @RequestMapping(value = "producer", params = "update")
    public String update(Model model, @ModelAttribute("pro") Producer producer, 
            BindingResult errors) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/producer.jsp");
        model.addAttribute("indexAdmin", site);
        producerDAO pd = new producerDAO();
        pd.edit(factory, producer);
        List<Producer> list = pd.findAll(factory);
        model.addAttribute("pd", list);
        return "admin/index";
    }

    @RequestMapping("product")
    public String getProduct(Model model, @ModelAttribute("prod") Product product) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/product.jsp");
        model.addAttribute("indexAdmin", site);
        
        
        
        productDAO pro = new productDAO();
        List<Product> listpro = pro.findAll(factory);
        model.addAttribute("pro",listpro);
        
        return "admin/index";
    }
    
    @ModelAttribute("producers")
    public List<Product> getProducers() {
        producerDAO md = new producerDAO();
        List<Product> list = new ArrayList<>();
        list = md.findAll(factory);
        return list;
    }
    
    @ModelAttribute("producttypes")
    public List<ProductType> getProducttypes() {
        productypeDAO md = new productypeDAO();
        List<ProductType> list = new ArrayList<>();
        list = md.findAll(factory);
        return list;
    }
    
    @RequestMapping(value = "product", params = "addPro")
    public String insertProduct(Model model, @ModelAttribute("prod") Product product, 
            BindingResult errors) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/product.jsp");
        model.addAttribute("indexAdmin", site);
        
        productDAO pro = new productDAO();
        pro.create(factory, product);
        
        List<Product> listpro = pro.findAll(factory);
        model.addAttribute("pro",listpro);
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
