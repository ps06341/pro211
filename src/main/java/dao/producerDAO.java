/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;

import model.Producer;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Admin
 */
public class producerDAO implements dao<Producer>{

    @Override
    public List<Producer> findAll(SessionFactory sf) {
        return this.findAll(sf, 0, 10);
    }
    
    public List<Producer> findAll(SessionFactory sf,int min,int max) {
        Session session = sf.getCurrentSession();
        Query query = session.createQuery("FROM Producer as p");
        query.setFirstResult(min);
        query.setMaxResults(max);
        List<Producer> list = query.list();
        
        return list;
    }

    @Override
    public void create(SessionFactory sf) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void edit(SessionFactory sf) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(SessionFactory sf) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
    
    
    
}
