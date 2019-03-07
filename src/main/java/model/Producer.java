/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;


/**
 *
 * @author Admin
 */
@Entity
public class Producer implements Serializable{

    @Id
    @GeneratedValue
    private Integer producerId;
    private String producerName;
    
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "producer")
    private Set<Product> products = new HashSet<Product>(0);

    public Integer getProducerId() {
        return producerId;
    }

    public void setProducerId(Integer producerId) {
        this.producerId = producerId;
    }

    public String getProducerName() {
        return producerName;
    }

    public void setProducerName(String producerName) {
        this.producerName = producerName;
    }

    public Set<Product> getProducts() {
        return this.products;
    }

    public void setProducts(Set<Product> products) {
        this.products = products;
    }

    public Producer() {
    }

    public Producer(int producerId, String producerName) {
        this.producerId = producerId;
        this.producerName = producerName;
    }

}
