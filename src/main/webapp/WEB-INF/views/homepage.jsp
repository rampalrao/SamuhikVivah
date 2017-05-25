<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Samuhik Vivah , Free group wedding in Kushinagar(U.P)</title>
<meta name="description" content="Samuhik Vivah free wedding foundation for poor family arrange free wedding services in Kushinagar (U.P) Gath Bandhan Samuhik Shadi,Samuhik Vivah in Kushinagar (U.P), free group marriage  in Kushinagar (U.P)">
<meta name="keywords" content="Gath Bandhan Samuhik Vivah, free Group wedding,free wedding services in Kushinagar (U.P), Samuhik Shadi,Samuhik Vivah in Kushinagar (U.P), free group marriages  in Kushinagar (U.P)">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="author" content="Samuhik Vivah">
<meta name="Copyright" content="Samhuik Vivah">
<meta name="robots" content="index, follow">
<meta name="Robots" content="index, all">
<meta name="YahooSeeker" content="index, follow">
<meta name="Slurp" content="noydir">
<meta name="msnbot" content="index, follow">
<meta name="googlebot" content="index, follow">
<meta name="allow-search" content="yes">
<meta name="revisit-after" content="4 days">
<meta name="Rating" content="General">
<meta http-equiv="Content-Language" content="en">
<meta name="mssmarttagspreventparsing" content="true">
<meta name="document-type" content="public">
<meta name="distribution" content="global">
<meta name="Generator" content="notePad">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta charset="UTF-8">

<!-- Favicons -->
<link rel="shortcut icon" href="resources/css/icon.png">
<link type="text/css" rel="stylesheet" href="resources/css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet" href="resources/css/common.css" />
</head>
<body>
<div class="container">
<c:if test = "${not empty successMsg}">
<div class="row">
<div class="col-md-12"><h3 class="success-msg">${successMsg}</h3></div>
</div>
</c:if>
<div class="row">
<div class="col-md-9"></div>
<div class="col-md-3">
<div class="language">
Language:
<a href="/?lang=en">English</a> |
<a href="/?lang=hindi">Hindi</a>
</div>
</div>
</div>
<div class="row">
<div class="col-md-12"><h2 class="welcome-text">Welcome to Samuhik Vivah</h2>
</div>
</div>

<div class="row">
<div class="col-md-12">
<div class="about-detail">
		This is the platform where poor or needy people or anyone who knows such people around them can register with us for marraige of their daughter, First they have to find suitable life partner for their daughter afterward we will include her in samuhik shadi, which will take place at my home address for other pairs as well.Please feel free to contact me or register here or visit my home place.
		</br>
		</br>
		<b>Note*</b>:Preferably brides/grooms should be from Kushingar(UP) disctrict.All the expences incurred in samuhik vivah will be take care by us.
</div>
</div>
</div>

<div class="row">
<div class="col-md-4">
<div class="my-address">
        <h3>Home Address</h3>
	<p>Gamha Rao</p>
	<p><b>Village:</b> Bihar Khurd Bangla</p>
	<p><b>Post:</b> Bihar Buzurg</p>
	<p><b>Thana:</b> Patherwa</p>
	<p><b>District:</b> Kushinagar</p>
	<p><b>Pincode:</b> 274401</p>
    </div>
</div>

<div class="col-md-4">
    <div class="registration-form">
       <h3>Register Here!</h3>
<form:form method="post" action="addUser" modelAttribute="user">
                         <table >
                          <tr>
        			 <td><form:label path="name">Name</form:label></td>
        			 <td><form:input path="name" /></td>
        		      </tr>
        		      <tr>
        			 <td><form:label path="mobile">Mobile</form:label></td>
        			 <td><form:input path="mobile" /></td>
        		      </tr>
        		      <tr>
        			 <td><form:label path="address">Address</form:label></td>
        			 <td><form:textarea path="address" rows="5" cols="30" /></td>
				</tr>
			<tr>
			   <td><input type="hidden" name="lang" value="${user.lang}"></td>
                           <td>
				<div class="form-group">
				<button class="btn btn-primary " name="submit" type="submit">Submit</button>
				</div>
			</td>
                          </tr>
                         </table>
                  </form:form>
</div>
</div>

<div class="col-md-4">
<div class="contact-me">
        <h3>Contact me</h3>
	<p>Rampal Rao</p>
	<p><b>Phone:</b> +91-8130535050 , +91-8860709808</p>
	<p><b>Email:</b> <a href="mailto:rprao.2k7@gmail.com" style="text-decoration:none">rprao.2k7@gmail.com</a></p>
	<p><b>Facebook:</b> <a href = "http://facebook.com/rampalrao007" style="text-decoration:none">rampalrao007</a></p>
	<p><b>Twitter:</b> <a href = "https://twitter.com/im_rprao" style="text-decoration:none">@im_rprao</a></p>
	<p><b>Wiki:</b> <a href = "https://en.wikipedia.org/wiki/User:Rampal_Rao" style="text-decoration:none">Rampal_Rao</a></p>
    </div>
</div>
</div>
</div>
<div class="row">

<div class="col-md-4"></div

<div class="col-md-4">
<div class="count-view">
   <h4>Total Registration Count: ${registrationCount}</h4>
   <h4>Total Page View Count: ${pageViewCount}</h4>
   </div>
</div>

<div class="col-md-4"></div

</div>
</body>
</html>