package com.jobportal.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.jobportal.model.Job;

public class JobDAO {
    private Connection conn;

    public JobDAO(Connection conn) {
        this.conn = conn;
    }

    public void addJob(Job job) throws SQLException {
        String sql = "INSERT INTO jobs (title, description, company) VALUES (?, ?, ?)";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, job.getTitle());
            stmt.setString(2, job.getDescription());
            stmt.setString(3, job.getCompany());
            stmt.executeUpdate();
        }
    }

    public List<Job> getAllJobs() throws SQLException {
        List<Job> jobs = new ArrayList<>();
        String sql = "SELECT * FROM jobs";
        try (Statement stmt = conn.createStatement(); ResultSet rs = stmt.executeQuery(sql)) {
            while (rs.next()) {
                Job job = new Job(rs.getInt("id"), rs.getString("title"), rs.getString("description"), rs.getString("company"));
                jobs.add(job);
            }
        }
        return jobs;
    }
}
