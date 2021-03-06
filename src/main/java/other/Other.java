/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package other;

import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Date;
import org.springframework.stereotype.Component;

/**
 *
 * @author Admin
 */
@Component("other")
public class Other {

    public String getTitleWeb(String req) {
        return "home." + req + ".title";
    }

    public String getTitleAdmin(String req) {
        return "admin." + req + ".title";
    }

    public String subString(String string) {
        return string.substring(0, string.length() - 4);
    }

    public Date getNow() {
        return new Date();
    }

    public String formatNumbertoCurrency(int number) {
        if (number <1000) {
            return String.valueOf(number);
        }
        
        try {
            NumberFormat formatter = new DecimalFormat("###,###");
            String resp = formatter.format(number);
//            resp = resp.replaceAll(",", ".");
            return resp;
        } catch (Exception e) {
            return "";
        }
    }

}
