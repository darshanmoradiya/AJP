package com.jobportal.servlet;

import com.jobportal.dao.JobDAO;
import com.jobportal.model.Job;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.*;

public class AddJobServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String company = request.getParameter("company");

        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal", "root", "password")) {
            JobDAO jobDAO = new JobDAO(conn);
            Job job = new Job(0, title, description, company);
            jobDAO.addJob(job);
            response.sendRedirect("dashboard.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
