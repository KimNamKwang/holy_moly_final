<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%-- 같은 경로 --%>
<jsp:include page="./navbar.jsp" />
<jsp:include page="./footer.jsp" />

<%-- 상위 경로(폴더 생성시) --%>
<jsp:include page="../navbar.jsp" />
<jsp:include page="../footer.jsp" />

<%-- pageContext.request.contextPath는 프로젝트 경로명  --%>
${pageContext.request.contextPath}

    <script
      src="https://code.jquery.com/jquery-3.6.3.min.js"
      integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
      crossorigin="anonymous"
    ></script>


<%-- jstl 관련 태그 --%>
<%-- jstl function을 사용가능 --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>