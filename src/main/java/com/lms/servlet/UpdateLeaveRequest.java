package com.lms.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lms.daoimpl.LeaveResDaoImpl;
import com.lms.model.LeaveRes;

/**
 * Servlet implementation class UpdateLeaveRequest
 */
@WebServlet("/update")
public class UpdateLeaveRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateLeaveRequest() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
       SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-yyyy");
		
		int eid=Integer.parseInt(request.getParameter("empid"));
		String datestr=request.getParameter("upfromdate");
		Date edt = null;
		try {
			edt = sdf.parse(datestr);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String datestr1=request.getParameter("uptodate");
		Date edt1 = null;
		try {
			edt1 = sdf.parse(datestr1);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		int nof=Integer.parseInt(request.getParameter("nofdays"));
		LeaveRes levup=new LeaveRes(eid, edt, edt1, nof);
		LeaveResDaoImpl levupdao=new LeaveResDaoImpl();
		levupdao.updatelev(levup);
		response.sendRedirect("ShowLeveBalance.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
