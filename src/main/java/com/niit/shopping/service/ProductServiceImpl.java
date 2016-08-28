package com.niit.shopping.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shopping.dao.ProductDAO;
import com.niit.shopping.model.Cart;
import com.niit.shopping.model.ProductDetails;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired ProductDAO productDAO;
	
	@Transactional
	public void addProduct(ProductDetails productDetails) {
		productDAO.addProduct(productDetails);

	}

	@Transactional
	public void updateProduct(ProductDetails productDetails) {
		productDAO.updateProduct(productDetails);

	}

	@Transactional
	public List<ProductDetails> listProducts() {
		
		return productDAO.listProducts();
	}

	@Transactional
	public ProductDetails getProductById(int product_id) {
		
		return productDAO.getProductById(product_id);
	}

	@Transactional
	public void removeProduct(int product_id) {
		productDAO.removeProduct(product_id);

	}

	@Override
	public List<ProductDetails> listBrands() {
		
		return productDAO.listBrands();
	}

	@Override
	public List<ProductDetails> getProductByBrand(String product_brand) {
		
		return productDAO.getProductByBrand(product_brand);
	}
	
	@Override
	public List<ProductDetails> getViewProductById(int product_id) {
		
		return productDAO.getViewProductById(product_id);
	}



	/*@Override
	public void addcart(int product_id) {
		 productDAO.addcart(product_id);
		
	}*/

	@Override
	public void addCartProduct(Cart cart) {
		productDAO.addCartProduct(cart);
		
	}

	@Override
	public List<Cart> getCartByUser(String username) {
		
		return productDAO.getCartByUser(username);
	}

	@Override
	public double getTotalPrice(String username) {
		
		return productDAO.getTotalPrice(username);
	}

	@Override
	public void removeCartProduct(int cart_id) {
		
		productDAO.removeCartProduct(cart_id);
	}

	@Override
	public Cart getCartById(int cart_id) {
		
		return productDAO.getCartById(cart_id);
	}

	@Override
	public void clearall(String username) {
		productDAO.clearall(username);
		
	}

	

}
