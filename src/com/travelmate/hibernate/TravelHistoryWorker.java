package com.travelmate.hibernate;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.*;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

public class TravelHistoryWorker {

	
	public static String addTravelHistory(TravelHistory th)
	{
		String result="";
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction t=s.beginTransaction();
			s.save(th);
			System.out.println(th.getTravelName());
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
	
	public static String updateTravelHistory(TravelHistory th)
	{
		String result="";
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction t=s.beginTransaction();
			s.update(th);
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
	
	public static String deleteTravelHistory(TravelHistory th)
	{
		String result="";
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction t=s.beginTransaction();
			s.delete(th);
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
	
	
	
	public static List<TravelHistory> getAllTravelHistory()
	{
		List<TravelHistory> list=new ArrayList<>();
		try
		{
			Session s=DatabaseConnector.getSession();
			Criteria c=s.createCriteria(TravelHistory.class);
			list=c.list();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return list;
	}
	
	public static TravelHistory getTravelHistoryByTravelNameAndUserName(String TravelName,String UserName)
	{
		TravelHistory th=new TravelHistory();
		
		try
		{
			Session s=DatabaseConnector.getSession();
			Criteria c=s.createCriteria(TravelHistory.class);
			c.add(Restrictions.eq("UserName", UserName));
			c.add(Restrictions.eq("TravelName", TravelName));
			th=(TravelHistory) c.uniqueResult();
            System.out.println(th.getUserName());
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return th;
	}
	
	public static List<TravelHistory> getAllTravelHistoryByUserName(String UserName)
	{
		List<TravelHistory> list=new ArrayList<>();
		try
		{
			Session s=DatabaseConnector.getSession();
			Criteria c=s.createCriteria(TravelHistory.class);
			c.add(Restrictions.eq("UserName", UserName));
			list=c.list();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return list;
	}
	public static int getTopTravelHistoryScore(String username){
		int score = 0;
		try{
			Session s = DatabaseConnector.getSession();
			Criteria c = s.createCriteria(TravelHistory.class);
			c.add(Restrictions.eq("UserName", username));
			c.setProjection(Projections.rowCount());
			score = (int) c.uniqueResult();
		}catch(Exception e){
			e.printStackTrace();
		}
		return score;
	}
}
