<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
	<title>	Student Form Registration</title>
</head>
<body>

	<form:form action="processForm" modelAttribute="student">
		First Name: <form:input path="firstName"/>
		<br><br>
		
		Last Name: <form:input path="lastName"/>
		<br><br>
		
		Country:
		<form:select path="country">
		<form:options items="${student.countryOptions}"/>
		<%-- <form:option value="India" label="India"/>
		<form:option value="Spain" label="Spain"/>
		<form:option value="England" label="England"/>
		<form:option value="Germany" label="Germany"/>
		<form:option value="Argentina" label="Argentina"/> --%>
		</form:select>
		<br><br>
		
		Programming Language:
		Java <form:radiobutton path="favoriteLanguage" value="Java"/>&nbsp
		Python <form:radiobutton path="favoriteLanguage" value="Python"/>&nbsp
		C++ <form:radiobutton path="favoriteLanguage" value="C++"/>&nbsp
		.Net <form:radiobutton path="favoriteLanguage" value=".Net"/>&nbsp
		<br><br>
		
		Operating Systems:
		Windows <form:checkbox path="operatingSystem" value="Windows"/>
		Mac <form:checkbox path="operatingSystem" value="MAc"/>
		Linux <form:checkbox path="operatingSystem" value="Linux"/>
		<br><br>
		
		<input type="submit" value="Submit"/>
	</form:form>



</body>



</html>