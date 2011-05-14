package vislabExample.controller.action;

import com.opensymphony.xwork2.ActionSupport;
import vislabExample.model.bl.AdminManager;
import vislabExample.model.db.Admin;

public class LoginAdminAction extends ActionSupport {

	private static final long serialVersionUID = -983183915002226000L;

	private String username = "";
	private String password = "";
	
	public String execute() throws Exception {

	   	AdminManager adminManager = new AdminManager();
	   	Admin admin = adminManager.getAdminByPrimaryKey(getUsername());
	    
	   	if (admin == null) {
			addActionError(getText("Benutzername nicht bekannt."));
			return INPUT;
	   	}
	   	else {
			if (admin.getPassword().equals(getPassword())) {
				return SUCCESS;
			} 
			else {
				addActionError("Bitte geben Sie das richtige Passwort ein!");
				return INPUT;
			}
	   	}
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;	
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
    
    @Override
    public void validate() {

    	super.validate();
    }

}
