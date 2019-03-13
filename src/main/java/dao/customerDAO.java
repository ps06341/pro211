/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import java.util.List;
import model.Customer;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;


/**
 *
 * @author Admin
 */
public class customerDAO implements dao<Customer>{
   private Session session;

    public customerDAO() {
    }
   
    @Override
    public List<Customer> findAll(SessionFactory sf) {
          List<Customer> list = new ArrayList<Customer>();
        session = sf.getCurrentSession();
        Query query = session.createQuery("From Customer");
        list = query.list();
        return list; 
    }

    public Customer findByUsername(SessionFactory sf,String username){
        Customer customer = null;
        Session session = sf.openSession();
        Transaction trans = session.beginTransaction();
        try{
        customer = (Customer) session.get(Customer.class, username);
           trans.commit();
        }catch(Exception e){
          System.out.println("Username find: "+e);
        }finally{
            session.close();
        }
        return customer;
    }
    @Override
    public void create(SessionFactory sf, Customer customer) {
        session = sf.openSession();
        Transaction trans = session.beginTransaction();
        try{
            session.save(customer);
            trans.commit();
        }catch(Exception ex){
            trans.rollback();
        }
        session.close();
    }

    @Override
    public void edit(SessionFactory sf, Customer t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(SessionFactory sf) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
