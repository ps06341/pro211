/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import model.Employee;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author QuangPhu
 */
public class dashDAO {
    public dashDAO(){
        
    }
    private Session session;
    public List getTotalEmp(SessionFactory sf) {
        List<Employee> list = null;
        session = sf.openSession();
        session.beginTransaction();
        String sql = "select count(*) from Employee";
        Query query = session.createQuery(sql);
        list = query.list();
        session.close();
        return list;
    }
    
    public List getTotalAccount(SessionFactory sf) {
        List<Employee> list = null;
        session = sf.openSession();
        session.beginTransaction();
        String sql = "select count(*) from Account";
        Query query = session.createQuery(sql);
        list = query.list();
        session.close();
        return list;
    }
    
    public List getTotalProduct(SessionFactory sf) {
        List<Employee> list = null;
        session = sf.openSession();
        session.beginTransaction();
        String sql = "select count(*) from Product";
        Query query = session.createQuery(sql);
        list = query.list();
        session.close();
        return list;
    }
    
    public List getTotalOrder(SessionFactory sf) {
        List<Employee> list = null;
        session = sf.openSession();
        session.beginTransaction();
        String sql = "select count(*) from Orders";
        Query query = session.createQuery(sql);
        list = query.list();
        session.close();
        return list;
    }
    
    public List getTotalCustomer(SessionFactory sf) {
        List<Employee> list = null;
        session = sf.openSession();
        session.beginTransaction();
        String sql = "select count(*) from Customer";
        Query query = session.createQuery(sql);
        list = query.list();
        session.close();
        return list;
    }
    
    public List getTotalOrderConfirm(SessionFactory sf) {
        List<Employee> list = null;
        session = sf.openSession();
        session.beginTransaction();
        String sql = "select count(*) from Orders where status = 1";
        Query query = session.createQuery(sql);
        list = query.list();
        session.close();
        return list;
    }
    
    public List getTotalOrderCancel(SessionFactory sf) {
        List<Employee> list = null;
        session = sf.openSession();
        session.beginTransaction();
        String sql = "select count(*) from Orders where status = 0";
        Query query = session.createQuery(sql);
        list = query.list();
        session.close();
        return list;
    }
}
