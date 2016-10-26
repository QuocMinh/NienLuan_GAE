package com.dev.myproject;

import java.io.IOException;

import javax.servlet.http.*;

import com.google.appengine.api.utils.SystemProperty;
import com.google.appengine.api.utils.SystemProperty.Environment.Value;

@SuppressWarnings("serial")
public class MyCVServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		String path = req.getRequestURI();
		String url;
		
		if(SystemProperty.environment.value() == Value.Production) {
			try {
				Class.forName("com.mysql.jdbc.GoogleDriver");
				url = "jdbc:google:mysql://<ID>:m-learn-gae:asia-east1:learninggae";
			} catch (ClassNotFoundException e) {
				System.out.println("Khong tim thay driver");
				e.printStackTrace();
			}
		}
	}
}
