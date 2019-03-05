/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.io.Serializable;
import javax.persistence.Embeddable;

/**
 *
 * @author Admin
 */
@Embeddable
public class OrderDetailsId implements Serializable {

    private String productId;
    private int orderId;

    public OrderDetailsId() {
    }

    public OrderDetailsId(String productId, int orderId) {
        this.productId = productId;
        this.orderId = orderId;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    @Override
    public boolean equals(Object other) {
        if ((this == other)) {
            return true;
        }
        if ((other == null)) {
            return false;
        }
        if (!(other instanceof OrderDetailsId)) {
            return false;
        }
        OrderDetailsId castOther = (OrderDetailsId) other;

        return ((this.getProductId() == castOther.getProductId()) || (this.getProductId() != null
                && castOther.getProductId() != null && this.getProductId().equals(castOther.getProductId())))
                && (this.getOrderId() == castOther.getOrderId());
    }

    @Override
    public int hashCode() {
        int result = 17;

        result = 37 * result + (getProductId() == null ? 0 : this.getProductId().hashCode());
        result = 37 * result + this.getOrderId();
        return result;
    }

}
