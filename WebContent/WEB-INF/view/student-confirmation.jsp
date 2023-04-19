<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>	Student confirmation</title>
</head>
<body>

Student Confirmation: ${student.firstName}  ${student.lastName}
<br><br>
Country: ${student.country}
<br><br>
Programming languages:  ${student.favoriteLanguage}
<br><br>
Operating Systems known:  
<ul>
	<c:forEach var="temp" items="${student.operatingSystem}">
	<li>${temp}</li>
	</c:forEach>
</ul>
</body>

</html>