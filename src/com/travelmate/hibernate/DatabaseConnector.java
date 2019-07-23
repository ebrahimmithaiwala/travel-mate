package com.travelmate.hibernate;

import org.hibernate.*;
import org.hibernate.cfg.*;
import javax.persistence.*;
public class DatabaseConnector {

	private static SessionFactory sf=null;
	public static Session getSession()
	{
	Session s=null;
	try
	{
		
		SessionFactory sf=new AnnotationConfiguration().configure("hibernate.cfg.xml").buildSessionFactory();
		s=sf.openSession();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return s;
	}
}
