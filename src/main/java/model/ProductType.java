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
public class ProductType implements Serializable {

    @Id
    @GeneratedValue
    private Integer typeId;
    private String typeName;
    private String describe;
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "productType")
    private Set<Product> products = new HashSet<Product>(0);

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public ProductType() {
    }

    public ProductType(Integer typeId, String typeName, String describe) {
        this.typeId = typeId;
        this.typeName = typeName;
        this.describe = describe;
    }

    public Set<Product> getProducts() {
        return this.products;
    }

    public void setProducts(Set<Product> products) {
        this.products = products;
    }

}
