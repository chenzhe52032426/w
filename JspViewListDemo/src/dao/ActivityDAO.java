package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DBHelper;
import entity.ActivityInfo;

public class ActivityDAO {


	
	public ArrayList<ActivityInfo> getAllItems() {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		ArrayList<ActivityInfo> list = new ArrayList<ActivityInfo>(); // 商品集合
		try {
			conn = DBHelper.getConnection();
			String sql = "select * from activity;"; // SQL语句
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while (rs.next()) {
				ActivityInfo activity = new ActivityInfo();
				activity.setName(rs.getString("name"));
				activity.setPicture(rs.getString("picture"));
				activity.setPrice(rs.getInt("price"));
				activity.setData(rs.getString("data"));
				activity.setHref(rs.getString("href"));
				list.add(activity);// 把一个商品加入集合
			}
			return list; // 返回集合。
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		} finally {
			// 释放数据集对象
			if (rs != null) {
				try {
					rs.close();
					rs = null;
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
			// 释放语句对象
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
}
