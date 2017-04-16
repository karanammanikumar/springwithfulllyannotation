<!-- <!DOCTYPE html>  
<html lang="en">  
<head>  
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.5/angular.min.js"></script>
    <link href="resources/css/style.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="resources/js/message.js"></script> 
    
        <link rel="stylesheet" href="css/mystyles.css">
   	 	<link rel="stylesheet" href="css/bootstrap.min.css">
		<script type="text/javascript" src="js/angular.min.js"></script>
 		<script type = "text/javascript" src = "js/logger.js"></script>
       
</head>  
<body ng-controller = "empcontroller">
<ons-navigator>
<ons-page>
<div class="container">
<section id="content">
<form action="../rest/login">
<h1>Login Form</h1>
<div>
<input type="text" placeholder="Username" required="" id="username" ng-model="user" />
</div>
<div>
<input type="password" placeholder="Password" required="" id="password" ng-model="pswd"/>
</div>
<div class="alert alert-danger" role="alert" ng-show="errorMsg">{{errorMsg}}</div>
<div>
 
<input type = "button" value = "LOGIN" ng-click = "insertdata()" id = "butt"/>
<input type = "button" value = "REGISTER" ng-click = "insertdata()" id = "butt"/>
</div>
</form>
<div class="button">
<a href="#">LOGGER</a>
</div>
</section>
</div>
</ons-page>
</ons-navigator>
</body>
</html>    -->


<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.5/angular.min.js"></script>
<script type="text/javascript" src="resources/js/message.js"></script> 
</head>
<body>
<div ng-app="myApp" ng-controller="formCtrl"  >
  <form name="myform" action="/rest/userlogin">
   User Name:<input type="text" ng-model="firstname"><br>
   Password :<input type="password" ng-model="password">
   <input type="button" value="Login"/>
  </form>
</div>
</body>
</html>










