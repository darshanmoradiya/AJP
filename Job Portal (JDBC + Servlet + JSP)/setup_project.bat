@echo off
set PROJECT_NAME=JobPortal

:: Create directories
mkdir %PROJECT_NAME%\src\com\jobportal\dao
mkdir %PROJECT_NAME%\src\com\jobportal\model
mkdir %PROJECT_NAME%\src\com\jobportal\servlet
mkdir %PROJECT_NAME%\WebContent\META-INF
mkdir %PROJECT_NAME%\WebContent\WEB-INF
mkdir %PROJECT_NAME%\WebContent\lib
mkdir %PROJECT_NAME%\WebContent\jsp
mkdir %PROJECT_NAME%\WebContent\css
mkdir %PROJECT_NAME%\WebContent\js
mkdir %PROJECT_NAME%\WebContent\images

:: Create Java files
echo. > %PROJECT_NAME%\src\com\jobportal\dao\JobDAO.java
echo. > %PROJECT_NAME%\src\com\jobportal\dao\UserDAO.java
echo. > %PROJECT_NAME%\src\com\jobportal\model\Job.java
echo. > %PROJECT_NAME%\src\com\jobportal\model\User.java
echo. > %PROJECT_NAME%\src\com\jobportal\servlet\AddJobServlet.java
echo. > %PROJECT_NAME%\src\com\jobportal\servlet\ApplyJobServlet.java
echo. > %PROJECT_NAME%\src\com\jobportal\servlet\LoginServlet.java
echo. > %PROJECT_NAME%\src\com\jobportal\servlet\RegisterServlet.java
echo. > %PROJECT_NAME%\src\com\jobportal\servlet\LogoutServlet.java

:: Create JSP files
echo. > %PROJECT_NAME%\WebContent\jsp\index.jsp
echo. > %PROJECT_NAME%\WebContent\jsp\login.jsp
echo. > %PROJECT_NAME%\WebContent\jsp\register.jsp
echo. > %PROJECT_NAME%\WebContent\jsp\dashboard.jsp
echo. > %PROJECT_NAME%\WebContent\jsp\postJob.jsp
echo. > %PROJECT_NAME%\WebContent\jsp\applyJob.jsp

:: Create other files
echo. > %PROJECT_NAME%\WebContent\META-INF\context.xml
echo. > %PROJECT_NAME%\WebContent\WEB-INF\web.xml
echo. > %PROJECT_NAME%\WebContent\css\style.css
echo. > %PROJECT_NAME%\WebContent\js\script.js
echo. > %PROJECT_NAME%\README.md
echo. > %PROJECT_NAME%\.gitignore
echo. > %PROJECT_NAME%\pom.xml

echo Project structure created successfully!
pause
