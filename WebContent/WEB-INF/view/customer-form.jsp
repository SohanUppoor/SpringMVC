<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
	<title>	Customer Form Registration</title>
	<style>
		.error{color: red}
	</style>
</head>

<body>
	<i>Fill out the form, * means required field</i>
	<form:form action="processForm" modelAttribute="customer">
		First Name	: <form:input path="firstName"/>
		<br><br>
		
		Last Name(*): <form:input path="lastName"/>
		<form:errors path="lastName" cssClass="error"/>
		<br><br>
		
		Course Code: <form:input path="courseCode"/>
		<form:errors path="courseCode" cssClass="error"/>
		<br><br>
			
		<input type="submit" value="Submit"/>
		
	</form:form>
		
</body>
</html>