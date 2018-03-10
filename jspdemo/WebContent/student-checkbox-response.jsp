<html>
<head><title> Student Confirmation Title </title></head>

<body>
The student is confirmed: ${param.firstName} ${param.lastName}
<br/> <br/>

Favourite Programming Language is:
<!-- Display the favourite programming language  --> 
<ul>
	<%
		String[] lang = request.getParameterValues("favouriteProg");
		if(lang != null)
		{
			for(String tempLang : lang){
				out.println("<li>"+tempLang +"</li>" ); 
			}
		}
	
	%>
</ul>


</body>

</html>