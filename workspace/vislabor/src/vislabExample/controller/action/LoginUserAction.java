package vislabExample.controller.action;

import com.opensymphony.xwork2.ActionSupport;
import vislabExample.model.bl.CustomerManager;
import vislabExample.model.db.Customer;

public class LoginUserAction extends ActionSupport {

	private static final long serialVersionUID = -983183915002226000L;

	private long id = 0;
	private String password = "";
	private String firstname = "";
	private String lastname = "";
	
	public String execute() throws Exception {

	   	CustomerManager customerManager = new CustomerManager();
		Customer customer = customerManager.getCustomerByPrimaryKey(getId());
	    
	   	if (customer == null) {
			addActionError(getText("Benutzername nicht bekannt. Haben Sie sich schon registriert?"));
			return INPUT;
	   	}
	   	else {
			if (customer.getPassword().equals(getPassword())) {
				setFirstname(customer.getFirstname());
				setLastname(customer.getLastname());	
				return SUCCESS;
			} 
			else {
				addActionError("Bitte geben Sie das richtige Passwort ein!");
				return INPUT;
			}
	   	}
	}
	
	public String getLastname() {
		return lastname;
	}
	
	private void setLastname(String lastname) {
		this.lastname = lastname;	
	}

	public String getFirstname() {
		return firstname;
	}

	private void setFirstname(String firstname) {
		this.firstname = firstname;
	}

    public long getId() { return (this.id); }
    public void setId(long id) { this.id = id; }

    public String getPassword() { return (this.password); }
    public void setPassword(String password) { this.password  = password; }

    
    @Override
    public void validate() {
    	if (id == 0){
    		addFieldError("id", "Bitte g�ltige Kundennummer eingeben!");
    	}
    	super.validate();
    }

}
