<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ajax sample demo</title>
<script type="text/javascript" src="js/jquery-3.1.1.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
		$('#btnSubmit').click(function(){
			var name = $('#empName').val();
			$.ajax({
				type:'post',
				url:'AjaxController',
				data: {
					empName:name,
					action:'demo'
					},
				success: function(result){
					$('#result1').text(result);
				}
			})
		})
		
		$('#btnSum').click(function(){
			var no1 = $('#number1').val();
			var no2 = $('#number2').val();
			$.ajax({
				type:'post',
				url:'AjaxController',
				data:{
					number1:no1,
					number2:no2,
					action:'sum'
				},
				success: function(result){
					$('#answer').text(result);
				}
				
			})
		})
	});

</script>
</head>
<body>
<form>	
	Name : <input type="text" id="empName" />
	<input type="button" value="Submit" id="btnSubmit">
	<span id="result1"></span>
	<br/><br/><br/><br/>
	Number1 : <input type="text" id="number1"><br/>
	Number2 : <input type="text" id="number2"><br/>
	Answer : <span id="answer"></span><br/>
	<input type="button" value="Submit" id="btnSum">
</form>
</body>
</html>