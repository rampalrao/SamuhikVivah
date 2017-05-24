 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Users</title>
<link type="text/css" rel="stylesheet" href="resources/css/common.css" />
</head>
<body>
<div class="view-all-user">
<h2 class="text-view">Registered Grooms/Brides</h2>
<table border="2" width="70%" cellpadding="2">
<tr><th>Name</th><th>Mobile No</th><th>Address</th></tr>
   <c:forEach var="user" items="${userList}">
   <tr>
   <td>${user.name}</td>
   <td>${user.mobile}</td>
   <td>${user.address}</td>
   </tr>
   </c:forEach>
</table>
</br>
<a href="/">Back To Home</a>
</div>
</head>
</html>