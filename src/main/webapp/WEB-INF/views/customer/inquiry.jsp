<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> <%@ taglib
uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>고객센터 - 1:1문의</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Zen+Dots&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0"
    />
    <style>
      .text-green {
        color: rgb(55, 210, 67);
      }
    </style>
    <script
      src="https://code.jquery.com/jquery-3.6.3.min.js"
      integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
      crossorigin="anonymous"
    ></script>
  </head>

  <body style="z-index: 1; font-family: 'Noto Sans KR', sans-serif">
    <jsp:include page="../navbar.jsp" />

    <div class="container text-center">
      <div class="fs-1 fw-bold p-5">고객센터</div>
      <ul class="d-flex justify-content-center list-unstyled">
        <li class="fs-3 fw-bold pe-5" style="opacity: 0.5">
          <a
            href="/customer/faqList"
            id="how_to_use"
            class="text-decoration-none text-dark"
          >
            FAQ
          </a>
        </li>
        <li class="fs-3 fw-bold ps-5" id="pee_notice">
          <a href="/customer/inquiry" class="text-decoration-none text-dark">
            1:1문의
          </a>
        </li>
      </ul>
    </div>
    <div
      class="container-fluid"
      style="background-color: rgb(249, 249, 249); padding-bottom: 200px"
    >
      <div class="d-flex row justify-content-center text-center">
        <div
          class="border p-5 m-5"
          style="border-radius: 20px; background-color: white; width: 710px"
        >
          <div class="fs-5 pb-2">
            <span class="fs-5 fw-bold text-green">POST</span>서비스에 대해
            궁금하신 점이 있으신가요?
          </div>
          <div class="pb-4">
            <span class="fw-bold">문의내용</span>을 남겨주시면 성실히
            답변해드리겠습니다.
          </div>
          <sec:authentication property="principal" var="userDetailsBean" />
          <div class="d-flex justify-content-center pb-4">
            <div class="row">
              <div class="col">
                <sec:authorize access="isAnonymous()">
                  <a
                    href="#"
                    onclick="doAlert()"
                    class="btn fw-bold"
                    style="
                      background-color: rgb(242, 255, 216);
                      color: rgb(55, 210, 67);
                      height: 45px;
                      width: 120px;
                      border-radius: 9px;
                    "
                  >
                    문의내역</a
                  >
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                  <form action="/customer/inquiryList" method="get">
                    <input type="hidden" name="USER_UID" value="${userDetailsBean.user_Uid}">
                    <button                      
                      class="btn fw-bold"
                      style="
                        background-color: rgb(242, 255, 216);
                        color: rgb(55, 210, 67);
                        height: 45px;
                        width: 120px;
                        border-radius: 9px;
                      "
                    >
                      문의내역
                    </button>
                  </form>
                </sec:authorize>
              </div>
              <div class="col">
                <sec:authorize access="isAnonymous()">
                  <a
                    href="#"
                    onclick="doAlert()"
                    class="btn text-light fw-bold"
                    style="
                      background-color: rgb(55, 210, 67);
                      height: 45px;
                      width: 120px;
                      border-radius: 9px;
                    "
                    >문의하기</a
                  >
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                  <a
                    href="/customer/memberInquiry"
                    class="btn text-light fw-bold"
                    style="
                      background-color: rgb(55, 210, 67);
                      height: 45px;
                      width: 120px;
                      border-radius: 9px;
                      padding-top: 9px;
                    "
                    >문의하기</a
                  >
                </sec:authorize>
              </div>
            </div>
          </div>
          <div class="p-3 border-top">
            <span class="fw-bold">택배 배송 문의</span>
            는 자세한 안내가 어렵습니다. 고객센터로
            <span class="fw-bold">직접 문의</span>
            바랍니다.
          </div>
          <div class="fs-5 fw-bold" style="color: rgb(55, 210, 67)">
            POST택배 1577-0000
          </div>
        </div>
      </div>
    </div>
    <jsp:include page="../footer.jsp" />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
    <script>
      function doAlert() {
        alert("1대1 문의는 회원전용입니다.");
      }
    </script>
  </body>
</html>
