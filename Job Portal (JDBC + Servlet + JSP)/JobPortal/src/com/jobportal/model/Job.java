package com.jobportal.model;

public class Job {
    private int id;
    private String title;
    private String description;
    private String company;

    public Job(int id, String title, String description, String company) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.company = company;
    }

    // Getters and Setters
}
