package com.niit.shopping.dao;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shopping.model.ProductDetails;
import com.niit.shopping.model.UserDetails;
import com.niit.shopping.model.UserRole;



@Repository
@Transactional
public class RegisterDAOImpl implements RegisterDAO {
	
	@Autowired(required=true)
	SessionFactory sessionFactory;
	

@Override
public void saveOrUpdate(UserDetails userDetails){
	userDetails.setEnabled(true);
	UserRole role=new UserRole();
	role.setUserDetails(userDetails);
	role.setRole("ROLE_USER");
	sessionFactory.getCurrentSession().save(role);
	sessionFactory.getCurrentSession().save(userDetails);
}


@Override
public UserDetails getUserByUsername(String user_firstname) {
	return (UserDetails) sessionFactory.getCurrentSession().get(UserDetails.class, user_firstname);
	
}
}
