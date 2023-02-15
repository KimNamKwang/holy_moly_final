<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>고객문의 목록</title>
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
      input:focus {
        outline: 1px solid rgb(55, 210, 67);
      }
    </style>
  </head>

  <body style="z-index: 1; font-family: 'Noto Sans KR', sans-serif">
    <jsp:include page="../navbar.jsp" />

    <div class="container text-center">
      <div class="fs-1 fw-bold p-5">고객센터</div>
      <ul class="d-flex justify-content-center list-unstyled">
        <li class="fs-3 fw-bold pe-5" style="opacity: 0.5">
          <a
            href="${pageContext.request.contextPath}/faq/faqList"
            id="how_to_use"
            class="text-decoration-none text-dark"
          >
            FAQ
          </a>
        </li>
        <li class="fs-3 fw-bold ps-5" id="pee_notice">
          <a href="./Inquiry" class="text-decoration-none text-dark">
            1:1문의
          </a>
        </li>
      </ul>
    </div>
    <div
      class="container-fluid pb-5"
      style="background-color: rgb(249, 249, 249)"
    >
      <div class="d-flex row justify-content-center text-center">
        <div
          class="border p-4 mt-5"
          style="border-radius: 20px; background-color: white; width: 710px"
        >
          <div>
            <input
              type="text"
              xn
              class="w-100 border border-secondary border-opacity-25 p-3"
              style="height: 50px; border-radius: 10px"
              name="search"
              placeholder="검색어"
            />
          </div>
          <div class="border-top pt-3 mt-4">
            <table class="table">
              <tbody>
                <tr>
                  <td style="border-bottom: none; width: 100%">
                    <a href="./inquiryView" style="text-decoration: none">
                      <div class="row">
                        <div class="col text-start">
                          <div
                            class="text-secondary pb-2"
                            style="font-size: 0.9rem"
                          >
                            2023.01.10
                          </div>
                          <div class="fs-5 text-dark">내가문의한제목</div>
                        </div>
                        <div class="col text-end">
                          <div class="pb-2">
                            <span
                              class="p-1"
                              style="
                                background-color: rgb(242, 255, 216);
                                border-radius: 20px;
                                color: rgb(55, 210, 77);
                                font-size: 0.9rem;
                              "
                            >
                              기타/서비스불만
                            </span>
                          </div>
                          <div class="text-secondary">문의중</div>
                        </div>
                      </div>
                    </a>
                  </td>
                </tr>
              </tbody>
            </table>
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
