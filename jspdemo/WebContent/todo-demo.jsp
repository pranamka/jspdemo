
<%@ page import="java.util.*" %>
<html>

<body>

<!-- - Step 1: Create HTML form -->
	
<form action="todo-demo.jsp">
 Add new item: <input type="text" name="theItem" />
  <input type="submit" name="Submit" />
 </form>
 
<!--  Step 2: Add new item to "To Do List"  -->
<%
	//get the TO DO items from the session 
 List<String> items = (List<String>) session.getAttribute("myToDoList"); 
 
	//if the TO DO items dont exist, then create a new one 
	if ( items == null)
	{
		items = new ArrayList<String>();
		session.setAttribute("myToDoList", items); 			
	}
	//see if there is form data to add 
	String theItem = request.getParameter("theItem"); 
	if(theItem != null){
		items.add(theItem); 
	}
%>
<!-- Step 3: DIsplay all "To Do" items for the session  -->

	<hr>
	<b> To Do List Items: </b> <br/>
	<ol>
	<%
		for(String temp: items)
		{
			if(temp != "" )
			out.println("<li>" +temp + "</li>"); 
			
		}
	%>
	
	</ol>
	

</body>


</html>