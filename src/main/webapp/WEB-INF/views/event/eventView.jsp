<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>이벤트 상세</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Zen+Dots&display=swap"
      rel="stylesheet"
    />
    <script
      src="https://code.jquery.com/jquery-3.6.3.min.js"
      integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
      crossorigin="anonymous"
    ></script>
  </head>

  <body style="font-family: 'Noto Sans KR', sans-serif">
    <jsp:include page="../navbar.jsp" />

    <div class="container">
      <div>
        <div class="fs-1 fw-bold mt-5 mb-5">이벤트</div>
        <div class="fs-4 fw-bold pt-5 pb-3">진행중인 이벤트</div>
      </div>
    </div>
    <div class="pt-5 pb-4" style="background-color: rgb(249, 249, 249)">
      <div class="container">
        <div class="p-4" style="background-color: white">
          <div class="fs-4 border-bottom border-dark pb-3">
            ${resultMap.TITLE}
          </div>
          <div class="pt-3" style="color: rgb(148, 148, 151)">${fn:substring(resultMap.DATE_CREATED,0,10)}</div>
          <div class="p-5 m-3">
            <a href="">
              <img src="/resources/images/이벤트뷰.PNG" class="w-100" alt="" />
            </a>
          </div>
        </div>
        <div class="d-flex justify-content-center mt-4">
          <a
            href="/event/eventList/1"
            class="btn text-light fw-bold d-flex align-items-center justify-content-center"
            style="
              background-color: rgb(55, 210, 67);
              height: 50px;
              width: 150px;
              border-radius: 9px 9px;
            "
            >목록</a
          >
        </div>
      </div>
    </div>
    <jsp:include page="../footer.jsp" />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
