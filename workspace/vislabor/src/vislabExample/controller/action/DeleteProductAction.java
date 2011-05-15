package vislabExample.controller.action;

import com.opensymphony.xwork2.ActionSupport;
import vislabExample.model.bl.ProductManager;
import vislabExample.model.db.Product;

public class DeleteProductAction extends ActionSupport {

	private static final long serialVersionUID = -6174442812361762938L;
	
	private long id = 0;
	
	public String execute() throws Exception {

		ProductManager productManager = new ProductManager();
		Product product = productManager.getProductByPrimaryKey(getId());
	    
	   	if (product == null) {
			addActionError(getText("Produkt existiert nicht."));
			return INPUT;
	   	}
	   	else {
	   		productManager.deleteProduct(product);	
			return SUCCESS;
	   	}
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}
}
