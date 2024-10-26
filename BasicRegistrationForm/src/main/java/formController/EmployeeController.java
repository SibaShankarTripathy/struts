package formController;

import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import formBeans.Employee;

//Step-5 This is Controller class which is extends Action class
public class EmployeeController extends Action {
	
	public EmployeeController(){
		System.out.println("Constructor of EmployeeController");
	}
	
	@Override
	public ActionForward execute(ActionMapping am, ActionForm bean, HttpServletRequest req, HttpServletResponse res) {
		Employee emp = (Employee) bean;
		System.out.println("You entered ID: "+emp.getId());
		System.out.println("You entered Name: "+emp.getName());
		System.out.println("You selected Gender: "+emp.getGender());
		System.out.println("You entered Email: "+emp.getEmail());
		System.out.println("You entered Address: "+emp.getAddress());
		System.out.println("You selected hobbies: "+ Arrays.toString(emp.getHobbies()));
		System.out.println("MultipleRequestHandler: "+emp.getMultipartRequestHandler());
		System.out.println("ServletWrapper : "+emp.getServletWrapper());
		
		//This "success" name same as struts-config.xml -> action-mappings -> action -> forward tag name="success".
		//Then only it will route that success page.
		return am.findForward("ess");
	}
}
