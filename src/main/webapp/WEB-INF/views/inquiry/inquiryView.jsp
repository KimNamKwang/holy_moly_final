<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
  </head>

  <body
    class="bg-light"
    style="z-index: 1; font-family: 'Noto Sans KR', sans-serif"
  >
    <jsp:include page="../navbar.jsp" />

    <div class="container-fluid bg-white">
      <div
        class="fs-3 fw-bold d-flex align-items-center justify-content-center"
        style="height: 6rem"
      >
        1:1문의
      </div>
    </div>
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
                <div class="col fs-6 fw-bold">내가문의한제목</div>
                <div
                  class="col-auto p-1"
                  style="
                    background-color: rgb(242, 255, 216);
                    border-radius: 20px;
                    color: rgb(55, 210, 77);
                    font-size: 0.9rem;
                  "
                >
                  기타/서비스불만
                </div>
                <div
                  class="mt-1"
                  style="font-size: 0.9rem; color: rgb(165, 165, 165)"
                >
                  등록일 | 2023.01.10
                </div>
                <div class="fs-6 pt-3">문의내용문의내용</div>
              </div>
            </div>
          </div>
          <div class="text-start mt-4">
            <a
              href="./inquiryList"
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
