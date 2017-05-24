package org.meragaon.meradesh.controller;

import org.meragaon.meradesh.dto.UserDTO;
import org.meragaon.meradesh.entity.User;
import org.meragaon.meradesh.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * Created by rampal.rao on 17/5/17.
 */
@Controller
public class HomePageController {
    @Autowired
    private UserService userService;

    private static AtomicInteger totalPageViewCount=new AtomicInteger(0);
    private static AtomicInteger totalRegistrationCount=new AtomicInteger(0);

    @RequestMapping(value = {"/", "/addUser"}, method = RequestMethod.GET)
    public String showHomePage(ModelMap modelMap) {
        int pageViewCount=totalPageViewCount.incrementAndGet();
        int registrationCount=totalRegistrationCount.get();
        modelMap.addAttribute("pageViewCount", pageViewCount);
        modelMap.addAttribute("registrationCount", registrationCount);
        modelMap.addAttribute("user",new User());
        return "homepage";
    }

    @RequestMapping(value = "/addUser", method = RequestMethod.POST)
    public String addStudent(@ModelAttribute(value = "user") UserDTO userdto, ModelMap modelMap) {
        User user = new User();
        user.setName(userdto.getName());
        user.setMobile(userdto.getMobile());
        user.setAddress(userdto.getAddress());
        userService.addUser(user);
        modelMap.addAttribute("user",new User());
        int pageViewCount=totalPageViewCount.get();
        int registrationCount=totalRegistrationCount.incrementAndGet();
        modelMap.addAttribute("pageViewCount", pageViewCount);
        modelMap.addAttribute("registrationCount", registrationCount);
        modelMap.addAttribute("successMsg", "User registered successfully.");
        return "homepage";
    }

    @RequestMapping(value = "/viewAllUser", method = RequestMethod.GET)
    public String getAllStudent(ModelMap map) {
        List<UserDTO> userDTOs = new ArrayList<>();
        List<User> users = userService.getAllUsers();
        for (User user : users) {
            UserDTO userdto = new UserDTO();
            userdto.setName(user.getName());
            userdto.setMobile(user.getMobile());
            userdto.setAddress(user.getAddress());
            userDTOs.add(userdto);
        }
        map.addAttribute("userList", userDTOs);
        return "viewAllUser";
    }
}
