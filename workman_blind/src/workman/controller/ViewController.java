package workman.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lombok.extern.slf4j.Slf4j;
import workman.model.CompanyDAO;
import workman.model.WorkmanService;

@Slf4j
@WebServlet("/make")
public class ViewController extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		String command = request.getParameter("command");
		
		if(command != null) {
			if(command.equals("add")) {
				ViewAction action = ViewAction.getInstance();
				action.service(request, response);
			}
		}
	}
}
