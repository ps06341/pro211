/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import java.util.List;
import model.ProductType;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author QuangPhu
 */
public class productypeDAO implements dao<ProductType> {
    
    public productypeDAO(){}
    private Session session;
    @Override
    public List<ProductType> findAll(SessionFactory sf) {
        List<ProductType> list = new ArrayList<ProductType>();
        session = sf.getCurrentSession();
        Query query = session.createQuery("From ProductType");
        list = query.list();
        return list;
    }

    @Override
    public void create(SessionFactory sf, ProductType producttype) {
        session = sf.openSession();
        Transaction trans = session.beginTransaction();
        try{
            session.save(producttype);
            trans.commit();
        }catch(Exception ex){
            trans.rollback();
        }
        session.close();
    }

    @Override
    public void edit(SessionFactory sf, ProductType producttype) {
        session = sf.openSession();
        Transaction trans = session.beginTransaction();
        try{
            session.update(producttype);
            trans.commit();
        }catch(Exception ex){
            trans.rollback();
        }
        session.close();
    }

    @Override
    public void delete(SessionFactory sf) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
