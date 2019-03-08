/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import model.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author QuangPhu
 */
public class productDAO implements dao<Product> {

    @Override
    public List<Product> findAll(SessionFactory sf) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void create(SessionFactory sf, Product product) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void edit(SessionFactory sf, Product product) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(SessionFactory sf) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public Product find(SessionFactory sf, String productId) {
        Session session = sf.openSession();
        Transaction trans = session.beginTransaction();
        Product product =null;
        try {
            product = (Product) session.get(Product.class, productId);
            trans.commit();
        } catch (Exception e) {
            System.out.println("productDAO find: "+e);
        }finally{
            session.close();
        }
        
        return product;
    }
}
