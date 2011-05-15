package vislabExample.controller.action;

import com.opensymphony.xwork2.ActionSupport;
import vislabExample.model.bl.CategoryManager;
import vislabExample.model.db.Category;

public class DeleteCategoryAction extends ActionSupport {

	private static final long serialVersionUID = -3560127043064779091L;
	
	private String label = "";
	
	public String execute() throws Exception {

		CategoryManager categoryManager = new CategoryManager();
		Category category = categoryManager.getCategoryByPrimaryKey(getLabel());
	    
	   	if (category == null) {
			addActionError(getText("Kategorie existiert nicht."));
			return INPUT;
	   	}
	   	else {
			categoryManager.deleteCategory(category);	
			return SUCCESS;
	   	}
	}

    public String getLabel() { 
    	return (this.label); 
    }
    
    public void setLabel(String label) { 
    	this.label = label; 
    }
}
