package com.niit.shopping.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.web.servlet.configuration.EnableWebMvcSecurity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopping.model.Cart;
import com.niit.shopping.model.ProductDetails;
import com.niit.shopping.model.UserDetails;
import com.niit.shopping.service.ProductService;
import com.niit.shopping.service.RegisterService;


@Controller
public class HomeController {
	
	@Autowired
	ProductService productService;
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Autowired
	RegisterService registerService;
	
	@RequestMapping("/")
	public String index(HttpSession session) {
		session.setAttribute("listBrands", productService.listBrands());
		return "index";
	}

	
	/*
	 * @RequestMapping(value = "/login") public String getlogin() { return
	 * "login"; }
	 */

	/*
	 * @RequestMapping(value = "/submit") public String submit() { return
	 * "index"; }/*
	 * 
	 * /*@RequestMapping(value = "/signup") public String signup() { return
	 * "index"; }
	 */
	@RequestMapping("/index")
	public String home(HttpSession session) {
		session.setAttribute("listBrands", productService.listBrands());
		return "index";
	}
	

	@RequestMapping(value ="/brand/{product_brand}")
	public ModelAndView brand(@PathVariable("product_brand") String product_brand,HttpSession session,Model model) {
		session.setAttribute("brand",productService.getProductByBrand(product_brand));
		return new ModelAndView("brand");
		
	}
	
	@RequestMapping("/addtocart/{product_id}")
	public String addtocart(@PathVariable("product_id") int product_id,Principal activeuser) {
		
		ProductDetails productDetails=(productService.getProductById(product_id));
		
		System.out.println(activeuser.getName());
		UserDetails userDetails=registerService.getUserByUsername(activeuser.getName());
		
		
		
		Cart cart=new Cart();
		cart.setUserDetails(userDetails);
		cart.setProductName(productDetails.getProduct_name());
		cart.setProductbrand(productDetails.getProduct_brand());
		cart.setProductPrice(productDetails.getProduct_price());
		cart.setImagename(productDetails.getImage_name());
		cart.setProduct_id(productDetails.getProduct_id());
		
		cart.setQuantity(1);
		
		productService.addCartProduct(cart);
		
		
		return "brand";

	}
	
	@RequestMapping("/mycart/{userPrincipal.name}")
	public String viewmycart(@PathVariable("userPrincipal.name") String username,HttpSession session){
		
		
		session.setAttribute("totalamount",(productService.getTotalPrice(username)));
		
		session.setAttribute("cartlist",productService.getCartByUser(username));
		return "mycart";
	}
	
	@RequestMapping("/removecartproduct/{cart_id}")
	public String removefromcart(@PathVariable("cart_id") int cart_id,Principal activeuser,HttpSession session) {
		
		productService.removeCartProduct(cart_id);
		session.setAttribute("totalamount",(productService.getTotalPrice(activeuser.getName())));
		session.setAttribute("cartlist",productService.getCartByUser(activeuser.getName()));
		
		return "mycart";
		
	}
	
	@RequestMapping("/clearall/{userPrincipal.name}")
	public String clearall(@PathVariable("userPrincipal.name") String username,HttpSession session) {
		
		productService.clearall(username);
		session.setAttribute("totalamount",(productService.getTotalPrice(username)));
		session.setAttribute("cartlist",productService.getCartByUser(username));
		return "mycart";
	}
	
	@RequestMapping("/view/{product_id}")
	public ModelAndView editProduct(@PathVariable("product_id") int product_id,HttpSession session) {
		session.setAttribute("viewproduct",productService.getViewProductById(product_id));
		return new ModelAndView("viewproduct");
	}
	
	@RequestMapping(value = "/shippingaddress")
	public String shippingaddress() {
		return "shippingaddress";
	}
	
	/*@RequestMapping(value = "/viewall")
	public String viewall() {
		return "viewall";
	}*/
	
	@RequestMapping(value = "/motobrand")
	public String motobrand() {
		return "motobrand";
	}

	@RequestMapping(value = "/sportwatch")
	public String sportwatch() {
		return "sportwatch";
	}

	@RequestMapping(value = "/huaweibrand")
	public String huaweibrand() {
		return "huaweibrand";
	}

	@RequestMapping(value = "/asusbrand")
	public String asusbrand() {
		return "asusbrand";
	}

	@RequestMapping(value = "/samsungbrand")
	public String samsungbrand() {
		return "samsungbrand";
	}

	@RequestMapping(value = "/intex")
	public String intex() {
		return "intex";
	}

	@RequestMapping(value = "/samsung")
	public String samsung() {
		return "samsung";
	}

	@RequestMapping(value = "/alcatel")
	public String alcatel() {
		return "alcatel";
	}

	@RequestMapping(value = "/apple")
	public String apple() {
		return "apple";
	}

	@RequestMapping(value = "/asus")
	public String asus() {
		return "asus";
	}

	@RequestMapping(value = "/sony")
	public String sony() {
		return "sony";
	}
	
	@RequestMapping(value = "/manage")
	public String manage() {
		return "manage";
	}
	
	@RequestMapping(value = "/loginerror")
	public String loginerror() {
		return "loginerror";
	}
	
	@RequestMapping(value = "/403")
	public String loginerror403() {
		return "403";
	}
	
	/*ProductDetails productDetails=new ProductDetails();
	productDetails.setCartlist(productService.addtocart(product_id));
	session.setAttribute("cartlist",productService.addtocart(product_id));
	
	return "mycart";*/
	
	/*@RequestMapping(value = "/admin")
	public String admin() {
		return "admin";
	}*/
}
