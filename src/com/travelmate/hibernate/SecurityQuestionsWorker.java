package com.travelmate.hibernate;

import java.util.ArrayList;

import java.util.List;

import org.hibernate.*;


public class SecurityQuestionsWorker {

	
	public static String addSecurityQuestions(SecurityQuestions sq)
	{
		String result="";
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction t=s.beginTransaction();
			s.save(sq);
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
	
	
	public static String deleteSecurityQuestions(SecurityQuestions sq)
	{
		String result="";
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction t=s.beginTransaction();
			s.delete(sq);
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
	
	public static SecurityQuestions getSecurityQuestionsById(int id)
	{
		SecurityQuestions sq=null;
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction tx=s.beginTransaction();
			sq=(SecurityQuestions)s.get(SecurityQuestions.class,new Integer(id));
			tx.commit();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return sq;
	}
	
	public static List<SecurityQuestions> getAllSecurityQuestions()
	{
		List<SecurityQuestions> list=new ArrayList<>();
		try
		{
			Session s=DatabaseConnector.getSession();
			Criteria c=s.createCriteria(SecurityQuestions.class);
			list=c.list();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return list;
	}
}

