package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.imooc.db.DBUtil;
import com.imooc.model.Goddess;

import util.DBHelper;
import entity.Goodsinfo;

//��Ʒ��ҵ���߼���
public class GoodsinfoDAO {

	// ������е���Ʒ��Ϣ
	public ArrayList<Goodsinfo> getAllGoodsinfo() {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		ArrayList<Goodsinfo> list = new ArrayList<Goodsinfo>(); // ��Ʒ����
		try {
			conn = DBHelper.getConnection();
			String sql = "select * from items;"; // SQL���
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while (rs.next()) {
				Goodsinfo item = new Goodsinfo();
//				item.setId(rs.getInt("id"));
//				item.setName(rs.getString("name"));
//				item.setCity(rs.getString("city"));
//				item.setNumber(rs.getInt("number"));
//				item.setPrice(rs.getInt("price"));
//				item.setPicture(rs.getString("picture"));
//				list.add(item);// ��һ����Ʒ���뼯��
			}
			return list; // ���ؼ��ϡ�
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		} finally {
			// �ͷ����ݼ�����
			if (rs != null) {
				try {
					rs.close();
					rs = null;
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
			// �ͷ�������
			if (stmt != null) {
				try {
					stmt.close();
					stmt = null;
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
		}

	}

	// ������Ʒ��Ż����Ʒ����
	public Goodsinfo getGoodsinfoById(int id) {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			conn = DBHelper.getConnection();
			String sql = "select * from items where id=?;"; // SQL���
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, id);
			rs = stmt.executeQuery();
			if (rs.next()) {
				Goodsinfo item = new Goodsinfo();
//				item.setId(rs.getInt("id"));
//				item.setName(rs.getString("name"));
//				item.setCity(rs.getString("city"));
//				item.setNumber(rs.getInt("number"));
//				item.setPrice(rs.getInt("price"));
//				item.setPicture(rs.getString("picture"));
				return item;
			} else {
				return null;
			}

		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		} finally {
			// �ͷ����ݼ�����
			if (rs != null) {
				try {
					rs.close();
					rs = null;
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
			// �ͷ�������
			if (stmt != null) {
				try {
					stmt.close();
					stmt = null;
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}

		}
	}
	//��ȡ��������ǰ������Ʒ��Ϣ
	public ArrayList<Goodsinfo> getViewList(String list)
	{
		System.out.println("list:"+list);
		ArrayList<Goodsinfo> itemlist = new ArrayList<Goodsinfo>();
		int iCount=5; //ÿ�η���ǰ������¼
		if(list!=null&&list.length()>0)
		{
		    String[] arr = list.split(",");
		    System.out.println("arr.length="+arr.length);
		    //�����Ʒ��¼���ڵ���5��
		    if(arr.length>=5)
		    {
		       for(int i=arr.length-1;i>=arr.length-iCount;i--)
		       {
		    	  itemlist.add(getGoodsinfoById(Integer.parseInt(arr[i])));  
		       }
		    }
		    else
		    {
		    	for(int i=arr.length-1;i>=0;i--)
		    	{
		    		itemlist.add(getGoodsinfoById(Integer.parseInt(arr[i])));
		    	}
		    }
		    return itemlist;
		}
		else
		{
			return null;
		}
		
	}
	
	
	public void addGoodsinfo(Goodsinfo item) throws Exception{
		Connection conn = null;
		conn = DBHelper.getConnection();
		String sql="" +
				"insert into items" +
				"(name,city,picture" +
				")" +
				"values(" +
				"?,?,?)";
		PreparedStatement ptmt=conn.prepareStatement(sql);
		
		ptmt.setString(1, item.getTitle());
		ptmt.setString(2, item.getDescription());
		ptmt.setString(3,item.getImage());
		ptmt.execute();
	}
	
	

}
