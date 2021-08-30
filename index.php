<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css"
        integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
        <style>
body {
  margin: 0;
  padding:0;
  font-family: Arial, Helvetica, sans-serif;
}
.background-image {
    height:100vh;
    width:100%;
    background: url("bimg.jpg");
    background-size:cover;
    background-repeat:no-repeat; 
    filter: brightness(70%);
  
}
.btn1{
    border:none;
    outline:none;
    padding:15px;
    margin-top:75px;
    border-radius:4px;
    color:white;
    font-size:18px;
    cursor:pointer;
    background:linear-gradient(to top, rgba(255,255,255,0.5),rgba(255,255,255,0.5));
}
.background-text {
  text-align: center;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: white;
}
@media only screen and (max-width:767px) {
    body{
        width: 100%;
    }
.background-image{
    height:66.67;
    width:100%;
}
.btn1{
    border:none;
    outline:none;
    padding:15px;
    margin-top:75px;
    border-radius:4px;
    color:white;
    font-size:18px;
    cursor:pointer;
    background:linear-gradient(to top, rgba(255,255,255,0.5),rgba(255,255,255,0.5));
}
a{
    background:none;
}
.background-text {
  text-align: center;
  position: absolute;
  top: 50%;
  left: 37.5%;
  transform: translate(-50%, -50%);
  color: white;
}
.h1{
    font-size:25px;
    background:none;
}
.h4{
    background:none;
}
.nav-logo{
    font-size:20px
}
}
a.click{
    background:none
}
@media only screen and (max-width: 768px){
  .hamburger{
      display: block;
      cursor: pointer;
      background: none;
  }
  .bar{
 display:block;
 height: 3px;
 width:25px;
 background:white;
 margin: 5px;
 

}

.bar:hover{
 display:block;
 height: 3px;
 width:25px;
 background:white;
 margin: 5px;
 cursor:pointer;
 

}
.nav-logo{
  
  color: white;
  font-size: 20px;
 
}
  .loginbox{
 position: absolute;
background: white;
padding: 35px 45px 50px 50px ; 
height: fit-content;
  width:fit-content;
top: 60%;
left: 50%;
transform: translate(-50%,-50%);
  border:1px solid black;
  border-radius: 5px;
overflow: hidden;
box-sizing: border-box;
z-index: 2;
flex-direction: column;
  margin: 0px 20px 5px 0px;

}
.btn{
border:none;
outline: none;
height:40px;
width: 200px;   
background: blue;
color:White;
font-size: 18px;
cursor: pointer;
border-radius: 5px;
left: 25%;
transition:0.5s;
position:absolute;
font-weight: bolder;
}
.btn:hover{
cursor: pointer;
height:40px;
width: 200px;

}
  .loginbox input{
width: 64%;
margin-bottom: 20px;
  margin-left:35px
  
}
  .nav-menu{
      position: fixed;
      top:-110%;
      margin-top:10%;
      flex-direction: column;
      color:white;
      width: 100%;
      text-align: center;
      transition: 0.7s ease-in-out;
      z-index: 10000;
      background:#333;
      
  }

  .nav-menu.active {
      top: 0;
  }

  .nav-item {
      margin: 1rem 0;
      border-bottom: 1px solid white;
      width:120%;
      padding-bottom:20px;

       
  }

  
  .hamburger.active .bar:nth-child(2) {
      opacity: 0;
  }

  .hamburger.active .bar:nth-child(1) {
      transform: translateY(8px) rotate(45deg);
      transition: 0.3s;
  }

  .hamburger.active .bar:nth-child(3) {
      transform: translateY(-8px) rotate(-45deg);
      transition:0.3s
      
  }
}
@media only screen and (max-width:991px) {
body{
        width: 100%;
    }
}
</style>
</head>    
<body>
    <header class="top">
        <nav class="navbar">
            <a href="index.php" class="nav-logo">Student Accomodation System</a>
    
            <ul class="nav-menu">
                <li class="nav-item"><a href="">Home</a></li>
                <li class="nav-item"><a href="login.php" class="nav-link">Log in</a></li>
                <li class="nav-item"><a href="signup.php">Sign up</a></li>
            </ul>
            <div class="hamburger">
                <span class="bar"></span>
                <span class="bar"></span>
                <span class="bar"></span>
            </div>
        </nav>
    </header>
<div class="background-image">
  <div class="background-text fade fadeOut">
    <h1 style="font-size:50px; background:none; " class="h1">Looking for an hostel?</h1><br>
    <h4 style=" background:none;">Click below to log in to the sytem to choose the hostel of your choice! </h4>
     <a href="login.php" class="click"><button class="btn1"> click here</button></a>
  </div>
</div>
<section id="home-info" class="bg-dark">
        <div class="info-img"></div>
        <div class="info-content">
          <h2 class="h2-tag"><span class="text-primary">Feedback</span> form</h2>
          <p>
          We care about our customers and look forward to make you happy.
              So if you have any issue contact us using the form below and we will
              try our best to solve them.
          </p>
          <a href="contact.php" class="read" style="color: whitesmoke;">Feedback Form</a>
        </div>
      </section>

 
    
       
   
    <script src="Script.js"></script>
    
</body>
<!-- script for review slide -->


</html>