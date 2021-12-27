package kr.co.rfy.Search.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.rfy.Search.Service.SearchService;
import kr.co.rfy.Search.Service.SearchServiceImpl;

/**
 * Servlet implementation class SearchRecipe
 */
@WebServlet("/search/recipe.do")
public class SearchRecipe extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchRecipe() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
int currentPage;
		
		if(request.getParameter("currentPage")==null)
		{
			//즉, index.jsp에서 해당 게시판으로 이동하는 경우에는 가장 첫페이지만 1page로 셋팅 
			currentPage=1;
		}else {
		
	       currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		//키워드를 가져와야한다.
		
		//인코딩
		request.setCharacterEncoding("UTF-8");
		
		String keyword = request.getParameter("keyword");
		
		String type = "";
		if(request.getParameter("type") == null)
		{
			 type = "latest";
		}else {
			 type = request.getParameter("type");
		}
		
		//type이 latest 오느냐 아니면 like 오느냐 
		
		
		SearchService sService = new SearchServiceImpl();
		HashMap<String,Object> map = sService.selectSearchPost(currentPage,keyword,type); 
		
		RequestDispatcher view = request.getRequestDispatcher("/views/search/IntegratedSearchMain.jsp");
		
		request.setAttribute("pageDataMap", map);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("keyword", keyword);
		request.setAttribute("type", type);
		
	
	
		
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
