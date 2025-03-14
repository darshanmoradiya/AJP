package com.jobportal.servlet;

import com.jobportal.dao.JobDAO;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.*;

public class ApplyJobServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int jobId = Integer.parseInt(request.getParameter("jobId"));
        String username = request.getParameter("username");

        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal", "root", "password")) {
            String sql = "INSERT INTO applications (job_id, username) VALUES (?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, jobId);
            stmt.setString(2, username);
            stmt.executeUpdate();
            response.sendRedirect("dashboard.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
