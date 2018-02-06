package com.niit.dao;

import com.niit.model.Category;

public interface CategoryDAO {
		public boolean addCategory(Category category);
		public Category getCategory(int categoryId);
		//deleteCategory()
		//updateCategory()
		//listCategories()
}
