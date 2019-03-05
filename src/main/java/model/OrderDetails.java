/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.io.Serializable;
import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**
 *
 * @author Admin
 */
@Entity
public class OrderDetails implements Serializable {

    @EmbeddedId

    @AttributeOverrides({
        @AttributeOverride(name = "productId", column = @Column(name = "ProductID", nullable = false, length = 30)),
        @AttributeOverride(name = "orderId", column = @Column(name = "OrderID", nullable = false))})

    private OrderDetailsId id;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "OrderID", nullable = false, insertable = false, updatable = false)
    private Orders orders;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "ProductID", nullable = false, insertable = false, updatable = false)
    private Product product;
    private Integer quantity;

    public OrderDetails() {
    }

    public OrderDetails(OrderDetailsId id, Orders orders, Product product, Integer quantity) {
        this.id = id;
        this.orders = orders;
        this.product = product;
        this.quantity = quantity;
    }

    public OrderDetails(Orders orders, Product product, Integer quantity) {
        this.orders = orders;
        this.product = product;
        this.quantity = quantity;
    }

    public OrderDetailsId getId() {
        return id;
    }

    public void setId(OrderDetailsId id) {
        this.id = id;
    }

    public Orders getOrders() {
        return orders;
    }

    public void setOrders(Orders orders) {
        this.orders = orders;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

}
