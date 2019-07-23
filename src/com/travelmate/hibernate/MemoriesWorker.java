package com.travelmate.hibernate;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

public class MemoriesWorker {
	
	public static String addMemories(Memories m)
	{
		String result="";
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction t=s.beginTransaction();
			s.save(m);
			System.out.println(m.getTravelName());
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
	
	
	public static String deleteMemories(Memories m)
	{
		String result="";
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction t=s.beginTransaction();
			s.delete(m);
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
	
	public static List<Memories> getAllMemories(String UserName,String TravelName)
	{
		
		List<Memories> list=new ArrayList<>();
		
	    try
	    {
	    	Session s=DatabaseConnector.getSession();
			Criteria c=s.createCriteria(Memories.class);
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
	

}
