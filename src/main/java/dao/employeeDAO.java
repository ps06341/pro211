/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import java.util.List;
import model.Employee;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author QuangPhu
 */
public class employeeDAO implements dao<Employee> {
    
    public employeeDAO(){}
    private Session session;
    
    @Override
    public List<Employee> findAll(SessionFactory sf) {
        List<Employee> list = new ArrayList<Employee>();
        session = sf.getCurrentSession();
        Query query = session.createQuery("From Employee");
        list = query.list();
        return list;
    }

    @Override
    public void create(SessionFactory sf, Employee employee) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void edit(SessionFactory sf, Employee employee) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(SessionFactory sf) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
