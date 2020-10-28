package com.sist.dao;

import java.util.*;
import java.sql.*;

public class WorkDAO {
	private Connection conn;
	private PreparedStatement ps;
	
	//url
	private final String URL="jdbc:oracle:thin:@211.238.142.195:1521:XE"; 
	
	//����̹� ���
	public WorkDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
	}
	//����
	public void getConnection() {
		try {
			conn=DriverManager.getConnection(URL,"hr","happy");
		}catch(Exception ex) {}
	}
	//����
	public void disConnection() {
		try {
			if(ps!=null) ps.close();
			if(conn!=null) conn.close();
		}catch(Exception ex) {}
	}
	//������ �߰� (���)
	public void WorkInsert(WorkBVO vo) {
		try {
			getConnection();
			String sql="INSERT INTO saramin_emp(L_no,Lcateno,Lname,Ltitle,Lapp_qual1,Lapp_qual2, "
					+ "Lapp_con,Ldeadline,Lsal,Lworkspace) VALUES(?,?,?,?,?,?,?,?,?,?) ";
			ps=conn.prepareStatement(sql);
			
			ps.setInt(1, vo.getL_no());
//			ps.setString(2, vo.getLdo());
			ps.setInt(2, vo.getLcateno());
			ps.setString(3, vo.getLname());
			ps.setString(4, vo.getLtitle());
			ps.setString(5, vo.getLapp_qual1());
			ps.setString(6, vo.getLapp_qual2());
			ps.setNString(7, vo.getLapp_con());
			ps.setString(8, vo.getLdeadline());
			ps.setString(9, vo.getLsal());
			ps.setString(10, vo.getLworkspace());
			
			//����
			ps.executeUpdate();			
			
		}catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		finally {
			disConnection(); 
		}
	}
}