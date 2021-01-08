package workman.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lombok.extern.slf4j.Slf4j;
import workman.model.ParttimeEvalDAO;

@Slf4j
public class ViewAction {

	private static ViewAction instance = new ViewAction();
	private ViewAction() {};
	public static ViewAction getInstance() {
		return instance;
	}
	
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "view/error.jsp";
		
		try {
			request.setAttribute("add", ParttimeEvalDAO.getAllPTEval());
			url = "form.jsp";
		} catch (Exception s) {
			request.setAttribute("msg", s.getMessage());
			log.info("폼 보여주기 실패");
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
}
