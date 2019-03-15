/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import java.util.List;
import model.Account;
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

    @Override
    public void delete(SessionFactory sf, Account account) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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
}
