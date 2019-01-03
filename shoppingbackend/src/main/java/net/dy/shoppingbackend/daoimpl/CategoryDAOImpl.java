package net.dy.shoppingbackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import net.dy.shoppingbackend.dao.CategoryDAO;
import net.dy.shoppingbackend.dto.Category;

@Repository("categoryDAO")
@Transactional
public class CategoryDAOImpl implements CategoryDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public static List<Category> catagories = new ArrayList<Category>();
	
	static {
		
		Category catagory =  new Category();
		catagory.setId(1);
		catagory.setName("Television");
		catagory.setDescription("Television");
		catagory.setImageURL("cat1_img");
		catagory.setActive(true);
		catagories.add(catagory);
		
		catagory =  new Category();
		catagory.setId(2);
		catagory.setName("Laptop");
		catagory.setDescription("Laptop");
		catagory.setImageURL("cat2_img");
		catagory.setActive(true);
		
		catagories.add(catagory);
		
		catagory =  new Category();
		catagory.setId(3);
		catagory.setName("Mobile");
		catagory.setDescription("Mobile");
		catagory.setImageURL("cat3_img");
		catagory.setActive(true);

        catagories.add(catagory);
		
	}

	public List<Category> list() {
		// TODO Auto-generated method stub
		return catagories;
	}

	public Category get(int id) {
		
		for(Category cat : catagories) {
			
			if(cat.getId() == id) {
				
				return cat;
			}
			
		}
       return  null;
		//return sessionFactory.getCurrentSession().get(Category.class, Integer.valueOf(id));

	}

	public boolean add(Category category) {
		// TODO Auto-generated method stub
		try {
			// add the category to the database table
			sessionFactory.getCurrentSession().persist(category);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	/*@Autowired
	private SessionFactory sessionFactory;
*/
	

	/*
	 * Getting single category based on id
	 
	@Override
	public Category get(int id) {

		return sessionFactory.getCurrentSession().get(Category.class, Integer.valueOf(id));

	}

	@Override

	public boolean add(Category category) {

		try {
			// add the category to the database table
			sessionFactory.getCurrentSession().persist(category);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}

	}

	
	 * Updating a single category
	 
	@Override
	public boolean update(Category category) {

		try {
			// add the category to the database table
			sessionFactory.getCurrentSession().update(category);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean delete(Category category) {
		
		category.setActive(false);
		
		try {
			// add the category to the database table
			sessionFactory.getCurrentSession().update(category);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}*/

}
