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
import model.Account;
import model.Employee;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author QuangPhu
 */
public class accountDAO implements dao<Account> {
    
    public accountDAO(){}
    
    private Session session;
    @Override
    public List<Account> findAll(SessionFactory sf) {
        List<Account> list = new ArrayList<Account>();
        session = sf.getCurrentSession();
        Query query = session.createQuery("From Account");
        list = query.list();
        return list;
    }

    @Override
    public void create(SessionFactory sf, Account account) {
        session = sf.openSession();
        Transaction trans = session.beginTransaction();
        try{
            session.save(account);
            trans.commit();
        }catch(Exception ex){
            trans.rollback();
        }
        session.close();
    }

    @Override
    public void edit(SessionFactory sf, Account account) {
        session = sf.openSession();
        Transaction trans = session.beginTransaction();
        try{
            session.update(account);
            trans.commit();
        }catch(Exception ex){
            trans.rollback();
        }
        session.close();
    }

    public Account findByID(SessionFactory sf,String username){
        Account account = null;
        session = sf.openSession();
        Transaction trans = session.beginTransaction();
        try{
        account = (Account) session.get(Account.class, username);
           trans.commit();
        }catch(Exception e){
          System.out.println("Username find: "+e);
        }finally{
            session.close();
        }
        return account;
    }
    
	public List<Employee> getTaiKhoan(SessionFactory sf, String matk) {
        List<Employee> list = null;
        session = sf.openSession();
        session.beginTransaction();
        String sql = "from Employee where AccountID= '" + matk + "'";
        Query query = session.createQuery(sql);
        list = query.list();
        session.close();
        return list;
    }
	
   
    
    public boolean checkUser(SessionFactory sf,String ma) {
        session = sf.openSession();
        Transaction trans = null;
        try {
            trans = session.beginTransaction();
            List<Account> ac = session.createQuery("from Account where Username='" + ma + "'").list();
            trans.commit();
            if (ac.size() >= 1) {
                return true;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
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
