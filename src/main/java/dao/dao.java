/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import org.hibernate.SessionFactory;

/**
 *
 * @author Admin
 * @param <T>
 */
public interface dao<T> {

    List<T> findAll(SessionFactory sf);

    void create(SessionFactory sf,T t);

    void edit(SessionFactory sf,T t);

    void delete(SessionFactory sf,T t);
}
