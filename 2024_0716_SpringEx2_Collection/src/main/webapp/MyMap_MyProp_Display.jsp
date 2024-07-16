<%@page import="java.util.Properties"%>
<%@page import="java.util.Map"%>
<%@page import="myutil.MyProp"%>
<%@page import="myutil.MyMap"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	WebApplicationContext wac = WebApplicationContextUtils.getWebApplicationContext(application);

	MyMap 	myMap 	= wac.getBean("myMapBean",MyMap.class);
	MyProp 	myProp 	= wac.getBean("myPropBean",MyProp.class);
	
	pageContext.setAttribute("myMap", myMap);
	pageContext.setAttribute("myProp", myProp);
%>

<hr>
	Word Map 정보
<hr>
<dl>
	<c:forEach var="entry" items="${ myMap.wordMap }">
		<dt><b>${ entry.key }</b></dt>
		<dd>${ entry.value }</dd>
		<dd>${ entry }</dd>
	</c:forEach>
</dl>

<hr>
	dbProp 정보
<hr>
<dl>
	<c:forEach var="prop" items="${ myProp.dbProp }">
		<dt><b>${ prop.key }</b></dt>
		<dd>${ prop.value }</dd>
	</c:forEach>
</dl>