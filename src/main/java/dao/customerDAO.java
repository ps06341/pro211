/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;


import java.util.ArrayList;
import java.util.List;
import model.Customer;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Admin
 */
public class customerDAO implements dao<Customer> {
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

    public Customer findByUsername(SessionFactory sf, String username) {
        Customer customer = null;
        Session session = sf.openSession();
        try {
            customer = (Customer) session.get(Customer.class, username);
        } catch (Exception e) {
            System.out.println("Username find: " + e);
        }
        return customer;
    }

    public Customer findByEmail(SessionFactory sf, String email) {
        Customer customer = null;
        try {
            Criteria crit = sf.getCurrentSession().createCriteria(Customer.class);
            crit.add(Restrictions.eq("email", email));
            customer = (Customer) crit.uniqueResult();
        } catch (Exception e) {
            System.out.println("email find: " + e);
        }
        return customer;
    }


    @Override
    public void create(SessionFactory sf, Customer customer) {
        session = sf.openSession();
        Transaction trans = session.beginTransaction();
        try {
            session.save(customer);
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        }
        session.close();
    }

    @Override
    public void edit(SessionFactory sf, Customer customer) {
        session = sf.openSession();
        Transaction trans = session.beginTransaction();
        try {
            session.update(customer);
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        }
        session.close();
    }

    @Override
    public void delete(SessionFactory sf) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
