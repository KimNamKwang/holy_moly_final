<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> <%@ taglib
uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>고객문의 상세</title>
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
      style="background-color: rgb(249, 249, 249); padding-bottom: 500px"
    >
      <div class="container">
        <div class="d-flex row justify-content-center text-center">
          <div class="p-0" style="width: 710px">
            <div
              class="border p-4 mt-5"
              style="border-radius: 20px; background-color: white"
            >
              <div class="text-start">
                <div class="fs-5 fw-bold pb-4">1:1 문의 상세</div>
                <div class="row d-flex justify-content-between">
                  <div class="col fs-6 fw-bold">${resultMap.INQUIRY_TITLE}</div>
                  <div
                    class="col-auto p-1"
                    style="
                      background-color: rgb(242, 255, 216);
                      border-radius: 20px;
                      color: rgb(55, 210, 77);
                      font-size: 0.9rem;
                    "
                  >
                    ${resultMap.INQUIRY_TYPE_DESCRIPTION}
                  </div>
                  <div
                    class="mt-1"
                    style="font-size: 0.9rem; color: rgb(165, 165, 165)"
                  >
                    등록일 | ${resultMap.INQUIRY_DATE}
                  </div>
                  <div class="fs-6 pt-3">${resultMap.INQUIRY_CONTENT}</div>
                  <div class="col-auto">
                    <a class="text-dark" href="#collapseContent" data-bs-toggle="collapse"><span
                        class="material-symbols-outlined">
                        expand_more
                      </span></a>
                  </div>
                  <div class="row collapse text-start pt-4" id="collapseContent"
                    style="color: rgb(108, 110, 108); font-size: 1.1rem">
                    <div class="col">
                      <div class="fs-5 fw-bold pb-4">1:1 문의 답글</div>
                      <div class="pb-5">
                        ${resultMap.INQUIRY_ANSWER}
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
           
          
            <div class="text-start mt-4">
              <a
                href="/customer/inquiryList"
                class="btn btn-sm"
                style="
                  border-radius: 50px;
                  color: white;
                  background-color: rgb(165, 165, 165);
                "
                >BACK</a
              >
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
  </body>
</html>
