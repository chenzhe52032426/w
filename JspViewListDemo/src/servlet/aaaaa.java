package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.GoodsinfoDAO;
import entity.Goodsinfo;

public class aaaaa extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public aaaaa() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
      doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Goodsinfo goodsinfo = new Goodsinfo();
		 String title;
		 String description;
//		 String image;
//		 Date createDate;
	
//		 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		 
		 
		 try {
		 	title= request.getParameter("title");
		 	description= request.getParameter("description");
//		 	image= req.getParameter("image");
//			createDate = sdf.parse(req.getParameter("createDate"));
		    String image =request.getSession().getAttribute("name").toString();
		    System.out.println(image);
			 goodsinfo.setTitle(title);
			 goodsinfo.setDescription(description);
			 goodsinfo.setImage(image);
//			 goodsinfo.setCreateDate(createDate);
			 
			 GoodsinfoDAO g = new GoodsinfoDAO();
			 g.addGoodsinfo(goodsinfo);
			 
		 //保存到session
			 request.getSession().setAttribute("EditGoodsInfo", goodsinfo);
			 System.out.println(title);

			 request.getRequestDispatcher("/JSP/goodsinfo.jsp").forward(request, response);
			 
			 System.out.println(title);
		 
		 } catch (Exception e) {	
				// TODO Auto-generated catch block
			 System.out.println("exception");
				e.printStackTrace();
			}
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
