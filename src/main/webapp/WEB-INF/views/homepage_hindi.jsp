<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>समुहिक विवाह, कुशीनगर में  समुहिक विवाह (यू.पी.)</title>
<meta name="description" content="कुशीनगर (यू.पी.) गथबंधन सामूहिक विवाह, कुशीनगर (यू.पी.) में सामूहिक विवाह, कुशीनगर (यू.पी.) में नि:शुल्क सामूहिक विवाह में गरीब परिवारों के लिए।">
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
भाषा:
<a href="/?lang=en">अंग्रेजी</a> |
<a href="/?lang=hindi">हिन्दी</a>
</div>
</div>
</div>

<div class="row">
<div class="col-md-12"><h2 class="welcome-text">सामूहिक विवाह के लिए पंजीकरण</h2>
</div>
</div>

<div class="row">
<div class="col-md-12">
<div class="about-detail">
		यह एक ऐसा मंच है जहां गरीब या जरूरतमंद लोग या उनके आस-पास के ऐसे लोग जो इस तरह के लोगों को जानता है, वह उनकी बेटी के विवाह के लिए हमारे साथ पंजीकृत कर सकता है, पहले उन्हें अपनी बेटी के लिए उपयुक्त जीवनसाथी ढूंढना होगा, उसके बाद हम उसे सामूहिक विवाह में शामिल करेंगे,जो मेरे घर के पते पर दूसरे जोड़े के लिए भी पूरा होगा । अधिक जानकारी के लिए कृपया मुझसे संपर्क करें या यहाँ पंजीकरण करें या मेरे घर का पता स्थान पर जाएं।
		</br>
		</br>
		<b>ध्यान दें*</b>: दुल्हन/दूल्हे कुशीनगर (यूपी) के निर्वाचन से होना चाहिए। समूहिक विवाह में किए गए सभी खर्चों को हमारे द्वारा ध्यान रखा जाएगा।
</div>
</div>
</div>

<div class="row">
<div class="col-md-4">
<div class="my-address">
        <h3>घर का पता</h3>
	<p><b>पिता का नाम:</b> गम्हा राव</p>
	<p><b>गाँव:</b> बिहार खुर्द बांग्ला</p>
	<p><b>पोस्ट:</b> बिहार बुज़ुर्ग</p>
	<p><b>थाना:</b> पटहेरवा</p>
	<p><b>जिला:</b> कुशीनगर</p>
	<p><b>पिनकोड:</b> 274401</p>
    </div>
</div>

<div class="col-md-4">
    <div class="registration-form">
       <h3>रजिस्टर करें!</h3>
<form:form method="post" action="addUser" modelAttribute="user">
                         <table >
                          <tr>
        			 <td><form:label path="name">नाम</form:label></td>
        			 <td><form:input path="name" required="true" oninvalid="this.setCustomValidity('नाम लिखें')" oninput="setCustomValidity('')"/></td>
        		      </tr>
        		      <tr>
        			 <td><form:label path="mobile">मोबाइल</form:label></td>
        			 <td><form:input path="mobile" required="true" pattern="[0-9]{10}" oninvalid="this.setCustomValidity('मान्य मोबाइल नंबर यहां दर्ज करें')" oninput="setCustomValidity('')"/></td>
        		      </tr>
        		      <tr>
        			 <td><form:label path="address">पता</form:label></td>
        			 <td><form:textarea path="address" rows="5" cols="30" maxlength="100" minlength="5" required="true"  oninvalid="this.setCustomValidity('अपना पता दर्ज करें')" oninput="setCustomValidity('')"/></td>
				</tr>
			<tr>
			   <td><input type="hidden" name="lang" value="${user.lang}"></td>
                           <td>
				<div class="form-group">
				<button class="btn btn-primary " name="submit" type="submit">जमा करें</button>
				</div>
			</td>
                          </tr>
                         </table>
                  </form:form>
</div>
</div>

<div class="col-md-4">
<div class="contact-me">
        <h3>संपर्क करें!</h3>
	<p><b>रामपाल राव</b></p>
	<p><b>फोन:</b> +91-8130535050 , +91-8860709808</p>
	<p><b>ईमेल:</b> <a href="mailto:rprao.2k7@gmail.com" style="text-decoration:none">rprao.2k7@gmail.com</a></p>
	<p><b>फेसबुक:</b> <a href = "http://facebook.com/rampalrao007" style="text-decoration:none">rampalrao007</a></p>
	<p><b>ट्विटर:</b> <a href = "https://twitter.com/im_rprao" style="text-decoration:none">@im_rprao</a></p>
	<p><b>विकिपीडिया:</b> <a href = "https://en.wikipedia.org/wiki/User:Rampal_Rao" style="text-decoration:none">Rampal_Rao</a></p>
    </div>
</div>
</div>
</div>
<div class="row">

<div class="col-md-4"></div

<div class="col-md-4">
<div class="count-view">
   <h4>कुल पंजीकरण गणना: ${registrationCount}</h4>
   <h4>कुल पृष्ठ दृश्य संख्या: ${pageViewCount}</h4>
   </div>
</div>

<div class="col-md-4"></div

</div>
</body>
</html>