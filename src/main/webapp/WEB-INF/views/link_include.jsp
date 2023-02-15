<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%-- 같은 경로 --%>
<jsp:include page="./navbar.jsp" />
<jsp:include page="./footer.jsp" />

<%-- 상위 경로(폴더 생성시) --%>
<jsp:include page="../navbar.jsp" />
<jsp:include page="../footer.jsp" />

<%-- pageContext.request.contextPath는 프로젝트 경로명  --%>
${pageContext.request.contextPath}