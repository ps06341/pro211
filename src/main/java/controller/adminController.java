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
import dao.orderDAO;
import dao.orderDetailDAO;
import dao.producerDAO;
import dao.productDAO;
import dao.productypeDAO;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
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
            }
            if (errors.hasErrors()) {
                model.addAttribute("message", "Có lỗi xảy ra khi thêm Product Type");
            } else {
                ptd.create(factory, producttype);
                model.addAttribute("message", "Thêm Product Type thành công");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        List<ProductType> list = ptd.findAll(factory);
        model.addAttribute("ptd", list);
        return "admin/index";
    }
    
    //Reset Product Type
    @RequestMapping(value = "producttype", params = "rsPT")
    public String rsPT(Model model, @ModelAttribute("protype") ProductType producttype, BindingResult errors) {
        
        return "redirect:/admin/producttype.htm";
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
        model.addAttribute("message", "Edit Product Type thành công");
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
        model.addAttribute("message", "Delete Product Type thành công");
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
                }
                else {
                    pd.create(factory, producer);
                    model.addAttribute("message", "Thêm Producer thành công");
                }
            } else {
                if (producer.getProducerName().isEmpty()) {
                    errors.rejectValue("producerName", "pro", "Name is null");
                }
                else {
                    String photoPath = context.getRealPath("/images/producer/" + image.getOriginalFilename());
                    image.transferTo(new File(photoPath));

                    producer.setImage(image.getOriginalFilename());
                    pd.create(factory, producer);
                    model.addAttribute("message", "Thêm Producer thành công");
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
                model.addAttribute("message", "Edit Producer thành công");
            } else {
                String photoPath = context.getRealPath("/images/producer/" + image.getOriginalFilename());
                image.transferTo(new File(photoPath));

                producer.setImage(image.getOriginalFilename());
                pd.edit(factory, producer);
                model.addAttribute("message", "Edit Producer thành công");
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
        model.addAttribute("message", "Xóa Producer thành công");
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
                } else if (pro.checkUser(factory, product.getProductId()) == true) {
                    errors.rejectValue("productId", "prod", "ID already exist");
                } else if (pro.checkDau(product.getProductId()) == true) {
                    errors.rejectValue("productId", "prod", "ID invaild");
                }
                if (product.getProductName().isEmpty()) {
                    errors.rejectValue("productName", "prod", "Name is null");
                }
                if (product.getPrice() == null) {
                    errors.rejectValue("price", "prod", "Price is null");
                }
                else if (product.getPrice() < 0) {
                    errors.rejectValue("price", "prod", "Price must not be less than 0");
                }
                if (product.getQuantity() == null) {
                    errors.rejectValue("quantity", "prod", "Quantity is null");
                }
                else if (product.getQuantity() < 0) {
                    errors.rejectValue("quantity", "prod", "Quantity must not be less than 0");
                }
                if (product.getProductDAY() == null) {
                    errors.rejectValue("productDAY", "prod", "Product Date is null");
                } else {
                    pro.create(factory, product);
                    model.addAttribute("message", "Thêm Product thành công");
                }
            } else {
                if (product.getProductId().isEmpty()) {
                    errors.rejectValue("productId", "prod", "ID is null");
                } else if (pro.checkUser(factory, product.getProductId()) == true) {
                    errors.rejectValue("productId", "prod", "ID already exist");
                } else if (pro.checkDau(product.getProductId()) == true) {
                    errors.rejectValue("productId", "prod", "ID invaild");
                }
                if (product.getProductName().isEmpty()) {
                    errors.rejectValue("productName", "prod", "Name is null");
                }
                if (product.getPrice() == null) {
                    errors.rejectValue("price", "prod", "Price is null");
                }
                if (product.getPrice() < 0) {
                    errors.rejectValue("price", "prod", "Price must not be less than 0");
                }
                if (product.getQuantity() == null) {
                    errors.rejectValue("quantity", "prod", "Quantity is null");
                }
                if (product.getQuantity() < 0) {
                    errors.rejectValue("quantity", "prod", "Quantity must not be less than 0");
                }
                if (product.getProductDAY() == null) {
                    errors.rejectValue("productDAY", "prod", "Product Date is null");
                } else {
                    String photoPath = context.getRealPath("/images/dodien/" + image.getOriginalFilename());
                    image.transferTo(new File(photoPath));

                    product.setImage(image.getOriginalFilename());
                    pro.create(factory, product);
                    model.addAttribute("message", "Thêm Product thành công");
                }
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }

        List<Product> listpro = pro.findAll(factory);
        model.addAttribute("pro", listpro);
        return "admin/index";
    }
    
    //Reset Product
    @RequestMapping(value = "product", params = "rsPro")
    public String rsProduct(HttpServletRequest request, @RequestParam("image") MultipartFile image, Model model, @ModelAttribute("prod") Product product,
            BindingResult errors) {
        return "redirect:/admin/product.htm";
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
                model.addAttribute("message", "Edit Product thành công");
            } else {
                String photoPath = context.getRealPath("/images/dodien/" + image.getOriginalFilename());
                image.transferTo(new File(photoPath));

                product.setImage(image.getOriginalFilename());
                pro.edit(factory, product);
                model.addAttribute("message", "Edit Product thành công");
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
        accountDAO ac = new accountDAO();
        employeeDAO ep = new employeeDAO();
        try {
            if (image.isEmpty()) {
                if (employee.getEmpId().isEmpty()) {
                    errors.rejectValue("empId", "emp", "ID is null");
                } else if (ep.checkDau(employee.getEmpId()) == true) {
                    errors.rejectValue("empId", "emp", "ID invaild");
                } else if (ep.checkUser(factory, employee.getEmpId()) == true) {
                    errors.rejectValue("empId", "emp", "ID alredy exits");
                } else if (employee.getEmpId().length() > 4) {
                    errors.rejectValue("empId", "emp", "ID maximun 4");
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
                if (employee.getEmail() == null) {
                    errors.rejectValue("email", "emp", "Email is null");
                } else if (ep.checkEmail(employee.getEmail()) == false) {
                    errors.rejectValue("email", "emp", "Email invaild");
                }
                if (employee.getPhone().isEmpty()) {
                    errors.rejectValue("phone", "emp", "Phone is null");
                }
                if (employee.getSalary() == null) {
                    errors.rejectValue("salary", "emp", "Salary is null");
                }
                if (employee.getStartDay() == null) {
                    errors.rejectValue("startDay", "emp", "Start Day is null");
                }
                if (employee.getAccount().getUsername().isEmpty()) {
                    errors.rejectValue("account.username", "emp", "Account is null");
                } else if (ac.checkUser(factory, employee.getAccount().getUsername()) == false) {
                    errors.rejectValue("account.username", "emp", "Account no alredy exits");
                } else {
                    ep.create(factory, employee);
                    model.addAttribute("message", "Thêm Employee thành công");
                }
            } else {
                if (employee.getEmpId().isEmpty()) {
                    errors.rejectValue("empId", "emp", "ID is null");
                } else if (ep.checkDau(employee.getEmpId()) == true) {
                    errors.rejectValue("empId", "emp", "ID invaild");
                } else if (ep.checkUser(factory, employee.getEmpId()) == true) {
                    errors.rejectValue("empId", "emp", "ID alredy exits");
                } else if (employee.getEmpId().length() > 4) {
                    errors.rejectValue("empId", "emp", "ID maximun 4");
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
                if (employee.getEmail() == null) {
                    errors.rejectValue("email", "emp", "Email is null");
                } else if (ep.checkEmail(employee.getEmail()) == false) {
                    errors.rejectValue("email", "emp", "Email invaild");
                }
                if (employee.getPhone().isEmpty()) {
                    errors.rejectValue("phone", "emp", "Phone is null");
                }
                if (employee.getSalary() == null) {
                    errors.rejectValue("salary", "emp", "Salary is null");
                }
                if (employee.getStartDay() == null) {
                    errors.rejectValue("startDay", "emp", "Start Day is null");
                }
                if (employee.getAccount().getUsername().isEmpty()) {
                    errors.rejectValue("account.username", "emp", "Account is null");
                } else if (ac.checkUser(factory, employee.getAccount().getUsername()) == false) {
                    errors.rejectValue("account.username", "emp", "Account no alredy exits");
                } else {
                    String photoPath = context.getRealPath("/images/nhanvien/" + image.getOriginalFilename());
                    image.transferTo(new File(photoPath));

                    employee.setImage(image.getOriginalFilename());
                    ep.create(factory, employee);
                    model.addAttribute("message", "Thêm Employee thành công");
                }
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        List<Employee> listep = ep.findAll(factory);
        model.addAttribute("ep", listep);
        return "admin/index";
    }
    
    @RequestMapping(value = "employee", params = "rsEmp")
    public String rsEmployee(@RequestParam("image") MultipartFile image, Model model, @ModelAttribute("emp") Employee employee,
            BindingResult errors) {
        return "redirect:/admin/employee.htm";
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
                model.addAttribute("message", "Edit Employee thành công");
            } else {
                String photoPath = context.getRealPath("/images/nhanvien/" + image.getOriginalFilename());
                image.transferTo(new File(photoPath));

                employee.setImage(image.getOriginalFilename());
                ep.edit(factory, employee);
                model.addAttribute("message", "Edit Employee thành công");
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
    public String insertAccount(HttpServletRequest request, HttpSession httpSession, Model model, @ModelAttribute("acc") Account account,
            BindingResult errors) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/account.jsp");
        model.addAttribute("indexAdmin", site);
        accountDAO ac = new accountDAO();
        try {

            if (account.getUsername().isEmpty()) {
                errors.rejectValue("username", "acc", "Username is null");
            } else if (ac.checkUser(factory, account.getUsername()) == true) {
                errors.rejectValue("username", "acc", "Username already exist");
            } else if (ac.checkDau(account.getUsername()) == true) {
                errors.rejectValue("username", "acc", "Username invaild");
            }
            if (account.getPassword().isEmpty()) {
                errors.rejectValue("password", "acc", "Password is null");
            } else {
                ac.create(factory, account);
                employeeDAO ep = new employeeDAO();
                List<Employee> listep = ep.findAll(factory);
                model.addAttribute("ep", listep);
                httpSession.setAttribute("us", account.getUsername());
                return "redirect:/admin/employee.htm";
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        List<Account> listac = ac.findAll(factory);
        model.addAttribute("ac", listac);
        return "admin/index";
    }
    
    //Reset Account
    @RequestMapping(value = "account", params = "rsAc")
    public String rsAccount(HttpServletRequest request, Model model, @ModelAttribute("acc") Account account,
            BindingResult errors) {
        
        return "redirect:/admin/account.htm";
    }

    //Form About
    @RequestMapping("about")
    public String getAbout(Model model) {
        site.setTitle(other.getTitleAdmin("about"));
        site.setContent("admin/about.jsp");
        model.addAttribute("indexAdmin", site);
        return "admin/index";
    }

    //Form Order
    @RequestMapping("order")
    public String getOrder(Model model, @ModelAttribute("order") Orders orders) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/order.jsp");
        model.addAttribute("indexAdmin", site);

        orderDetailDAO od = new orderDetailDAO();
        List<OrderDetails> listod = od.findAll(factory);
        model.addAttribute("orderlist", listod);
        return "admin/index";
    }

    //Form Edit Order
    @RequestMapping("editorder")
    public String getOrderEdit(HttpServletRequest request, Model model, @ModelAttribute("order") Orders orders) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/editorder.jsp");
        model.addAttribute("indexAdmin", site);
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            Customer cs = new Customer();
            cs.setUsername(request.getParameter("cus"));
            SimpleDateFormat sfd = new SimpleDateFormat("yyyy-MM-dd");
            Date orderday = sfd.parse(request.getParameter("od"));
            sfd.format(orderday);
            String des = request.getParameter("des");
            Boolean status = Boolean.parseBoolean(request.getParameter("sta"));
            Orders listo = new Orders(id, cs, orderday, des, status);
            model.addAttribute("order", listo);

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return "admin/index";
    }

    //Edit Order
    @RequestMapping(value = "order", params = "editOrder")
    public String editOrder(HttpServletRequest request, HttpSession httpSession, Model model, @ModelAttribute("order") Orders orders,
            BindingResult errors) {
        site.setTitle(other.getTitleAdmin("management"));
        site.setContent("admin/order.jsp");
        model.addAttribute("indexAdmin", site);
        orderDAO orderdao = new orderDAO();
        try {
            orderdao.edit(factory, orders);
            model.addAttribute("message", "Edit thành công Order");
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        orderDetailDAO od = new orderDetailDAO();
        List<OrderDetails> listod = od.findAll(factory);
        model.addAttribute("orderlist", listod);
        return "admin/index";
    }

    //Form Login
    @RequestMapping("login")
    public String getLogin(Model model, HttpSession httpSession, @ModelAttribute("acc") Account account) {
        httpSession.removeAttribute("user");
        httpSession.removeAttribute("role");
        httpSession.removeAttribute("ava");
        return "login/index";
    }

    //Login
    @RequestMapping(value = "login", params = "loginad")
    public String checkLogin(HttpServletRequest request, HttpSession httpSession, Model model, @ModelAttribute("acc") Account account,
            BindingResult errors) {
        String pass = request.getParameter("password");
        try {
            accountDAO ac = new accountDAO();
            Account acc = ac.findByID(factory, account.getUsername());

            if (!acc.getPassword().equals(pass)) {

            }
            else {
                httpSession.setAttribute("user", acc.getUsername());
                httpSession.setAttribute("role", acc.getRole());
                List<Employee> list = ac.getTaiKhoan(factory, account.getUsername());
                httpSession.setAttribute("ava", list.get(0));
                return "redirect:/admin/index.htm";
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return "login/index";
    }

    //Show Customer
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
