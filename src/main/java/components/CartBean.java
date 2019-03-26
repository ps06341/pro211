/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package components;


import java.util.HashMap;

/**
 *
 * @author HotVitChien
 */
public class CartBean extends HashMap {

    public void addSanPham(ProductDTO sp, Integer quantity) {
        String key = sp.getSanpham().getProductId();
        if (this.containsKey(key)) {
            int oldQuantity = ((ProductDTO) this.get(key)).getQuantity();
            ((ProductDTO) this.get(key)).setQuantity(oldQuantity + quantity);
        } else {
            sp.setQuantity(quantity);
            this.put(sp.getSanpham().getProductId(), sp);
        }
    }
    
     public void editSanPham(ProductDTO sp, Integer quantity) {
        String key = sp.getSanpham().getProductId();
        if (this.containsKey(key)) {
            ((ProductDTO) this.get(key)).setQuantity(quantity);
        } else {
           
        }
    }

    public boolean removeSanpham(String code) {
        if (this.containsKey(code)) {
            this.remove(code);
            return true;
        }
        return false;
    }

    public CartBean() {
        super();
    }

    public ProductDTO getproductDTO(ProductDTO sp) {
        String key = sp.getSanpham().getProductId();

        return (ProductDTO) this.get(key);
    }

}
