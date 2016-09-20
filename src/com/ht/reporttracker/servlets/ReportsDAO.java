package com.ht.reporttracker.servlets;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

public class ReportsDAO {

	public static Connection getConnection() throws SQLException {
		String url = "jdbc:mysql://localhost:3306/";
		String dbName = "sys";
		String driver = "com.mysql.jdbc.Driver";
		String userName = "reporttracker";
		String password = "reporttracker";
		Connection conn = null;
		try {
			Class.forName(driver).newInstance();
			conn = DriverManager
					.getConnection(url + dbName, userName, password);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	public static String authenticateUser(String uname, String pwd)
			throws SQLException {

		String retString = "";
		Connection conn = getConnection();
		Statement st = conn.createStatement();
		ResultSet res = st.executeQuery("SELECT * FROM USER");
		while (res.next()) {
			int id = res.getInt("USER_ID");
			String msg = res.getString("ROLE");
			System.out.println(id + "\t" + msg);
		}

		conn.close();
		return retString;
	}

	public static Map<String, List<String>> getStatistics() throws SQLException {

		 Map<String, List<String>> statistics = new HashMap<String, List<String>>();
		Connection conn = getConnection();
		Statement st = conn.createStatement();
		
		ResultSet res = st
				.executeQuery("select DEALER_ID,count(*) as COUNT from ENQUIRY group by DEALER_ID");
		int totalCount = 0;
		List<String> enqStringList = new ArrayList<String>();
		while (res.next()) {
			int dealerId = res.getInt("DEALER_ID");
			String dealerName = getDealerName(dealerId);
			int cntPerDealer = res.getInt("COUNT");
			enqStringList.add(dealerName + " = " + cntPerDealer);
			totalCount += cntPerDealer;
		}
		statistics.put("ENQUIRY"+"|"+totalCount, enqStringList);
		System.out.println("*******************************************");
		System.out.println("ENQUIRY totalCount = "+totalCount);
		for (String string : enqStringList) {
			System.out.println(string);
		}
		System.out.println("*******************************************");

		res = st.executeQuery("select DEALER_ID,count(*) as COUNT from TEST_DRIVE group by DEALER_ID");
		totalCount = 0;
		List<String> tdStringList = new ArrayList<String>();
		while (res.next()) {
			int dealerId = res.getInt("DEALER_ID");
			String dealerName = getDealerName(dealerId);
			int cntPerDealer = res.getInt("COUNT");
			tdStringList.add(dealerName + " = " + cntPerDealer);
			totalCount += cntPerDealer;
		}
		statistics.put("TD"+"|"+totalCount, tdStringList);

		System.out.println("*******************************************");
		System.out.println("TD totalCount = "+totalCount);
		for (String string : tdStringList) {
			System.out.println(string);
		}
		System.out.println("*******************************************");
		
		res = st.executeQuery("select DEALER_ID,count(*) as COUNT from ORDER_BOOKING group by DEALER_ID");
		totalCount = 0;
		List<String> obStringList = new ArrayList<String>();
		while (res.next()) {
			int dealerId = res.getInt("DEALER_ID");
			String dealerName = getDealerName(dealerId);
			int cntPerDealer = res.getInt("COUNT");
			obStringList.add(dealerName + " = " + cntPerDealer);
			totalCount += cntPerDealer;
		}
		statistics.put("OB"+"|"+totalCount, obStringList);
		
		System.out.println("*******************************************");
		System.out.println("OB totalCount = "+totalCount);
		for (String string : obStringList) {
			System.out.println(string);
		}
		System.out.println("*******************************************");
		
		
		res = st.executeQuery("select DEALER_ID,count(*) as COUNT from INVOICE group by DEALER_ID");
		totalCount = 0;
		List<String> invoiceStringList = new ArrayList<String>();
		while (res.next()) {
			int dealerId = res.getInt("DEALER_ID");
			String dealerName = getDealerName(dealerId);
			int cntPerDealer = res.getInt("COUNT");
			invoiceStringList.add(dealerName + " = " + cntPerDealer);
			totalCount += cntPerDealer;
		}
		statistics.put("INVOICE"+"|"+totalCount, invoiceStringList);
		
		System.out.println("*******************************************");
		System.out.println("INVOICE totalCount = "+totalCount);
		for (String string : invoiceStringList) {
			System.out.println(string);
		}
		System.out.println("*******************************************");
		System.out.println("*******************************************");
		System.out.println("*******************************************");
		System.out.println("*******************************************");
		System.out.println("*******************************************");
		System.out.println("*******************************************");
		System.out.println("*******************************************");
		System.out.println("*******************************************");

		conn.close();
		return statistics;
	}

	private static String getDealerName(int dealerId) throws SQLException {
		String dealerName = "";
		Connection conn = getConnection();
		Statement st = conn.createStatement();
		ResultSet res = st
				.executeQuery("select DEALER_NAME from DEALER where DEALER_ID="
						+ dealerId);
		while (res.next()) {
			dealerName = res.getString("DEALER_NAME");
		}

		return dealerName;
	}
}
