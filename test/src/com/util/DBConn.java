package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

//DB Connection을 위한 클래스

public class DBConn {
	
	private static Connection conn = null;

	private DBConn() {
	}
	
	public static Connection getConnection() {
		String url="jdbc:oracle:thin:@192.168.43.8:1521:orcl";
		//메인 DB로 사용할 PC ip
		String user="bendenge";
		//db 접속ID
		String pwd="java$!";
		//db 접속PW
		
		if(conn==null) {
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn = DriverManager.getConnection(url, user, pwd);
			}catch (Exception e) {
				System.out.println(e.toString());
			}
		}
		return conn;
	}
	public static Connection getConnection(String url, String user, String pwd) {
		if(conn==null) {
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn = DriverManager.getConnection(url, user, pwd);
			}catch (Exception e) {
				System.out.println(e.toString());
			}
		}
		return conn;
	}
	public static Connection getConnection(String url, String user, String pwd, String internal_logon) {
		if(conn==null) {
			try {
				Properties info = new Properties();
				info.put("user", user);
				info.put("password", pwd);
				info.put("internal_logon", internal_logon);  // sysdba
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn = DriverManager.getConnection(url, info);
			}catch (Exception e) {
				System.out.println(e.toString());
			}
		}
		
		return conn;
	}
	//연결 종료 메소드
	public static void close() {
		if(conn==null){
			return;
		}
		try {
			if(!conn.isClosed())
				conn.close();
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		conn=null;
	}
}
