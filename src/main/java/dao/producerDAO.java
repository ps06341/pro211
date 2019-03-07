/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import java.util.List;
import model.Producer;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author QuangPhu
 */
public class producerDAO implements dao<Producer> {

    public producerDAO() {
    }
    private Session session;
    @Override
    public List findAll(SessionFactory sf) {
        List<Producer> list = new ArrayList<Producer>();
        session = sf.getCurrentSession();
        Query query = session.createQuery("From Producer");
        list = query.list();
        return list;
    }

    @Override
    public void create(SessionFactory sf,Producer producer) {
        session = sf.openSession();
        Transaction trans = session.beginTransaction();
        try{
            session.save(producer);
            trans.commit();
        }catch(Exception ex){
            trans.rollback();
        }
        session.close();
    }

    @Override
    public void edit(SessionFactory sf,Producer producer) {
        session = sf.openSession();
        Transaction trans = session.beginTransaction();
        try{
            session.update(producer);
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
