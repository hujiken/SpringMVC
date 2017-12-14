<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User</title>
</head>
<body>
	<form:form method="POST" modelAttribute="user" class="form-horizontal">
		<div>
			<label>First Name: </label>
			<form:input type="text" path="firstName" id="firstName"/>
	        <div class="has-error">
	            <form:errors path="firstName" class="help-inline"/>
	        </div>
	    </div>
	    <div>
	    	<label>Last Name: </label>
	        <form:input type="text" path="lastName" id="lastName" class="form-control input-sm"/>
	        <div class="has-error">
	            <form:errors path="lastName" class="help-inline"/>
	        </div>
	    </div>
	    <div>
	    	<label>Gender: </label>
	        <form:radiobutton path="gender" value="M" />Male 
	        <form:radiobutton path="gender" value="F" />Female
	        <div class="has-error">
	            <form:errors path="gender" class="help-inline"/>
	        </div>
	    </div>
	    <div>
	    	<label>Birth Day: </label>
	        <form:input type="text" path="birthday" id="birthday" class="form-control input-sm"/>
	        <div class="has-error">
	            <form:errors path="birthday" class="help-inline"/>
	        </div>
	    </div>
	    <div>
	    	<label>Email: </label>
	        <form:input type="text" path="email" id="email" class="form-control input-sm"/>
	        <div class="has-error">
	            <form:errors path="email" class="help-inline"/>
	        </div>
	    </div>
	    <div>
	    	<label>Section: </label>
	        <form:input type="text" path="section" id="section" class="form-control input-sm"/>
	        <div class="has-error">
	            <form:errors path="section" class="help-inline"/>
	        </div>
	    </div>
	    <div>
            <form:select path="country" id="country" class="form-control input-sm">
                <form:option value="">Select Country</form:option>
                <form:options items="${countries}" />
            </form:select>
            <div class="has-error">
                <form:errors path="country" class="help-inline"/>
            </div>
        </div>
	    <div>
	    	<label>Attempt: </label>
	        <form:radiobutton path="firstAttempt" value="true" />Male 
	        <form:radiobutton path="firstAttempt" value="false" />Female
	        <div class="has-error">
	            <form:errors path="firstAttempt" class="help-inline"/>
	        </div>
	    </div>
	    <div>
	        <input type="submit" value="Register" class="btn btn-primary btn-sm">
	    </div>
    
	</form:form>
</body>
</html>