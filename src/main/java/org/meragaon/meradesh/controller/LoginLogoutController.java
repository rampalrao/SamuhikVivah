package org.meragaon.meradesh.controller;

import org.meragaon.meradesh.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by rampal.rao on 17/5/17.
 */
@Controller
public class LoginLogoutController {
    
	//Spring Security see this :
	@RequestMapping(value = {"/login"}, method = { RequestMethod.POST})
	public ModelAndView loginPOST(ModelMap m) {
		ModelAndView model = new ModelAndView();
		model.setViewName("login");
		return model;

	}
	
	@RequestMapping(value = {"/login"}, method = {RequestMethod.GET})
	public ModelAndView login(ModelMap m) {
		ModelAndView model = new ModelAndView();
		model.setViewName("login");
		return model;

	}
	
	@RequestMapping(value = {"/viewAllUser"}, method = { RequestMethod.POST})
	public ModelAndView viewAllUser(ModelMap m) {
		ModelAndView model = new ModelAndView();
		model.setViewName("viewAllUser");
		return model;

	}
	
	@RequestMapping(value = {"/logout"}, method = { RequestMethod.GET})
	public ModelAndView logout(ModelMap m) {
		ModelAndView model = new ModelAndView();
		return model;

	}
}
