<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ITEMS</title>
</head>
<body>

<c:forEach items="${items}" var="item">
	<h1>${item.item_id}</h1>
	<p>${item.item_group}</p>
	<p>${item.system_code}</p>
	<p>${item.type}</p>
	<p>${item.ver}</p>
	<p>${item.plant_code}</p>
	<p>${item.item_description}</p>
	<p>${item.createdate}</p>
	<p>${item.item_uuid}</p>
</c:forEach>


</body>
</html>