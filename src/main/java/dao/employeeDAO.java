/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import model.Employee;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

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
        session = sf.openSession();
        Transaction trans = session.beginTransaction();
        try{
            session.save(employee);
            trans.commit();
        }catch(Exception ex){
            trans.rollback();
        }
        session.close();
    }

    @Override
    public void edit(SessionFactory sf, Employee employee) {
        session = sf.openSession();
        Transaction trans = session.beginTransaction();
        try{
            session.update(employee);
            trans.commit();
        }catch(Exception ex){
            trans.rollback();
        }
        session.close();
    }

    
    public boolean checkUser(SessionFactory sf,String ma) {
        session = sf.openSession();
        Transaction trans = null;
        try {
            trans = session.beginTransaction();
            List<Employee> ac = session.createQuery("from Employee where EmpID='" + ma + "'").list();
            trans.commit();
            if (ac.size() >= 1) {
                return true;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }
    
    public boolean checkEmail(String a) {
        Pattern pt = Pattern.compile("^[\\w-\\+]+(\\.[\\w]+)*@[\\w-]+(\\.[\\w]+)*(\\.[a-z]{2,})$");
        Matcher mc = pt.matcher(a);
        if (!mc.find()) {
            return false;
        }
        return true;
    }
    
    public boolean checkDau(String a) {
        Pattern pt = Pattern.compile("[ÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚÝàáâãèéêìíòóôõùúýĂăĐđĨĩŨũƠơƯưẠ-ỹ]");
        Matcher mc = pt.matcher(a);
        if (!mc.find()) {
            return false;
        }
        return true;
    }

    @Override
    public void delete(SessionFactory sf) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    
}
