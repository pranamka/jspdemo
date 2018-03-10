<html>
<BODY>
<h3> Declaration Example </h3>

<%!
	String makeItLower(String data){
		return data.toLowerCase(); 
	}
%>
The lower case of "Hello World" is <%= makeItLower("Hello World") %>

</BODY>
</html>