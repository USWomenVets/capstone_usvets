var today = new Date();
var hourNow = today.getHours();
var greeting;
var name;

if (hourNow > 18) {
    greeting = "Good Evening,";
}else if (hourNow >12) {
    greeting = "Good Afternoon,";
}else if (hourNow > 0) {
    greeting = "Good Morning,";
} else {
    greeting = "Welcome!"
}
name = document.getElementById("greeting").innerHTML;
document.getElementById("greeting").innerHTML =  greeting + " "+ name;