 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Users</title>
<link type="text/css" rel="stylesheet" href="resources/css/common.css" />
</head>
<body>
<div class="container">
<c:if test = "${not empty accessMsg}">
<div class="row">
<div class="col-md-12"><h3 class="success-msg">${accessMsg}</h3></div>
</div>
</c:if>
<c:if test = "${not empty deleteMsg}">
<div class="row">
<div class="col-md-12"><h3 class="success-msg">${deleteMsg}</h3></div>
</div>
</c:if>

<div class="view-all-user">
<h2 class="text-view">Registered Grooms/Brides</h2>
<table border="2" width="70%" cellpadding="2">
<tr>
    <th>Id</th>
    <th>Name</th>
    <th>Mobile No</th>
    <th>Address</th>
    <th>Action</th>
</tr>
<c:forEach var="user" items="${userList}">
<tr>
    <td>${user.id}</td>
    <td>${user.name}</td>
    <td>${user.mobile}</td>
    <td>${user.address}</td>
    <td><a href="/deleteUser?id=${user.id}">Delete</a></td>
</tr>
</c:forEach>
</table>
</br>
<a href="/">Back To Home</a>
</div>
</div>
</head>
</html>