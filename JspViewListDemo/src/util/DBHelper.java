package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ArrayList;

import dao.ItemsDAO;
import entity.Items;

public class DBHelper {
   
	private static final String driver = "com.mysql.jdbc.Driver"; //��ݿ���
	//������ݿ��URL��ַ
	private static final String url="jdbc:mysql://123.57.228.75/imooc?useUnicode=true&characterEncoding=UTF-8"; 
	private static final String username="root";//��ݿ���û���
	private static final String password="admin";//��ݿ������
    
	private static Connection conn=null;
	
	//��̬����鸺�������
	static 
	{
		try
		{
			Class.forName(driver);
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	
	//����ģʽ������ݿ����Ӷ���
	public static Connection getConnection() throws Exception
	{
		if(conn==null)
		{
			conn = DriverManager.getConnection(url, username, password);
			return conn;
		}
		return conn;
	}
	
	public static void main(String[] args) {
			 ItemsDAO itemsDao = new ItemsDAO(); 
         ArrayList<Items> list = itemsDao.getAllItems();
//         System.out.println("a");
       
             for(int i=0;i<list.size();i++)
             {
                Items item = list.get(i);
		         System.out.println(item.getName());
		
             }
            
		
	}
}
