			<span>USERNAME</span>
  			<input id="uid" type="text" class="form-control" name="username">
  			<span>PASSWORD</span>
			<input id="upa" type="password" class="form-control" name="password">
			<hr data-placement="top" trigger="manual" data-toggle="popover" title="Invalid cre" data-content="invalid username password">
			<input  id="loginbutton" type="button" class="form-control btn-primary" value="Login" name="">
			<script type="text/javascript">
				 $("#loginbutton").click(function(){
				 	$.get("logincheck.php?uname="+ $("#uid").val() +"&upass="+$("#upa").val(), 
				 		function(data, status){
	        				 if(data.trim()=="fail")
	        				 {
	        				 	 islogin = false;
	        				 	 console.log("login fail");
	        				 	 $('[data-toggle="popover"]').popover('show');
	        				 }
	        				 else
	        				 {
	        				 	 islogin = true;
								 uid = data.trim().split(":")[0];
								 uname = data.trim().split(":")[1];
								 trackid= data.trim().split(":")[2];
								 console.log(uid + " " + uname);
								 $('[data-toggle="popover"]').popover('hide');
								 $.get("tracker.php", 
				 					function(data, status){
			        					$("#appbody").html(data); 
	    							});

	        				 }
	    				});
				 });					
			</script>