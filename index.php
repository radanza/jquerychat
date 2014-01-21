<!DOCTYPE html>
<html lang="en">
<head>
	<title>A jQuery Chatroom by: RavenousBlack</title>
	<link rel="stylesheet" type="text/css" href="jquerychat.css">

</head>
<body>
	<textarea id="chat-room"></textarea>
	<form id="chat-form">
		<input id="user-name" type="text" name="user-name" placeholder="Guest">
		<input id="user-input" type="text" name="user-input">
	</form>

	<script src="js/jquery-2.0.3.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){

			//get messages from db
			getMessages();
			function getMessages(){
				$( "#chat-room" ).load( "api/getMessages.php", function(data){
					scrollBottom();
				});
			}

			//clear username on load
			document.getElementById("user-name").value = "";
			var user_name = 'Guest';
			$( "#chat-form" ).submit(function( event ) {
				//alert( "Handler for .submit() called." );
				event.preventDefault();
			});

			//store username
			$('input#user-name').keyup(function(e) {
				user_name = this.value;
				console.log(username);
			});

			//scroll when a new message is posted
			function scrollBottom(){
				//######################## make if statement to test focus onscrollbar
				$("#chat-room").animate({
					    scrollTop:$("#chat-room")[0].scrollHeight - $("#chat-room").height()
				},1000);
			}

			//send message to database
			$('input#user-input').keyup(function(e) {
				//grab input
				var txt = this.value;
				//console.log(txt);

				if (e.which == '13') {
				    console.log(this.value);
				    //post to db
					$.post( "api/messages.php", { username: user_name, message: txt }, function() {
						getMessages();
					});
					//clear message input
				    this.value = '';

				    scrollBottom();
				}
			});
			//refresh chat-room every 3 secods
			setInterval(getMessages,3000);

		});

	</script>
</body>
</html>

