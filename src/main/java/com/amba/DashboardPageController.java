package com.amba;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.io.IOException;

@RequestMapping("")
@Controller
public class DashboardPageController {

    @RequestMapping(method = RequestMethod.GET)
    public String getDashboard(final ModelMap model) throws IOException {
        return "dashboard";
    }

}
