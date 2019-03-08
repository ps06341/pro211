/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package other;

import org.springframework.stereotype.Component;

/**
 *
 * @author Admin
 */
@Component("other")
public class Other {
    
    public String getTitleWeb(String req){
        return "home."+req+".title";
    }
    
    public String getTitleAdmin(String req){
        return "admin."+req+".title";
    }
    
    public String subString(String string){
        return string.substring(0,string.length()-4);
    }
    
}
