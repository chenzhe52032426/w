package servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.GoodsinfoDAO;
import entity.Goodsinfo;

public class test extends HttpServlet {

	public test() {
		// TODO Auto-generated constructor stub
	}
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
			
			doPost(req, resp);
}
	
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {

	req.setCharacterEncoding("utf-8");
	
			Goodsinfo goodsinfo = new Goodsinfo();
			 String title;
			 String description;
//			 String image;
//			 Date createDate;
		
//			 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			 
			 
			 try {
			 	title= req.getParameter("title");
			 	description= req.getParameter("description");
//			 	image= req.getParameter("image");
//				createDate = sdf.parse(req.getParameter("createDate"));
			
			 
				 goodsinfo.setTitle(title);
				 goodsinfo.setDescription(description);
//				 goodsinfo.setImage(image);
//				 goodsinfo.setCreateDate(createDate);
				 
				 GoodsinfoDAO g = new GoodsinfoDAO();
				 g.addGoodsinfo(goodsinfo);
				 
			 //保存到session
				 req.getSession().setAttribute("EditGoodsInfo", goodsinfo);
				 System.out.println(title);

				 req.getRequestDispatcher("../JSP/goodsinfo.jsp").forward(req, resp);
				 
			
			 
			 } catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			 	
			 
}	
	
}
