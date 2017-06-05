package org.meragaon.meradesh.controller;

import org.meragaon.meradesh.dto.UserDTO;
import org.meragaon.meradesh.entity.User;
import org.meragaon.meradesh.service.RegistrationCount;
import org.meragaon.meradesh.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
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

    private static AtomicInteger totalPageViewCount ;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String showHomePage(HttpServletRequest request, ModelMap modelMap) {
        String lang = request.getParameter("lang");
        int pageViewCount;
        if (totalPageViewCount == null) {
            pageViewCount = userService.getTotalPageViewCount() + 1;
            totalPageViewCount = new AtomicInteger(pageViewCount);
        } else {
            pageViewCount = totalPageViewCount.incrementAndGet();
        }
        modelMap.addAttribute("pageViewCount", pageViewCount);
        int registrationCount;
        if (!RegistrationCount.initialized) {
            registrationCount = userService.getTotalRegistrationCount();
            RegistrationCount.getInstance().setCount(registrationCount);
        } else {
            registrationCount = RegistrationCount.getInstance().getCount();
        }
        modelMap.addAttribute("registrationCount", registrationCount);
        UserDTO user = new UserDTO();
        if (null == lang || lang.equalsIgnoreCase("en")) {
            user.setLang("en");
        } else {
            user.setLang("hindi");
        }
        modelMap.addAttribute("user", user);
        if (user.getLang().equalsIgnoreCase("en")) {
            return "homepage";
        } else {
            if (modelMap.get("successMsg") != null) {
                modelMap.addAttribute("successMsg", "सफलतापूर्वक पंजीकृत।");
            }
            return "homepage_hindi";
        }
    }

    @RequestMapping(value = "/addUser", method = RequestMethod.POST)
    public String addUser(@ModelAttribute(value = "user") UserDTO userdto, ModelMap modelMap, final RedirectAttributes redirectAttributes) {
        User user = new User();
        user.setName(userdto.getName());
        user.setMobile(userdto.getMobile());
        user.setAddress(userdto.getAddress());
        String langauge = userdto.getLang();
        userService.addUser(user);
        modelMap.addAttribute("user", new UserDTO());
        redirectAttributes.addFlashAttribute("successMsg", "User registered successfully.");
        return "redirect:/?lang=" + langauge;
    }

    @RequestMapping(value = "/viewAllUser", method = RequestMethod.GET)
    public String viewAllUser(HttpServletRequest request, ModelMap map) {
        String userName = request.getParameter("username");
        String password = request.getParameter("password");
        List<UserDTO> userDTOs = new ArrayList<>();
        if (userName != null && password != null && userName.equals("admin") && password.equals("rahul")) {
            List<User> users = userService.getAllUsers();
            for (User user : users) {
                UserDTO userdto = new UserDTO();
                userdto.setId(user.getUserId());
                userdto.setName(user.getName());
                userdto.setMobile(user.getMobile());
                userdto.setAddress(user.getAddress());
                userDTOs.add(userdto);
            }
        } else {
            map.addAttribute("accessMsg", "You are not authorized to view list.");
        }
        map.addAttribute("userList", userDTOs);
        return "viewAllUser";
    }

    @RequestMapping(value = "/deleteUser", method = RequestMethod.GET)
    public String deleteUserById(HttpServletRequest request, final RedirectAttributes redirectAttributes) {
        String id = request.getParameter("id");
        if (null != id) {
            long userId = Long.parseLong(id);
            userService.deleteUser(userId);
            redirectAttributes.addFlashAttribute("deleteMsg", "User deleted successfully.");
        }
        return "redirect:/viewAllUser?username=admin&password=rahul";
    }
}
