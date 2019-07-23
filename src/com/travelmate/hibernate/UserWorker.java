package com.travelmate.hibernate;

import java.util.ArrayList;

import java.util.List;

import org.hibernate.*;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

public class UserWorker {

	
	public static String addUser(User u)
	{
		String result="";
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction t=s.beginTransaction();
			s.save(u);
			System.out.println(u.getFirstName());
			t.commit();
			result=Results.SUCCESS;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			result=Results.PROBLEM;
		}
		return result;
	}
	
	public static String updateUser(User u)
	{
		String result="";
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction t=s.beginTransaction();
			s.update(u);
			t.commit();
			result=Results.SUCCESS;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			result=Results.PROBLEM;
		}
		return result;
	}
	
	public static String deleteUser(User u)
	{
		String result="";
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction t=s.beginTransaction();
			s.delete(u);
			t.commit();
			result=Results.SUCCESS;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			result=Results.PROBLEM;
		}
		return result;
	}
	
	public static User getUserByUserName(String UserName)
	{
		User u=null;
		try
		{
			Session s=DatabaseConnector.getSession();
			Criteria c = s.createCriteria(User.class).add(Restrictions.eq("UserName", UserName));
			u =(User) c.uniqueResult();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return u;
	}
	
	public static User getUserById(int Id)
	{
		User u=null;
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction tx=s.beginTransaction();
			u=(User)s.get(User.class,new Integer(Id));
			tx.commit();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return u;
	}
	
	public static List<User> getAllUser()
	{
	 List<User> list=new ArrayList<>();
		try
		{
			Session s=DatabaseConnector.getSession();
			Criteria c=s.createCriteria(User.class);
			list=c.list();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return list;
	}
	
	
		public static String userLogin(User u)
		{
			String result="";
			try
			{
				
		  Session s=DatabaseConnector.getSession();
		  Criteria c=s.createCriteria(User.class);
		  
		  c.add(Restrictions.eq("UserName",u.getUserName()));
		 
		  User us= (User) c.uniqueResult();
		  if(u.getUserPassword().equals(us.UserPassword) )
		  {
			  result=Results.SUCCESS;
		  }
			}
			
			catch(Exception e)
			{
				e.printStackTrace();
			}
		  
		 return result;
		}
		
		
		public static User getUserPicByUserName(String UserName)
		{
			User u=new User();
			
			try
			{
				Session s=DatabaseConnector.getSession();
				Criteria c=s.createCriteria(User.class);
				c.add(Restrictions.eq("UserName", UserName));
				
				u=(User) c.uniqueResult();
	            System.out.println(u.getUserProfilePic());
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}
			return u;
		}
		
		public static String forgetPassCheck(User u)
		{
			String result="";
			
			try
			{
				
				Session s=DatabaseConnector.getSession();
				Criteria c=s.createCriteria(User.class);
				c.add(Restrictions.eq("UserEmail",u.getUserEmail()));
				 User us= (User) c.uniqueResult();
				
			    if(u.getUserEmail().equals(us.UserEmail))
			    {
			    	result=Results.SUCCESS;
			    	 System.out.println(u.getUserEmail());
			    }
			}
			
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
			return result;
		}
		

		public static String verifySecQ(User u)
		{
			String result="";
			 u=new User();
			try
			{
				Session s=DatabaseConnector.getSession();
				Criteria c=s.createCriteria(User.class);
				c.add(Restrictions.eq("SecurityAnswer",u.getSecurityAnswer()));
				 User us= (User) c.uniqueResult();
				
			    if(u.getSecurityAnswer().equals(us.SecurityAnswer))
			    {
			    	result=Results.SUCCESS;
			    	 System.out.println(u.getSecurityAnswer());
			    }
			}
			
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
			return result;
			
		}
		
		
		public static User getSecurityQuestion(String UserEmail)
		{
			User u=new User();
			
			try
			{
				Session s=DatabaseConnector.getSession();
				Criteria c=s.createCriteria(User.class);
				c.add(Restrictions.eq("UserEmail", UserEmail));
				u=(User) c.uniqueResult();
	            System.out.println(u.getSecurityQuestion());
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}
			return u;
		}
		
		/*public static String updateUserPass(User u)
		{
			String result="";
	        u=new User();
	        String UserEmail="";
	        String UserPassword="";
			try
			{
				Session s=DatabaseConnector.getSession();
				/*Transaction t=s.beginTransaction();
				u.setUserPassword(u.getUserPassword());
				s.update(u);
				
				t.commit();
	
				String hql = "UPDATE user set UserPassword =" +UserPassword+ " "+
			             "WHERE UserEmail =" +UserEmail;
			        Query query = s.createQuery(hql);
			        result=Results.SUCCESS;
				
			}
			
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
			return result;
			}*/
		
		public static int DashboardUserCount()
		{
			int cnt=0;
			
			try
			{
			    Session s=DatabaseConnector.getSession();
				Criteria c=s.createCriteria(User.class);
				c.setProjection(Projections.rowCount());
				cnt=(int) c.uniqueResult();
				
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}
			
			return cnt;
		}
		
		public static User DashboardTopUser(User u)
		{
			
			 u=new User();
			try
			{
				Session s=DatabaseConnector.getSession();
				Criteria c=s.createCriteria(User.class);
				String hql="Select DISTINCT UserName,count(travelhistory)from travelhistory" + "where MAX(count)";
				Query query = s.createQuery(hql);
				//query.setMaxResults(1);
			}
			
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
			return u;
		}
		
		public static User getTopUser()
		{
			User u = new User();
			try
			{
				Session s=DatabaseConnector.getSession();
				String username = (String) s.createQuery("select username from travelhistory group by username order by count(username) desc limit 1;").uniqueResult();
				u = UserWorker.getUserByUserName(username);
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
			return u;
		}
}


