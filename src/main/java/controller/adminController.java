/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import components.Site;
import dao.accountDAO;
import dao.employeeDAO;
import dao.producerDAO;
import dao.productDAO;
import dao.productypeDAO;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import model.Account;
import model.Employee;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import other.Other;

/**
 *
 * @author Phu
 */
@Controller
@RequestMapping("/admin/")
@Transactional
public class adminController {

    @Autowired
    ServletContext context;

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
    //Form Product Type show table
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
    
    //Add Product Type
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
    
    //Form Edit Product Type
    @RequestMapping("editpt")
    public String getEditPT(HttpServletRequest request, Model model, @ModelAttribute("protype") ProductType producttype) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/editproducttype.jsp");
        model.addAttribute("indexAdmin", site);

        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String des = request.getParameter("des");
        ProductType a = new ProductType(id, name, des);
        model.addAttribute("protype", a);
        return "admin/index";
    }
    
    //Update Product Type
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

    //Form Producer show table
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

    //Add Producer
    @RequestMapping(value = "producer", params = "add")
    public String insert(@RequestParam("image") MultipartFile image, Model model, @ModelAttribute("pro") Producer producer,
            BindingResult errors) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/producer.jsp");
        model.addAttribute("indexAdmin", site);
        producerDAO pd = new producerDAO();
        try {
            if (producer.getProducerName().isEmpty()) {
                errors.rejectValue("producerName", "pro", "Name is null");
            } else {
                String photoPath = context.getRealPath("/img/" + image.getOriginalFilename());
                image.transferTo(new File(photoPath));

                producer.setImage(image.getOriginalFilename());
                pd.create(factory, producer);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        List<Producer> list = pd.findAll(factory);
        model.addAttribute("pd", list);
        return "admin/index";
    }
    
    //Form Edit Producer
    @RequestMapping("edit")
    public String getEdit(HttpServletRequest request, Model model, @ModelAttribute("pro") Producer producer) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/editproducer.jsp");
        model.addAttribute("indexAdmin", site);

        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        Producer a = new Producer(id, name);
        model.addAttribute("pro", a);
        return "admin/index";
    }
    
    //Update Producer
    @RequestMapping(value = "producer", params = "update")
    public String update(@RequestParam("image") MultipartFile image, Model model, @ModelAttribute("pro") Producer producer,
            BindingResult errors) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/producer.jsp");
        model.addAttribute("indexAdmin", site);
        producerDAO pd = new producerDAO();
        try {
            String photoPath = context.getRealPath("/img/" + image.getOriginalFilename());
            image.transferTo(new File(photoPath));

            producer.setImage(image.getOriginalFilename());
            pd.edit(factory, producer);
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        List<Producer> list = pd.findAll(factory);
        model.addAttribute("pd", list);
        return "admin/index";
    }
    
    //Form Product show table
    @RequestMapping("product")
    public String getProduct(Model model, @ModelAttribute("prod") Product product) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/product.jsp");
        model.addAttribute("indexAdmin", site);

        productDAO pro = new productDAO();
        List<Product> listpro = pro.findAll(factory);
        model.addAttribute("pro", listpro);

        return "admin/index";
    }
    
    //Get Producer
    @ModelAttribute("producers")
    public List<Product> getProducers() {
        producerDAO md = new producerDAO();
        List<Product> list = new ArrayList<>();
        list = md.findAll(factory);
        return list;
    }
    
    //Get Product Type
    @ModelAttribute("producttypes")
    public List<ProductType> getProducttypes() {
        productypeDAO md = new productypeDAO();
        List<ProductType> list = new ArrayList<>();
        list = md.findAll(factory);
        return list;
    }
    
    // Add Product
    @RequestMapping(value = "product", params = "addPro")
    public String insertProduct(@RequestParam("image") MultipartFile image, Model model, @ModelAttribute("prod") Product product,
            BindingResult errors) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/product.jsp");
        model.addAttribute("indexAdmin", site);
        productDAO pro = new productDAO();
        try{
            String photoPath = context.getRealPath("/img/" + image.getOriginalFilename());
            image.transferTo(new File(photoPath));
            
            product.setImage(image.getOriginalFilename());
            pro.create(factory, product);
        }catch(Exception ex){
            ex.printStackTrace();
        }

        List<Product> listpro = pro.findAll(factory);
        model.addAttribute("pro", listpro);
        return "admin/index";
    }
    
    // Form Edit Product
    @RequestMapping("editproduct")
    public String getEditProduct(HttpServletRequest request, Model model, @ModelAttribute("prod") Product product) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/editproduct.jsp");
        model.addAttribute("indexAdmin", site);
        try{
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        Producer pro = new Producer();
        int a = Integer.parseInt(request.getParameter("pro"));
        pro.setProducerId(a);
        Double price = Double.parseDouble(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        Boolean status = Boolean.parseBoolean(request.getParameter("status"));
        String des = request.getParameter("describe");
        String img = request.getParameter("img");
        ProductType pt = new ProductType();
        int b = Integer.parseInt(request.getParameter("type"));
        pt.setTypeId(b);
        
        SimpleDateFormat sfd = new SimpleDateFormat("yyyy-MM-dd");
        Date d = sfd.parse(request.getParameter("pday"));
        sfd.format(d);
        
        Product pd = new Product(id,pro,pt,d,name,price,quantity,des,status,img);
        model.addAttribute("prod",pd);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return "admin/index";
    }
    
    //Update Product
    @RequestMapping(value = "product", params = "editPro")
    public String updateProduct(@RequestParam("image") MultipartFile image, Model model, @ModelAttribute("prod") Product product,
            BindingResult errors) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/product.jsp");
        model.addAttribute("indexAdmin", site);
        productDAO pro = new productDAO();
        try{
            String photoPath = context.getRealPath("/img/" + image.getOriginalFilename());
            image.transferTo(new File(photoPath));
            
            product.setImage(image.getOriginalFilename());
            pro.edit(factory, product);
        }catch(Exception ex){
            ex.printStackTrace();
        }

        List<Product> listpro = pro.findAll(factory);
        model.addAttribute("pro", listpro);
        return "admin/index";
    }
    
    
    //Form Employee show table
    @RequestMapping("employee")
    public String getEmployee(Model model) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/employee.jsp");
        model.addAttribute("indexAdmin", site);

        employeeDAO ep = new employeeDAO();
        List<Employee> listep = ep.findAll(factory);
        model.addAttribute("ep", listep);
        return "admin/index";
    }
    
    //Form Account show table
    @RequestMapping("account")
    public String getAccount(Model model, @ModelAttribute("acc") Account account) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/account.jsp");
        model.addAttribute("indexAdmin", site);
        return "admin/index";
    }
    
    //Add Account
    @RequestMapping(value = "account", params = "addAc")
    public String insertAccount(Model model, @ModelAttribute("acc") Account account,
            BindingResult errors) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/account.jsp");
        model.addAttribute("indexAdmin", site);
        accountDAO ac = new accountDAO();
        try{
            ac.create(factory, account);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return "admin/index";
    }
    
    //Form About
    @RequestMapping("about")
    public String getAbout(Model model) {
        site.setTitle(other.getTitleAdmin("about"));
        site.setContent("admin/about.jsp");
        model.addAttribute("indexAdmin", site);
        return "admin/index";
    }
}
