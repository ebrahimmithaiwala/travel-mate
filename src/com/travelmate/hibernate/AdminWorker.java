package com.travelmate.hibernate;

import java.util.ArrayList;

import java.util.List;

import org.hibernate.*;
import org.hibernate.criterion.Restrictions;


public class AdminWorker {

	
	public static String addAdmin(Admin a)
	{
		String result="";
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction t=s.beginTransaction();
			s.save(a);
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
	
	public static String updateAdmin(Admin a)
	{
		String result="";
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction t=s.beginTransaction();
			s.update(a);
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
	
	public static String deleteAdmin(Admin a)
	{
		String result="";
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction t=s.beginTransaction();
			s.delete(a);
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
	
	public static Admin getAdminById(int id)
	{
		Admin a=null;
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction tx=s.beginTransaction();
			a=(Admin)s.get(Admin.class,new Integer(id));
			tx.commit();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return a;
	}
	
	public static List<Admin> getAllAdmin()
	{
		List<Admin> list=new ArrayList<>();
		try
		{
			Session s=DatabaseConnector.getSession();
			Criteria c=s.createCriteria(Admin.class);
			list=c.list();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return list;
	}
	
	public static String adminLogin(Admin a)
	{
		String result="";
		try
		{
			
	  Session s=DatabaseConnector.getSession();
	  Criteria c=s.createCriteria(Admin.class);
	  
	  c.add(Restrictions.eq("AdminUserName",a.getAdminUserName()));
	 
	  Admin ad= (Admin) c.uniqueResult();
	  if(a.getAdminPassword().equals(ad.AdminPassword) )
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
	
	public static Admin getAdminByAdminUserName(String AdminUserName)
	{
		Admin a=new Admin();
		
		try
		{
			Session s=DatabaseConnector.getSession();
			Criteria c=s.createCriteria(User.class);
			c.add(Restrictions.eq("AdminUserName", AdminUserName));
			
			a=(Admin) c.uniqueResult();
            System.out.println(a.getAdminUserName());
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return a;
	}
}
