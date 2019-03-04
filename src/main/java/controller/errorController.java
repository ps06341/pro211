/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import components.Site;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import other.Other;

/**
 *
 * @author Admin
 */
@Controller
public class errorController {

    @Autowired
    Other other;

    @Autowired
    @Qualifier("index")
    Site site;

    @RequestMapping("error")
    public String getError404(Model model,
            HttpServletRequest httpRequest) {
        int httpErrorCode = getErrorCode(httpRequest);

        switch (httpErrorCode) {
            case 400: {

                break;
            }
            case 401: {

                break;
            }
            case 404: {
                site.setContent("home/404.jsp");

                break;
            }
            case 500: {
                site.setContent("home/505.jsp");

                break;
            }
        }
        site.setTitle(other.getTitleWeb("error"));
        site.setCarousel("home/blank.jsp");
        site.setFeature("home/blank.jsp");
        model.addAttribute("index", site);

        return "home/index";
    }

    private int getErrorCode(HttpServletRequest httpRequest) {
        return (Integer) httpRequest.getAttribute("javax.servlet.error.status_code");
    }

}
