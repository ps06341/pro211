/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import java.util.List;
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
    
    private Session session;
    
    @Override
    public List<Product> findAll(SessionFactory sf) {
        List<Product> list = new ArrayList<Product>();
        session = sf.getCurrentSession();
        Query query = session.createQuery("From Product");
        list = query.list();
        return list;
    }

    @Override
    public void create(SessionFactory sf, Product product) {
        session = sf.openSession();
        Transaction trans = session.beginTransaction();
        try{
            session.save(product);
            trans.commit();
        }catch(Exception ex){
            trans.rollback();
        }
        session.close();
    }

    @Override
    public void edit(SessionFactory sf, Product product) {
        session = sf.openSession();
        Transaction trans = session.beginTransaction();
        try{
            session.update(product);
            trans.commit();
        }catch(Exception ex){
            trans.rollback();
        }
        session.close();
    }

    @Override
    public void delete(SessionFactory sf, Product product) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public Product find(SessionFactory sf, String productId) {
        Session session = sf.getCurrentSession();
        Product product = (Product) session.get(Product.class, productId);
        
        return product;
    }
    
}
