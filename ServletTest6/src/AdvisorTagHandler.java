

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 * Servlet implementation class AdvisorTagHandler
 */
@WebServlet("/AdvisorTagHandler")
public class AdvisorTagHandler extends SimpleTagSupport {
	private String user;

	@Override
	public void doTag() throws JspException, IOException {
		// TODO Auto-generated method stub
		getJspContext().getOut().write("Hello " + user + "<br>");
		getJspContext().getOut().write("Your advice is : "  + getAdvice());
	}
	
	public void setUser(String user) {
		this.user = user;
	}
	
	String getAdvice() {
		String[] adviceString = {"That colors'not wroking for you","you should call in sick. ", "you might want to rethink that haircut."};
		int random = (int)(Math.random() * adviceString.length);
		return adviceString[random];
	
	
	
	}

}
