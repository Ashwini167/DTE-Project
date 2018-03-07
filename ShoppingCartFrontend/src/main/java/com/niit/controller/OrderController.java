package com.niit.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.niit.dao.CartItemDAO;
import com.niit.model.CartItem;

@Controller
public class OrderController {
	@Autowired
	CartItemDAO cartItemDAO;
	
	@RequestMapping("/confirmOrder")
	public String confirmOrder(HttpSession session, Model m) {
		String username = (String)session.getAttribute("username");
		List<CartItem> listCartItems = cartItemDAO.listCartItems(username);
		m.addAttribute("listCartItems", listCartItems);
		m.addAttribute("grandTotal", this.calculateGrandTotal(listCartItems));
		return "orderConfirm";
	}

	private float calculateGrandTotal(List<CartItem> listCartItems) {
		float grandTotal =0.0f;
		for(CartItem cart:listCartItems) {
			grandTotal = grandTotal + cart.getSubTotal();
		}
		return grandTotal;
	}	
}
