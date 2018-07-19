			<input type="button" id="btnlogout" class="form-control btn-primary" value="Logout" name="">
  			<div class="row"><div class="col-sm-6"><span class="btn-warning form-control" id="longi"></span></div><div class="col-sm-6"><span class="btn-warning form-control" id="lati"></span></div></div>
  			<form class="validateDontSubmit">
  			<textarea id="comment" required class="form-control" rows="5" placeholder="comment" name=""></textarea>
  			<input type="number" required id="fule" class="form-control" placeholder="liters" name="">
  			<input type="number" required id="price" class="form-control" placeholder="rupees" name="">
  			<input type="submit" id="scomment" class="form-control btn-primary" value="Send comment" name="">
  			</form>
  			<script type="text/javascript">
  					$("#apphead").html("welcome " + uname);
  					$("#appheadt").html("Tracker " + trackid);
  					

  					$("#btnlogout").click(function(){
  						$.get("sessionlogout.php?trackid="+trackid,function(data, status){
  							$("#apphead").html("Login");	
  							$("#appheadt").html("");

  							location.reload();

  						});
  					})


  					$(document).on('submit','.validateDontSubmit',function (e) {
					    //prevent the form from doing a submit
					  	$.get("comment.php?comment="+$("#comment").val()+"&fuel="+$("#fule").val()+"&cost="+$("#price").val()+"&trackid="+trackid,function(data, status){
  							$("#comment").val("");
  							$("#fule").val("");
  							$("#price").val("");

  						});  	
					    e.preventDefault();
					    //return false;
					})

  					function getLocation() {
					    if (navigator.geolocation) {
					        navigator.geolocation.getCurrentPosition(showPosition);
					    } else { 
					        console.log("not supported");
					    }
					}

					function showPosition(position) {
					    $("#longi").html("longitude: " +position.coords.longitude);
					    $("#lati").html("Latitude: " +position.coords.latitude);
					    $.get("trackloc.php?latt="+position.coords.latitude+"&long="+ position.coords.longitude +"&uid="+uid+"&trackid="+trackid,function(data, status){
					    	console.log("i se");
					    })
					    
					}
					getLocation();
					setInterval(getLocation, 15000);
  			</script>