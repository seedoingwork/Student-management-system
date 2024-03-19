<!DOCTYPE html>
	<html>
	<head>
		<title>Welcome to Student DBMS</title>
		<style type="text/css">
			.container{
	position: relative;
	text-align: center;
	color: white;
}
*{
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: `Poppins`;
}

.centered{
	position: absolute;
	top: 40%;
	left: 49%;
	transform: translate(-50%, -50%);
}

h2{
	font-size: 40px;
}

mark {
	background-color: black;
	color: white;
	/*margin: 100px 0px 0px 400px;*/
	font-family: Helvetica;
}

.text{
	position: absolute;
	top: 60%;
	left: 49%;
	transform: translate(-50%, -50%);
}
#student{
	position: absolute;
	top: 63%;
	left: 36%;
	background-color: green;
	color: white;
	width: 100px;
	height: 35px;
	border-radius: 5px;
}
#teacher{
	position: absolute;
	top: 63%;
	left: 46%;
	background-color: green;
	color: white;
	width: 100px;
	height: 35px;
	border-radius: 5px;
}

		</style>
		 
	</head>
	<body>
	<div class="container">
		<img src="lapy.png" height="740px" width="100%">
		<div class="centered">
		<h2><mark>Welcome<br> to<br> Student Database Management System!</mark></h2>
	</div>
	<div class="text">
		<h4><mark>You want to login as a ?</mark></h4>
	</div>
	<a href="student/sindex.php">
	<input type="button" id="student" value="Student">
</a>
<a href="teacher/tindex.php">
	<input type="button" id="teacher" value="Teacher">
</a>
	</div>	

	</body>
	</html>
