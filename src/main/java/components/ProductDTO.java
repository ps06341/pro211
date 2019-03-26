/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package components;


import java.io.Serializable;
import model.Product;
import org.springframework.stereotype.Component;

/**
 *
 * @author HotVitChien
 */
@Component
public class ProductDTO implements Serializable {

    private Product sanpham;
    private int quantity;

    public ProductDTO() {
    }

    public ProductDTO(Product sanpham) {
        this.sanpham = sanpham;
    }

    public ProductDTO(Product sp, int quantity) {
        this.sanpham = sp;
        this.quantity = quantity;
    }

    public void setSanpham(Product sanpham) {
        this.sanpham = sanpham;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Product getSanpham() {
        return sanpham;
    }

    public int getQuantity() {
        return quantity;
    }

}
