/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import model.Product;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author QuangPhu
 */
public class productDAO implements dao<Product> {

    Session session;

    @Override
    public List<Product> findAll(SessionFactory sf) {
        List<Product> list = new ArrayList<>();
        Session session = sf.getCurrentSession();
        Query query = session.createQuery("FROM Product");
        list = query.list();

        return list;
    }

    public List<Product> findbyProducer(SessionFactory sf, Integer ProducerId) {
        List<Product> list = new ArrayList<>();
        Session session = sf.getCurrentSession();
        Query query = session.createQuery("FROM Product as p where p.producer.producerId=:producerid");
        query.setInteger("producerid", ProducerId);
        list = query.list();

        return list;
    }

    public List<Product> findinBrowser(SessionFactory sf, String search) {
        List<Product> list = new ArrayList<>();
        Session session = sf.getCurrentSession();
        Query query = session.createQuery("FROM Product as p where p.productId like :producerid"
                + " or p.productName like :productname or p.productType.typeId like :typeid");
        query.setString("producerid", "%"+search+"%");
        query.setString("productname", "%"+search+"%");
        query.setString("typeid", "%"+search+"%");
        list = query.list();

        return list;
    }

    public Product findbyProductId(SessionFactory sf, String ProductId) {
        Product product = null;
        Session session = sf.getCurrentSession();
        Query query = session.createQuery("FROM Product as p where p.productId=:producerid");
        query.setString("producerid", ProductId);
        product = (Product) query.list().get(0);

        return product;
    }

    @Override
    public void create(SessionFactory sf, Product product) {
        session = sf.openSession();
        Transaction trans = session.beginTransaction();
        try {
            session.save(product);
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        }
        session.close();
    }

    @Override
    public void edit(SessionFactory sf, Product product) {
        session = sf.openSession();
        Transaction trans = session.beginTransaction();
        try {
            session.update(product);
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        }
        session.close();
    }

    public void delete(SessionFactory sf, Product product) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public boolean checkUser(SessionFactory sf, String ma) {
        session = sf.openSession();
        Transaction trans = null;
        try {
            trans = session.beginTransaction();
            List<Product> ac = session.createQuery("from Product where ProductID='" + ma + "'").list();
            trans.commit();
            if (ac.size() >= 1) {
                return true;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    public boolean checkDau(String a) {
        Pattern pt = Pattern.compile("[ÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚÝàáâãèéêìíòóôõùúýĂăĐđĨĩŨũƠơƯưẠ-ỹ]");
        Matcher mc = pt.matcher(a);
        if (!mc.find()) {
            return false;
        }
        return true;
    }

    public Product find(SessionFactory sf, String productId) {
        Session session = sf.getCurrentSession();
        Product product = (Product) session.get(Product.class, productId);

        return product;
    }
//    public Product find(SessionFactory sf, String productId) {
//        Session session = sf.openSession();
//        Transaction trans = session.beginTransaction();
//        Product product =null;
//        try {
//            product = (Product) session.get(Product.class, productId);
//            trans.commit();
//        } catch (Exception e) {
//            System.out.println("productDAO find: "+e);
//        }finally{
//            session.close();
//        }
//        
//        return product;
//    }

    @Override
    public void delete(SessionFactory sf) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
