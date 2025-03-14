CREATE TABLE applications (
    id INT AUTO_INCREMENT PRIMARY KEY,
    job_id INT,
    username VARCHAR(50),
    FOREIGN KEY (job_id) REFERENCES jobs(id)
);
