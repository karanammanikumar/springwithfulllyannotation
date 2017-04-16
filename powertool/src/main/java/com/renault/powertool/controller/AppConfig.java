package com.renault.powertool.controller;

import java.util.logging.Logger;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

public class AppConfig {
	
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView home() {
        return new ModelAndView("index");
    }


}
