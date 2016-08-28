package com.niit.shopping.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shopping.model.Cart;
import com.niit.shopping.model.ProductDetails;

@Repository
@Transactional
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	SessionFactory session;

	@Override
	public void addProduct(ProductDetails productDetails) {
		session.getCurrentSession().save(productDetails);

	}

	@Override
	public void updateProduct(ProductDetails productDetails) {
		session.getCurrentSession().update(productDetails);

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProductDetails> listProducts() {

		return (List<ProductDetails>) session.getCurrentSession().createQuery("from ProductDetails").list();

	}

	@Override
	public ProductDetails getProductById(int product_id) {

		return (ProductDetails) session.getCurrentSession().get(ProductDetails.class, product_id);
	}

	@Override
	public void removeProduct(int product_id) {
		session.getCurrentSession().delete(getProductById(product_id));

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProductDetails> listBrands() {

		return (List<ProductDetails>) session.getCurrentSession()
				.createQuery("select distinct product_brand from ProductDetails").list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProductDetails> getProductByBrand(String product_brand) {
		String hql = "from ProductDetails where product_brand=" + "'" + product_brand + "'";
		Query query = session.getCurrentSession().createQuery(hql);
		List<ProductDetails> getProductByBrand = (List<ProductDetails>) query.list();
		return getProductByBrand;

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProductDetails> getViewProductById(int product_id) {
		String hql = "from ProductDetails where product_id=" + "'" + product_id + "'";
		Query query = session.getCurrentSession().createQuery(hql);
		List<ProductDetails> getViewProductById = (List<ProductDetails>) query.list();
		return getViewProductById;

	}

	@Override
	public void addCartProduct(Cart cart) {
		session.getCurrentSession().save(cart);
		

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Cart> getCartByUser(String username) {
		String hql = "from Cart where user_firstname=" + "'" + username + "'";
		Query query = session.getCurrentSession().createQuery(hql);
		List<Cart> getCartByUser = (List<Cart>) query.list();
		return getCartByUser;
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public double getTotalPrice(String username) {
		String hql = "select sum(productPrice) from Cart where user_firstname=" + "'" + username + "'";
		Query query = session.getCurrentSession().createQuery(hql);
		double sum=  (double) query.uniqueResult();
		return sum;

		
	}

	@Override
	public void removeCartProduct(int cart_id) {
	
		session.getCurrentSession().delete(getCartById(cart_id));
	}

	
	@Override
	public Cart getCartById(int cart_id) {

		return (Cart) session.getCurrentSession().get(Cart.class, cart_id);
	}

	@Override
	public void clearall(String username) {
		  session.getCurrentSession().createQuery("delete from Cart where user_firstname="+"'"+username+"'");
		
	}
}
