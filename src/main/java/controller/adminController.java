/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import components.Site;
import dao.accountDAO;
import dao.customerDAO;
import dao.employeeDAO;
import dao.orderDetailDAO;
import dao.producerDAO;
import dao.productDAO;
import dao.productypeDAO;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.regex.Pattern;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import model.Account;
import model.Customer;
import model.Employee;
import model.OrderDetails;
import model.Orders;
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
    public String insertPT(Model model, @ModelAttribute("protype") ProductType producttype, BindingResult errors) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/producttype.jsp");
        model.addAttribute("indexAdmin", site);
        productypeDAO ptd = new productypeDAO();
        try {
            if (producttype.getTypeName().isEmpty()) {
                errors.rejectValue("typeName", "protype", "Name is null");
            } else {
                ptd.create(factory, producttype);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
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

    //Delete Product Type
    @RequestMapping("deletetype")
    public String deletetype(HttpServletRequest request, Model model, @ModelAttribute("protype") ProductType producttype) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/producttype.jsp");
        model.addAttribute("indexAdmin", site);
        int ma = Integer.parseInt(request.getParameter("ma"));
        producttype.setTypeId(ma);

        productypeDAO ptd = new productypeDAO();
        ptd.delete(factory, producttype);
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
            if (image.isEmpty()) {
                if (producer.getProducerName().isEmpty()) {
                    errors.rejectValue("producerName", "pro", "Name is null");
                } else {
                    pd.create(factory, producer);
                }
            } else {
                if (producer.getProducerName().isEmpty()) {
                    errors.rejectValue("producerName", "pro", "Name is null");
                } else {
                    String photoPath = context.getRealPath("/img/" + image.getOriginalFilename());
                    image.transferTo(new File(photoPath));

                    producer.setImage(image.getOriginalFilename());
                    pd.create(factory, producer);
                }
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
        String img = request.getParameter("img");
        Producer a = new Producer(id, name, img);
        model.addAttribute("pro", a);
        return "admin/index";
    }

    //Update Producer
    @RequestMapping(value = "producer", params = "update")
    public String update(HttpServletRequest request, @RequestParam("image") MultipartFile image, Model model, @ModelAttribute("pro") Producer producer,
            BindingResult errors) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/producer.jsp");
        model.addAttribute("indexAdmin", site);
        producerDAO pd = new producerDAO();
        try {
            if (image.isEmpty()) {
                String id = request.getParameter("image");
                producer.setImage(id);

                pd.edit(factory, producer);
            } else {
                String photoPath = context.getRealPath("/img/" + image.getOriginalFilename());
                image.transferTo(new File(photoPath));

                producer.setImage(image.getOriginalFilename());
                pd.edit(factory, producer);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        List<Producer> list = pd.findAll(factory);
        model.addAttribute("pd", list);
        return "admin/index";
    }

    //Delete Producer
    @RequestMapping(value = "delete")
    public String delete(HttpServletRequest request, Model model, @ModelAttribute("pro") Producer producer) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/producer.jsp");
        model.addAttribute("indexAdmin", site);

        int ma = Integer.parseInt(request.getParameter("ma"));
        producer.setProducerId(ma);
        producerDAO pd = new producerDAO();
        pd.delete(factory, producer);

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
    public String insertProduct(HttpServletRequest request, @RequestParam("image") MultipartFile image, Model model, @ModelAttribute("prod") Product product,
            BindingResult errors) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/product.jsp");
        model.addAttribute("indexAdmin", site);
        productDAO pro = new productDAO();
        try {
            if (image.isEmpty()) {
                if (product.getProductId().isEmpty()) {
                    errors.rejectValue("productId", "prod", "ID is null");
                }
                if (product.getProductName().isEmpty()) {
                    errors.rejectValue("productName", "prod", "Name is null");
                }
                if (product.getPrice() == null) {
                    errors.rejectValue("price", "prod", "Price is null");
                }
                if (product.getQuantity() == null) {
                    errors.rejectValue("quantity", "prod", "Quantity is null");
                }
                if (product.getProductDAY() == null) {
                    errors.rejectValue("productDAY", "prod", "Product Date is null");
                } else {
                    pro.create(factory, product);
                }
            } else {
                if (product.getProductId().isEmpty()) {
                    errors.rejectValue("productId", "prod", "ID is null");
                }
                if (product.getProductName().isEmpty()) {
                    errors.rejectValue("productName", "prod", "Name is null");
                }
                if (product.getPrice() == null) {
                    errors.rejectValue("price", "prod", "Price is null");
                }
                if (product.getQuantity() == null) {
                    errors.rejectValue("quantity", "prod", "Quantity is null");
                }
                if (product.getProductDAY() == null) {
                    errors.rejectValue("productDAY", "prod", "Product Date is null");
                } else {
                    String photoPath = context.getRealPath("/img/" + image.getOriginalFilename());
                    image.transferTo(new File(photoPath));

                    product.setImage(image.getOriginalFilename());
                    pro.create(factory, product);
                }
            }

        } catch (Exception ex) {
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
        try {
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

            Product pd = new Product(id, pro, pt, d, name, price, quantity, des, status, img);
            model.addAttribute("prod", pd);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return "admin/index";
    }

    //Update Product
    @RequestMapping(value = "product", params = "editPro")
    public String updateProduct(HttpServletRequest request, @RequestParam("image") MultipartFile image, Model model, @ModelAttribute("prod") Product product,
            BindingResult errors) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/product.jsp");
        model.addAttribute("indexAdmin", site);
        productDAO pro = new productDAO();
        try {
            if (image.isEmpty()) {
                String img = request.getParameter("image");
                product.setImage(img);
                pro.edit(factory, product);
            } else {
                String photoPath = context.getRealPath("/img/" + image.getOriginalFilename());
                image.transferTo(new File(photoPath));

                product.setImage(image.getOriginalFilename());
                pro.edit(factory, product);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        List<Product> listpro = pro.findAll(factory);
        model.addAttribute("pro", listpro);
        return "admin/index";
    }

    //Form Employee show table
    @RequestMapping("employee")
    public String getEmployee(Model model, @ModelAttribute("emp") Employee employee) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/employee.jsp");
        model.addAttribute("indexAdmin", site);

        employeeDAO ep = new employeeDAO();
        List<Employee> listep = ep.findAll(factory);
        model.addAttribute("ep", listep);
        return "admin/index";
    }

    //Add Employee
    @RequestMapping(value = "employee", params = "addEmp")
    public String insertEmployee(@RequestParam("image") MultipartFile image, Model model, @ModelAttribute("emp") Employee employee,
            BindingResult errors) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/employee.jsp");
        model.addAttribute("indexAdmin", site);

        employeeDAO ep = new employeeDAO();
        try {
            if (image.isEmpty()) {
                if (employee.getEmpId().isEmpty()) {
                    errors.rejectValue("empId", "emp", "ID is null");
                }
                if (employee.getName().isEmpty()) {
                    errors.rejectValue("name", "emp", "Name is null");
                }
                if (employee.getAddress().isEmpty()) {
                    errors.rejectValue("address", "emp", "Address is null");
                }
                if (employee.getBirthday() == null) {
                    errors.rejectValue("birthday", "emp", "Birthday is null");
                }
                if (employee.getBirthday() == null) {
                    errors.rejectValue("email", "emp", "Email is null");
                }
                if (employee.getPhone().isEmpty()) {
                    errors.rejectValue("email", "emp", "Phone is null");
                }
                if (employee.getSalary() == null) {
                    errors.rejectValue("salary", "emp", "Salary is null");
                }
                if (employee.getStartDay() == null) {
                    errors.rejectValue("startDay", "emp", "Start Day is null");
                } else {
                    ep.create(factory, employee);
                }
            } else {
                if (employee.getEmpId().isEmpty()) {
                    errors.rejectValue("empId", "emp", "ID is null");
                }
                if (employee.getName().isEmpty()) {
                    errors.rejectValue("name", "emp", "Name is null");
                }
                if (employee.getAddress().isEmpty()) {
                    errors.rejectValue("address", "emp", "Address is null");
                }
                if (employee.getBirthday() == null) {
                    errors.rejectValue("birthday", "emp", "Birthday is null");
                }
                if (employee.getBirthday() == null) {
                    errors.rejectValue("email", "emp", "Email is null");
                }
                if (employee.getPhone().isEmpty()) {
                    errors.rejectValue("email", "emp", "Phone is null");
                }
                if (employee.getSalary() == null) {
                    errors.rejectValue("salary", "emp", "Salary is null");
                }
                if (employee.getStartDay() == null) {
                    errors.rejectValue("startDay", "emp", "Start Day is null");
                } else {
                    String photoPath = context.getRealPath("/img/" + image.getOriginalFilename());
                    image.transferTo(new File(photoPath));

                    employee.setImage(image.getOriginalFilename());
                    ep.create(factory, employee);
                }
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        List<Employee> listep = ep.findAll(factory);
        model.addAttribute("ep", listep);
        return "admin/index";
    }

    //Form Edit Employee
    @RequestMapping("editemployee")
    public String getAccount(HttpServletRequest request, Model model, @ModelAttribute("emp") Employee employee) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/editemployee.jsp");
        model.addAttribute("indexAdmin", site);
        try {
            String id = request.getParameter("id");
            String name = request.getParameter("name");
            Boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
            SimpleDateFormat sfd = new SimpleDateFormat("yyyy-MM-dd");
            Date birthday = sfd.parse(request.getParameter("birth"));
            sfd.format(birthday);
            String add = request.getParameter("address");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            Double salary = Double.parseDouble(request.getParameter("salary"));
            Date startday = sfd.parse(request.getParameter("sday"));
            sfd.format(startday);
            Date endday = sfd.parse(request.getParameter("eday"));
            sfd.format(endday);
            String img = request.getParameter("img");
            Account acc = new Account();
            acc.setUsername(request.getParameter("username"));
            Employee listemp = new Employee(id, acc, name, gender, add, email, phone, birthday, salary, startday, endday, img);
            model.addAttribute("emp", listemp);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return "admin/index";
    }

    //Uodate Employee
    @RequestMapping(value = "employee", params = "editEmp")
    public String updateEmployee(HttpServletRequest request, @RequestParam("image") MultipartFile image, Model model, @ModelAttribute("emp") Employee employee,
            BindingResult errors) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/employee.jsp");
        model.addAttribute("indexAdmin", site);

        employeeDAO ep = new employeeDAO();
        try {
            if (image.isEmpty()) {
                String img = request.getParameter("image");
                employee.setImage(img);
                ep.edit(factory, employee);
            } else {
                String photoPath = context.getRealPath("/img/" + image.getOriginalFilename());
                image.transferTo(new File(photoPath));

                employee.setImage(image.getOriginalFilename());
                ep.edit(factory, employee);
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
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

        accountDAO ac = new accountDAO();
        List<Account> listac = ac.findAll(factory);
        model.addAttribute("ac", listac);
        return "admin/index";
    }

    //Add Account
    @RequestMapping(value = "account", params = "addAc")
    public String insertAccount(Model model, @ModelAttribute("acc") Account account, @ModelAttribute("emp") Employee employee,
            BindingResult errors) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/employee.jsp");
        model.addAttribute("indexAdmin", site);
        accountDAO ac = new accountDAO();
        try {
            
            account.getUsername();
            employee.setAccount(account);
            ac.create(factory, account);
            employeeDAO ep = new employeeDAO();
            List<Employee> listep = ep.findAll(factory);
            model.addAttribute("ep", listep);
        } catch (Exception ex) {
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

    @RequestMapping("order")
    public String getOrder(Model model) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/order.jsp");
        model.addAttribute("indexAdmin", site);

        orderDetailDAO od = new orderDetailDAO();
        List<OrderDetails> listod = od.findAll(factory);
        model.addAttribute("orderlist", listod);
        return "admin/index";
    }

    @RequestMapping("login")
    public String getLogin(Model model,  HttpSession httpSession, @ModelAttribute("acc") Account account) {
        httpSession.removeAttribute("user");
        httpSession.removeAttribute("role");
        return "login/index";
    }

    @RequestMapping(value = "login", params = "loginad")
    public String checkLogin(HttpServletRequest request, HttpSession httpSession, Model model, @ModelAttribute("acc") Account account) {
        String pass = request.getParameter("password");
        try {
            accountDAO ac = new accountDAO();
            Account acc = ac.findByID(factory, account.getUsername());
            
            if (!acc.getPassword().equals(pass)) {
                
            } else {
                httpSession.setAttribute("user", acc.getUsername());
                httpSession.setAttribute("role", acc.getRole());
                
                
                return "redirect:/admin/index.htm";
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return "login/index";
    }
    
    @RequestMapping("customer")
    public String getLogin(Model model) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/customer.jsp");
        model.addAttribute("indexAdmin", site);
        
        customerDAO cd = new customerDAO();
        List<Customer> listct = cd.findAll(factory);
        model.addAttribute("listcus", listct);
        return "admin/index";
    }
}
