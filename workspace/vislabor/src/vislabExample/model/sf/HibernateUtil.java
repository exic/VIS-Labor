package vislabExample.model.sf;

import org.hibernate.cfg.*;
//import org.hibernate.HibernateException;
//import org.hibernate.Session;
import org.hibernate.SessionFactory;


/**
 * To change the template for this generated type comment go to
 * Window&gt;Preferences&gt;Java&gt;Code Generation&gt;Code and Comments
 */


public class HibernateUtil {



		private static final SessionFactory sessionFactory;

		static {
			try {
	            // Create the SessionFactory from hibernate.cfg.xml
				sessionFactory = new Configuration().configure().buildSessionFactory();
				System.out.println("Initial SessionFactory creation");
			} catch (Throwable ex) {
				System.out.println("Initial SessionFactory creation failed." + ex);
				throw new ExceptionInInitializerError(ex);
			}
		}

		public static SessionFactory getSessionFactory() {
	        return sessionFactory;
	    }

}
