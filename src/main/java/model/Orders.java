/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

/**
 *
 * @author Admin
 */
@Entity
public class Orders implements Serializable {

    @Id
    @GeneratedValue
    private Integer orderId;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "CustomerID")
    private Customer customer;
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "dd/MM/yyyy")
    private Date orderDay;
    private String describe;
    private Boolean status;
    
    @OneToMany(fetch = FetchType.EAGER, mappedBy = "orders")
    private Set<OrderDetails> orderDetailses = new HashSet<OrderDetails>(0);

    public Orders() {
    }

    public Orders(Integer orderId, Customer customer, Date orderDay, String describe, Boolean status) {
        this.orderId = orderId;
        this.customer = customer;
        this.orderDay = orderDay;
        this.describe = describe;
        this.status = status;
    }

    public Orders(Integer orderId, Customer customer, Date orderDay, String describe, Boolean status,
            Set<OrderDetails> orderDetailses) {
        this.orderId = orderId;
        this.customer = customer;
        this.orderDay = orderDay;
        this.describe = describe;
        this.status = status;
        this.orderDetailses = orderDetailses;
    }
    
    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public Date getOrderDay() {
        return orderDay;
    }

    public void setOrderDay(Date orderDay) {
        this.orderDay = orderDay;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public Set<OrderDetails> getOrderDetailses() {
        return orderDetailses;
    }

    public void setOrderDetailses(Set<OrderDetails> orderDetailses) {
        this.orderDetailses = orderDetailses;
    }

}
