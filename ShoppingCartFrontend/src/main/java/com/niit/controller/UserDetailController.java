package com.niit.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.niit.dao.UserDetailDAO;
import com.niit.model.UserDetail;

@Controller
public class UserDetailController {
	@Autowired
	UserDetailDAO userDetailDAO;
	
	@RequestMapping("/viewUsersList")
	public String listUsers(Model m) {
		List<UserDetail> userList = userDetailDAO.listUserDetails();
		m.addAttribute("userList", userList);
		return "viewUsersList";
	}
	
	@RequestMapping(value="/editUser/{username}", method=RequestMethod.GET)
	public String showUpdateUserPage(@PathVariable("username")String username,Model m) {
		UserDetail userDetail = userDetailDAO.viewUserDetailByUsername(username);
		m.addAttribute("user", userDetail);
		return "editUserDetails";
	}
	
	@RequestMapping(value="/editUserDetails", method=RequestMethod.POST)
	public String updateUserDetails(@ModelAttribute("user")UserDetail userDetail, Model m) {
		System.out.println("Inside update User Details method");
		System.out.println("User Name from the form is "+userDetail.getUsername());
		userDetailDAO.updateUserDetail(userDetail);		
		
		List<UserDetail> userList = userDetailDAO.listUserDetails();
		m.addAttribute("userList", userList);
		
		return "viewUsersList";
	}
	
	@RequestMapping(value="/addUserDetail",method=RequestMethod.POST)
	public String addUser(@ModelAttribute("user")UserDetail userDetail, Model m) {
		System.out.println("Name of the user from the form: "+userDetail.getName());
		System.out.println("Name of the user from the form: "+userDetail.getUsername());
		String message;
		UserDetail userCheckByUsername, userCheckByEmail = null;
		userCheckByUsername = userDetailDAO.viewUserDetailByUsername(userDetail.getUsername());
		if(userCheckByUsername==null)
			System.out.println("No user returned for username "+userDetail.getUsername());
		userCheckByEmail = userDetailDAO.viewUserDetailByEmail(userDetail.getEmailId());
		if(userCheckByUsername!=null && userCheckByEmail!=null) {
			message = "Both username and email are already registered";
			System.out.println(message);
			m.addAttribute("message", message);
			m.addAttribute("user", userDetail);
			return "Register";			
		} else if(userCheckByUsername==null && userCheckByEmail!=null){
			message = "Email are already registered. Please login";
			System.out.println(message);
			m.addAttribute("message", message);
			m.addAttribute("user", userDetail);
			return "Register";
		}else if(userCheckByUsername!=null && userCheckByEmail==null){
			message = "Username already exists. Please try with a different username";
			System.out.println(message);
			m.addAttribute("message", message);
			m.addAttribute("user", userDetail);
			return "Register";
		} else {
			userDetailDAO.addUserDetail(userDetail);
			System.out.println("New User Added!");
			List<UserDetail> userList = userDetailDAO.listUserDetails();
			m.addAttribute("userList", userList);
			return "viewUsersList";
		}		
	}
	
	@RequestMapping(value="/deleteUser/{username}", method=RequestMethod.GET)
	public String deleteUserDetails(@PathVariable("username")String username, Model m) {
		UserDetail user = userDetailDAO.viewUserDetailByUsername(username);
		userDetailDAO.deleteUserDetail(user);
		List<UserDetail> userList = userDetailDAO.listUserDetails();
		m.addAttribute("userList", userList);
		return "viewUsersList";
	}
	
	@RequestMapping(value="/signIn",method=RequestMethod.POST)
	public String checkLoginCredentials(@ModelAttribute("user") UserDetail userDetail,Model m) {
		String enteredValue = userDetail.getUsername();
		String password = userDetail.getPassword();
		UserDetail userFromDB = null;
		
		if(enteredValue.contains("@"))
			userFromDB = userDetailDAO.viewUserDetailByEmail(enteredValue);
		else
			userFromDB = userDetailDAO.viewUserDetailByUsername(enteredValue);
		
		String message = null;
		if(userFromDB==null) {
			message = "No such user exists. Please check your user ID/Email or Sign up";
			m.addAttribute("user", userDetail);
			m.addAttribute("message", message);
			return "Login";
		}
		else {
			if(!(userFromDB.getPassword().equals(password))) {
				message = "Password is incorrect. Please try again!";
				m.addAttribute("user", userDetail);
				m.addAttribute("message", message);
				return "Login";
			}
			else {
				m.addAttribute("username",userFromDB.getName());
				return "index";
			}				
		}
	}	
}
