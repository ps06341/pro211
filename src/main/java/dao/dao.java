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
    abstract List<T> findAll(SessionFactory sf);
    abstract void create(SessionFactory sf);
    abstract void edit(SessionFactory sf);
    abstract void delete(SessionFactory sf);
}
