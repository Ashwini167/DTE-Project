package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.niit.dao.CategoryDAO;
import com.niit.model.Category;
import com.niit.model.UserDetail;

@Controller
public class PageController {
	@Autowired
	CategoryDAO categoryDAO;
	
	@RequestMapping("/")
	public String showHomePage(Model m) {
		List<Category> listCategories = categoryDAO.listCategory();
		m.addAttribute("listCategories", listCategories);
		m.addAttribute("username", "Guest");
		return "index";
	}
	@RequestMapping("/home")
	public String showHome(Model m) {
		List<Category> listCategories = categoryDAO.listCategory();
		m.addAttribute("listCategories", listCategories);
		m.addAttribute("username", "Guest");
		return "index";
	}	
	@RequestMapping("/login")
	public String showLogin(Model m) {
		UserDetail user = new UserDetail();
		m.addAttribute("user", user);
		return "Login";
	}
	@RequestMapping("/aboutus")
	public String showAboutUs() {
		return "AboutUs";
	}
	@RequestMapping("/register")
	public String showRegister(Model m) {
		UserDetail user = new UserDetail();
		m.addAttribute("user", user);
		return "Register";
	}
	@RequestMapping("/contactus")
	public String showContactUs() {
		return "contactUs";
	}
}
