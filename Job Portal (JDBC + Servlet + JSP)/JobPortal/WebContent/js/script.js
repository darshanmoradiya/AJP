function validateForm() {
    var username = document.forms["loginForm"]["username"].value;
    var password = document.forms["loginForm"]["password"].value;
    if (username === "" || password === "") {
        alert("Both fields are required!");
        return false;
    }
}
