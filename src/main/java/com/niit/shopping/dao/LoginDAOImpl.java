package com.niit.shopping.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shopping.dao.LoginDAO;
import com.niit.shopping.model.UserDetails;



	@Repository	
	@Transactional
	public class LoginDAOImpl implements LoginDAO {

		@Autowired(required=true)
		private SessionFactory sessionFactory;
		
		@Override
		public boolean checkUser(UserDetails u) {
			boolean isvaliduser=false;
			
			Query q=sessionFactory.openSession().createQuery("from UserDetails where user_firstname= '"+u.getUser_firstname()+"' and user_lastname='"+u.getUser_lastname()+"'");
			List<UserDetails> ul= q.list();
			int s=ul.size();
			if(s==1)
			{
				isvaliduser=true;
			}
			
			return isvaliduser;
		}
		
		

	}

