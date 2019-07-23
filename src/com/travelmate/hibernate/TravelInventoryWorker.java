package com.travelmate.hibernate;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.*;
import org.hibernate.criterion.Restrictions;

public class TravelInventoryWorker {

	
	public static String addTravelInventory(TravelInventory ti)
	{
		String result="";
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction t=s.beginTransaction();
			s.save(ti);
			System.out.println(ti.getTravelName());
			System.out.println(ti.getUserName());
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
	
	public static String updateTravelInventory(TravelInventory ti)
	{
		String result="";
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction t=s.beginTransaction();
			s.update(ti);
			System.out.println(ti.getProductCategory());
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
	
	public static String deleteTravelInventory(TravelInventory ti)
	{
		String result="";
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction t=s.beginTransaction();
			s.delete(ti);
			System.out.println(ti.getProductCategory());
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
	
	public static TravelInventory getTravelInventoryByUserNameAndTravelName(String UserName,String TravelName)
	{
		TravelInventory ti=new TravelInventory();
		
		try
		{
			Session s=DatabaseConnector.getSession();
			Criteria c=s.createCriteria(TravelInventory.class);
			c.add(Restrictions.eq("UserName", UserName));
			c.add(Restrictions.eq("TravelName", TravelName));
			c.add(Restrictions.eq("Id", ti.getId()));
			ti=(TravelInventory) c.uniqueResult();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return ti;
	}
	
	
	
	
	
	
	public static List<TravelInventory> getAllTravelInventory()
	{ 
		TravelInventory ti=new TravelInventory();
		
		List<TravelInventory> list=new ArrayList<>();
		
		try
		{
			Session s=DatabaseConnector.getSession();
			Criteria c=s.createCriteria(TravelInventory.class);
			list=c.list();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();											
		}
		
		return list;
	}
	
	
	
	
	public static List<TravelInventory> getAllBagPack(String UserName,String TravelName)
	{
        TravelInventory ti=new TravelInventory();
		
		List<TravelInventory> list=new ArrayList<>();
		
	    try
	    {
	    	Session s=DatabaseConnector.getSession();
			Criteria c=s.createCriteria(TravelInventory.class);
			c.add(Restrictions.eq("UserName",UserName)).add(Restrictions.eq("TravelName", TravelName));
			System.out.println(UserName);
			System.out.println(TravelName);
	        list  = c.list();
	    }
	    catch(Exception e)
	    {
	    	e.printStackTrace();
	    }
	 return list;
	}
	
	public static List<TravelInventory> getAllTravelInventoryByUserName(String UserName,String TravelName)
	{ 
		TravelInventory ti=new TravelInventory();
		
		List<TravelInventory> list=new ArrayList<>();
		
		try
		{
			Session s=DatabaseConnector.getSession();
			Criteria c=s.createCriteria(TravelInventory.class);
			c.add(Restrictions.eq("UserName",UserName)).add(Restrictions.eq("TravelName", TravelName));;
		//	TravelInventory t= (TravelInventory) c.uniqueResult();
			System.out.println(UserName);
			System.out.println(TravelName);
			list=c.list();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();											
		}
		
		return list;
	}
	
	
}