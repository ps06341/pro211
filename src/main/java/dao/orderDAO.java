/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import java.util.List;
import model.Orders;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author QuangPhu
 */
public class orderDAO implements dao<Orders>{
    private Session session;
    public orderDAO(){}
    @Override
    public List<Orders> findAll(SessionFactory sf) {
        List<Orders> list = new ArrayList<Orders>();
        session = sf.getCurrentSession();
        Query query = session.createQuery("From Orders");
        list = query.list();
        return list;
    }

    @Override
    public void create(SessionFactory sf, Orders order) {
        session = sf.openSession();
        Transaction trans = session.beginTransaction();
        try{
            session.save(order);
            trans.commit();
        }catch(Exception ex){
            trans.rollback();
        }
        session.close();
    }

    @Override
    public void edit(SessionFactory sf, Orders t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void delete(SessionFactory sf, Orders t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(SessionFactory sf) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
