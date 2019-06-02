<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<c:if test="${userPref == 'performance' }">
	now you can stop even if you <em>do</em> drive insanely fast..
</c:if>
<c:if test="${userPref=='safety' }">
	our brakes won't lock up no matter how bad a driver you are.
</c:if>
<c:if test="${userPref=='maintaeneace' }"></c:if>

<%
	String pref = (String)session.getAttribute("userPref");
if(pref.equals("performance")){
	out.println("now you can stop even if you <em>do</em> drive insanely fase.");
}else if(pref.equals("safety")){
	out.println("now you can stop even if you <em>do</em> drive insanely fase.");
}
else if(pref.equals("maintenance")){
	out.println("now you can stop even if you <em>do</em> drive insanely fase.");
}else{
	out.println("dd");
}

%>
<c:choose>
	<c:when test="${userPref == 'performance' }">
		now you can stop evendfsdfsd f
	</c:when>
	
	<c:when test="${userPref == 'safety' }">
		Our brakes will never lock up, no matter how bad a driver you are.
	</c:when>
	
	<c:when test="${uwerPref == 'maintenance }">
		Lost your tech job? no pb
	</c:when>
	
	<c:otherwise>
		Our brakes are the best.
	</c:otherwise>
</c:choose>
</body>
</html>