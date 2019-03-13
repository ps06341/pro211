/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import org.springframework.format.annotation.DateTimeFormat;


/**
 *
 * @author Admin
 */
@Entity
public class Customer implements Serializable {

    @Column(name = "username", length = 32,nullable = false)
    @Id
   
    private String username;
   
    @Column(name = "password", length = 32,nullable = false)
    private String password;
    @Column(name = "fullname", length = 200,nullable = false)
    private String fullname;
   
    private Boolean gender;

    @DateTimeFormat(pattern = "yyyy/MM/dd")
  
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date birthday;
    @Column(name = "phone", length = 11,nullable = false)
    private String phone;
    @Column(name = "address", length = 200,nullable = false)
    private String address;
   @Column(name = "email", length = 101,nullable = false)
    private String email;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "customer")
    private Set<Orders> orderses = new HashSet<Orders>(0);

    public Customer() {
    }

    public Customer(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public Customer(String username, String password, String fullname, Boolean gender, Date birthday, String phone, String address, String email) {
        this.username = username;
        this.password = password;
        this.fullname = fullname;
        this.gender = gender;
        this.birthday = birthday;
        this.phone = phone;
        this.address = address;
        this.email = email;
    }
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public Boolean getGender() {
        return gender;
    }

    public void setGender(Boolean gender) {
        this.gender = gender;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Set<Orders> getOrderses() {
        return orderses;
    }

    public void setOrderses(Set<Orders> orderses) {
        this.orderses = orderses;
    }

}
