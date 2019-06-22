<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mi armario</title>
</head>
<body>
<%String col[] = new String [14];
for (int i=0; i<14; i++){
	col[i]="<p>"+request.getParameter("checkbox"+i)+"</p>";
} %>
<div id="myEmptyDiv">

</div>
</body>
</html>