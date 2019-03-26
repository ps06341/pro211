/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import java.util.List;
import model.OrderDetails;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author QuangPhu
 */
public class orderDetailDAO implements dao<OrderDetails> {
    Session session;
    public orderDetailDAO(){};
    @Override
    public List<OrderDetails> findAll(SessionFactory sf) {
        List<OrderDetails> list = new ArrayList<OrderDetails>();
        session = sf.getCurrentSession();
        Query query = session.createQuery("From OrderDetails");
        list = query.list();
        return list;
    }

    @Override
    public void create(SessionFactory sf, OrderDetails orderdetail) {
        session = sf.openSession();
        Transaction trans = session.beginTransaction();
        try{
            session.save(orderdetail);
            trans.commit();
        }catch(Exception ex){
            trans.rollback();
        }
        session.close();
    }

    @Override
    public void edit(SessionFactory sf, OrderDetails t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void delete(SessionFactory sf, OrderDetails t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(SessionFactory sf) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
