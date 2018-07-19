<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<script type="text/javascript">

		var islogin = false;
		var uid = null;
		var uname = null;
		var trackid = null;
		$(document).ready(function(){
				$.get("checksession.php",function(data, status){
					var st
					if(status=="success")
					{
					st = data.trim();
					console.log(st + "logged in");
					if(st=="no")
					{
						console.log("false");
						$.get("login.php", function(data, status){
	        			console.log("Data: " + data + "\nStatus: " + status);
	        			$("#appbody").html(data);		
	    			});		
					}
					else
					{
						uid = data.trim().split(":")[0];
						uname = data.trim().split(":")[1];
						trackid = data.trim().split(":")[2];

						$.get("tracker.php", 
				 		function(data, status){
			        	$("#appbody").html(data);

	    			});			
					}						
					}
					
				});

		});
	</script>
</head>
<body>
  <div class="container">
  	<div>
  	<div class="jumbotron">Vehicle tracking</div>
  	<div class="panel panel-default">
  		<div id="apphead" class="panel-heading">Login</div>
  		<div id="appheadt" class="panel-heading"></div>
  		<div id="appbody" class="panel-body">
  			
  		</div>
	</div>
	</div>
  </div>
</body>
</html>