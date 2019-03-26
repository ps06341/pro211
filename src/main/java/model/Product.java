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
import javax.persistence.Entity;
import javax.persistence.FetchType;
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
public class Product implements Serializable {

    @Id
    private String productId;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "ProducerID")
    private Producer producer;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "TypeID")
    private ProductType productType;

    private String productName;
    private Double price;
    private Integer quantity;
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "dd/MM/yyyy")
    private Date productDAY;
    private String describe;
    private Boolean status;
    private String image;
//	private Set<OrderDetails> orderDetailses = new HashSet<OrderDetails>(0);

    public Product() {
    }

    public Product(String productId, Producer producer, ProductType productType, String productName, Double price, Integer quantity, Date productDAY, String describe, Boolean status, String image) {

    }

    public Product(String productId, Producer producer, ProductType productType, String productName, Double price, Integer quantity, String describe, Boolean status, String image) {
        this.productId = productId;
        this.producer = producer;
        this.productType = productType;
        this.productName = productName;
        this.price = price;
        this.quantity = quantity;
        this.describe = describe;
        this.status = status;
        this.image = image;
    }

    public Product(String productId, Producer producer, ProductType productType, Date productDAY, String productName, Double price, int quantity, String describe, Boolean status, String image) {
        this.productId = productId;
        this.producer = producer;
        this.productType = productType;
        this.productName = productName;
        this.price = price;
        this.quantity = quantity;
        this.productDAY = productDAY;
        this.describe = describe;
        this.status = status;
        this.image = image;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public Producer getProducer() {
        return producer;
    }

    public void setProducer(Producer producer) {
        this.producer = producer;
    }

    public ProductType getProductType() {
        return productType;
    }

    public void setProductType(ProductType productType) {
        this.productType = productType;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

//    @OneToMany(fetch = FetchType.LAZY, mappedBy = "product")
//	public Set<OrderDetails> getOrderDetailses() {
//		return this.orderDetailses;
//	}
//
//	public void setOrderDetailses(Set<OrderDetails> orderDetailses) {
//		this.orderDetailses = orderDetailses;
//	}
    public Date getProductDAY() {
        return productDAY;
    }

    public void setProductDAY(Date productDAY) {
        this.productDAY = productDAY;
    }

}
