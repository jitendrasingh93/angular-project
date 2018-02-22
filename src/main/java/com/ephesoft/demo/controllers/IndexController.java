package com.ephesoft.demo.controllers;

/**
 * Created by JitendraSingh on 30/01/18.
 */

    import org.springframework.stereotype.Controller;
    import org.springframework.web.bind.annotation.RequestMapping;
    import org.springframework.web.bind.annotation.RequestMethod;

    @Controller
    @RequestMapping("/")
    public class IndexController {

        @RequestMapping(method = RequestMethod.GET)
        public String getIndexPage() {
            return "index";
            //return "UserManagement";
        }

}
