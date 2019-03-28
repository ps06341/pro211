/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import components.CartBean;
import components.MailService;
//import components.MailService;
import components.ProductDTO;
import components.Site;
import dao.customerDAO;
import dao.orderDAO;
import dao.orderDetailDAO;
import dao.producerDAO;
import dao.productDAO;
import java.util.Iterator;
import java.util.Map;
import javax.servlet.http.HttpSession;
import model.Customer;
import model.OrderDetails;
import model.OrderDetailsId;
import model.Orders;
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
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
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
    MailService mailService;

    @Autowired
    SessionFactory factory;

    @Autowired
    Other other;

    @Autowired
    CartBean cartbean;

    @Autowired
    ProductDTO productdto;

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

    @RequestMapping("contact")
    public String getContactUs(Model model) {
        site.setTitle(other.getTitleWeb("contact"));
        site.setCarousel("home/slider.jsp");
        site.setContent("home/contact.jsp");
        site.setFeature("home/feature.jsp");

        model.addAttribute("index", site);

        return "home/index";
    }

    @RequestMapping(value = "contact", params = "send", method = RequestMethod.POST)
    public String send(ModelMap model,
            @RequestParam("from") String from,
            @RequestParam("name") String name,
            @RequestParam("phone") String phone,
            @RequestParam("subject") String subject,
            @RequestParam("body") String body) {
        mailService.send(from, subject, "Name:" + name + "<br/>" + "Phone:" + phone + "<br/>" + body);
        model.addAttribute("message", "Gui email thanh cong !");
        return "redirect:/home/contact.htm";
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
        try {
            customerDAO ptd = new customerDAO();
            Customer existing = ptd.findByUsername(factory, customer.getUsername());
            if (!existing.getPassword().equals(password)) {
                model.addAttribute("message", "Sai  mat khau !");
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

    @RequestMapping(value = "register", params = "addCus", method = RequestMethod.POST)
    public String insertCus(Model model, @ModelAttribute("abc") Customer customer, BindingResult errors) {
        site.setTitle(other.getTitleWeb("register"));
        site.setContent("home/register.jsp");
        model.addAttribute("index", site);

        try {
            customerDAO cus = new customerDAO();
            cus.create(factory, customer);
            model.addAttribute("message", "dang ky thanh cong !");
            return "redirect:/home/login.htm";
        } catch (Exception e) {

            model.addAttribute("message", "dang ky that bai !");
        }
        return "home/register";

    }

    @RequestMapping("forgotPassword")
    public String getForgotPassword(Model model) {
        site.setTitle(other.getTitleWeb("forgotPassword"));
        site.setCarousel("home/blank.jsp");
        site.setContent("home/forgotPassword.jsp");
        site.setFeature("home/blank.jsp");
        model.addAttribute("index", site);
        return "home/forgotPassword";

    }

    @RequestMapping("checkEmail")
    public String getCheckEmail(Model model) {
        site.setTitle(other.getTitleWeb("checkEmail"));
        site.setCarousel("home/blank.jsp");
        site.setContent("home/checkEmail.jsp");
        site.setFeature("home/blank.jsp");
        model.addAttribute("index", site);
        return "home/checkEmail";

    }

    @RequestMapping(value = "checkEmail", params = "mail", method = RequestMethod.POST)
    public String checkEmail(@RequestParam("email") String email) {
        mailService.sendMail(email);
        return "redirect:/home/checkEmail.htm";
    }

    @RequestMapping(value = {"newPassword"}, method = RequestMethod.GET)
    public String getNewPassword(ModelMap model, @RequestParam(required = true) String email) {
        site.setTitle(other.getTitleWeb("newPassword"));
        site.setCarousel("home/blank.jsp");
        site.setContent("home/newPassword.jsp");
        site.setFeature("home/blank.jsp");
        model.addAttribute("index", site);
        model.addAttribute("email", email);
        return "home/newPassword.htm";

    }

    @RequestMapping(value = {"newPassword"}, params = "reset", method = RequestMethod.POST)
    public String resetPassword(ModelMap model, Customer customer) {
        customerDAO ptd = new customerDAO();
        Customer existingCustomer = ptd.findByEmail(factory, customer.getEmail());
        if (existingCustomer != null) {
            existingCustomer.setPassword(customer.getPassword());
            model.addAttribute("message", "Thay doi password thanh cong");
            return "redirect:/home/login.htm";
        }
        return "home/newPassword.htm";

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
    public String getCart(Model model, HttpSession httpsession) {
        site.setTitle(other.getTitleWeb("cart"));
        site.setCarousel("home/blank.jsp");
        site.setContent("home/cart.jsp");
        site.setFeature("home/blank.jsp");
        model.addAttribute("index", site);

        cartbean = (CartBean) httpsession.getAttribute("shoppingcart");
        if (cartbean == null) {
            cartbean = new CartBean();
        } else {
            httpsession.setAttribute("shoppingcart", cartbean);
        }

        return "home/index";
    }

    @RequestMapping(value = "producer")
    public String getProductbyProducer(Model model, @RequestParam("producerid") Integer id) {
        site.setTitle(other.getTitleWeb("product"));
        site.setCarousel("home/blank.jsp");
        site.setContent("home/product.jsp");
        site.setFeature("home/blank.jsp");
        model.addAttribute("index", site);

        productDAO pd = new productDAO();
        model.addAttribute("products", pd.findbyProducer(factory, id));

        return "home/index";
    }

    @RequestMapping(value = "/{row.productId}")
    public String getProductDetails(Model model, @PathVariable("row.productId") String id) {
//        System.out.println(id);
        site.setTitle(other.getTitleWeb("productDetails"));
        site.setCarousel("home/blank.jsp");
        site.setContent("home/productDetails.jsp");
        site.setFeature("home/blank.jsp");
        model.addAttribute("index", site);

        productDAO pd = new productDAO();
        model.addAttribute("productSingle", pd.findbyProductId(factory, other.subString(id)));

        return "home/index";
    }

    @RequestMapping(value = "addCart")
    public String addToCart(Model model,
            @RequestParam("producid") String id,
            @RequestParam("quantity") Integer quantity,
            HttpSession httpsession, @RequestHeader("referer") String from) {

        productDAO pd = new productDAO();

        cartbean = (CartBean) httpsession.getAttribute("shoppingcart");
        if (cartbean == null) {
            cartbean = new CartBean();
        }
        productdto = new ProductDTO(pd.findbyProductId(factory, id), quantity);
        cartbean.addSanPham(productdto, quantity);
        httpsession.setAttribute("shoppingcart", cartbean);

//        System.out.println(productdto.getSanpham().getProductName());
//        System.out.println(productdto.getQuantity());
//        System.out.println(quantity);
//        System.out.println(cartbean.isEmpty());
        return "redirect:" + from;
    }

    @RequestMapping(value = "editCart")
    public String editToCart(Model model,
            @RequestParam("producid") String id,
            @RequestParam("quantity") Integer quantity,
            HttpSession httpsession, @RequestHeader("referer") String from) {

        productDAO pd = new productDAO();

        cartbean = (CartBean) httpsession.getAttribute("shoppingcart");
        if (cartbean == null) {
            cartbean = new CartBean();
        }
        productdto = new ProductDTO(pd.findbyProductId(factory, id), quantity);
        cartbean.editSanPham(productdto, quantity);
        httpsession.setAttribute("shoppingcart", cartbean);

//        System.out.println(productdto.getSanpham().getProductName());
//        System.out.println(productdto.getQuantity());
//        System.out.println(quantity);
//        System.out.println(cartbean.isEmpty());
        return "redirect:" + from;
    }

    @RequestMapping(value = "addCart", params = "toCart")
    public String addtoCart(@RequestHeader("referer") String from,
            @RequestParam("aProduct") String id,
            @RequestParam("quantity") Integer quantity,
            Model model, HttpSession httpsession) {
        productDAO pd = new productDAO();
        System.out.println(quantity);
//        System.out.println(id);
        cartbean = (CartBean) httpsession.getAttribute("shoppingcart");
        if (cartbean == null) {
            cartbean = new CartBean();
        }
        productdto = new ProductDTO(pd.findbyProductId(factory, id));
        cartbean.addSanPham(productdto, quantity);
        httpsession.setAttribute("shoppingcart", cartbean);

        return "redirect:" + from;
//        return getIndex(model);
    }

    @RequestMapping("removeCart")
    public String removeCart(Model model, HttpSession httpsession,
            @RequestParam("id") String id) {

        cartbean = (CartBean) httpsession.getAttribute("shoppingcart");
        cartbean.removeSanpham(id);
        httpsession.setAttribute("shoppingcart", cartbean);

        return getCart(model, httpsession);
    }

    @RequestMapping(value = "payBill", params = "pay")
    public String payBill(Model model, HttpSession httpsession
    //            
    ) {

        cartbean = (CartBean) httpsession.getAttribute("shoppingcart");
        String customerID = (String) httpsession.getAttribute("username");
        if (customerID == null) {
            model.addAttribute("mess", "<font size=\"3\" color=\"red\">Please Login now !</font>"
            );
            return getCart(model, httpsession);
        }
        Iterator it = cartbean.entrySet().iterator();

//        Orders orders = new Orders(other.getNow(), "", false,cusDAO.findByUsername(factory, customerID));
        if (!it.hasNext()) {
            model.addAttribute("mess", "<font size=\"3\" color=\"red\">Cart is Empty !</font>"
            );
            return getCart(model, httpsession);
        }

        customerDAO cusDAO = new customerDAO();
        orderDAO oDAO = new orderDAO();
        orderDetailDAO odDAO = new orderDetailDAO();
        ProductDTO pdto = null;
        Customer customer = cusDAO.findByUsername(factory, customerID);
        Orders orders = new Orders(other.getNow(), "", false, customer);
        oDAO.create(factory, orders);

        String table = "";
        int tongtien = 0;
        while (it.hasNext()) {
            Map.Entry pair = (Map.Entry) it.next();
//            System.out.println(pair.getKey() + " = " + pair.getValue());
//            System.out.println(other.getNow());
            pdto = (ProductDTO) pair.getValue();
            tongtien += pdto.getSanpham().getPrice().intValue() * pdto.getQuantity();
            odDAO.create(factory, new OrderDetails(new OrderDetailsId((String) pair.getKey(), orders.getOrderId()),
                    orders, pdto.getSanpham(), pdto.getQuantity()));
            table += "<tr><td>" + pdto.getSanpham().getProductName() + "</td><td>" + pdto.getQuantity() + "</td>"
                    + "<td>" + other.formatNumbertoCurrency(pdto.getSanpham().getPrice().intValue() * pdto.getQuantity() * 1000) + " VNĐ</td></tr>";

        }
        table += "<tr>"
                + "<td colspan=\"2\">TotalBill</td>"
                + "<td>" + other.formatNumbertoCurrency(tongtien * 1000) + " VNĐ</td>"
                + "</tr>";

        model.addAttribute("mess", "Pay Success, Thank you ! <br/> Please Check Your Mail ");
        httpsession.setAttribute("shoppingcart", new CartBean());
        mailService.send("ngvdaimail@gmail.com", customer.getEmail(), "Dat Hang Online Cua Sau Nhat Tao",
                "Danh Sach Mua Hang: <br/>"
                + "<table border=\"1\">"
                + "<tr><th>Item</th><th>Quantity</th><th>Price</th></tr>"
                + table
                + "</table> <br/>");

        return getCart(model, httpsession);
    }

    @RequestMapping(value = "search", params = "search")
    public String getSearch(@RequestParam("searchField") String search, Model model) {
        site.setTitle(other.getTitleWeb("product"));
        site.setCarousel("home/blank.jsp");
        site.setContent("home/product.jsp");
        site.setFeature("home/blank.jsp");
        model.addAttribute("index", site);

        productDAO pd = new productDAO();
        model.addAttribute("products", pd.findinBrowser(factory, search));

        return "home/index";
    }

}
