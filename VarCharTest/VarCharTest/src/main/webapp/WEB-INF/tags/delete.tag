<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ attribute name="type"%>
<%@ attribute name="bnum"%>
<%@ attribute name="rid"%>

<c:choose>
	<c:when test="${type=='content'}">
		<c:if test="${mrole=='admin'}">
			<a href="deleteB.do?bnum=${bnum}">[<spring:message code = "delete.boarddelete" />]</a>

		</c:if>
	</c:when>

	<c:when test="${type=='reply'}">
		<c:if test="${mrole=='admin'}">
			<a href="deleteR.do?&rid=${rid}">[<spring:message code = "delete.boarddelete" />]</a>

		</c:if>
	</c:when>

</c:choose>