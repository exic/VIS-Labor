package vislabExample.model.bl;

import org.hibernate.Session;
import vislabExample.model.db.Category;
import vislabExample.model.sf.HibernateUtil;

public class CategoryManager {
	
	public Category getCategoryByPrimaryKey(String primaryKey) {
	    Session session = HibernateUtil.getSessionFactory().getCurrentSession();
	    session.beginTransaction();
	    Category category = (Category) session.get(Category.class, primaryKey);
	    session.getTransaction().commit();
	    return category;
	}

	public void saveCategory(Category category) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
  	    session.beginTransaction();
		session.save(category);
        session.getTransaction().commit();
    }
	
	public void deleteCategory(Category category) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
  	    session.beginTransaction();
		session.delete(category);
        session.getTransaction().commit();
    }

}
