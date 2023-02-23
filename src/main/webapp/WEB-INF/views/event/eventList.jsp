<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>이벤트 목록</title>
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
    <div class="pt-5 pb-5" style="background-color: rgb(249, 249, 249)">
      <div class="container">
        <div class="row mb-5">
          <div class="col">
            <a
              href="/event/eventView"
              class="text-dark"
              style="text-decoration: none"
            >
              <div>
                <img
                  src="/resources/images/캐러셀1.png"
                  alt=""
                  style="width: 90%"
                />
              </div>
              <div class="fs-4 pt-3 pb-3">
                다량접수 할인 홈택배 2023년 2월 할인 이벤트!
              </div>
              <div>2022.11.30 ~ 2023.02.28</div>
            </a>
          </div>
          <div class="col">
            <a
              href="/event/eventView"
              class="text-dark"
              style="text-decoration: none"
            >
              <div>
                <img
                  src="/resources/images/캐러셀2.png"
                  alt=""
                  style="width: 90%"
                />
              </div>
              <div class="fs-4 pt-3 pb-3">
                택배 보내고 베토벤:Beethoven Secret 데이트 즐기자!
              </div>
              <div>2022.11.30 ~ 2023.02.28</div>
            </a>
          </div>
        </div>
        <div class="pt-3" style="margin-bottom: 80px">
          <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center">
              <li class="page-item">
                <a
                  class="page-link border-0"
                  style="
                    color: rgb(180, 180, 180);
                    background-color: rgb(249, 249, 249);
                  "
                  href="#"
                  aria-label="Previous"
                >
                  <span aria-hidden="true">&laquo;</span>
                  <span class="sr-only"></span>
                </a>
              </li>

              <li class="page-item">
                <a
                  class="page-link border-0"
                  style="
                    color: rgb(55, 210, 67);
                    background-color: rgb(249, 249, 249);
                  "
                  href="#"
                  >1</a
                >
              </li>
              <li class="page-item">
                <a
                  class="page-link border-0"
                  style="
                    color: rgb(180, 180, 180);
                    background-color: rgb(249, 249, 249);
                  "
                  href="#"
                  >2</a
                >
              </li>
              <li class="page-item">
                <a
                  class="page-link border-0"
                  style="
                    color: rgb(180, 180, 180);
                    background-color: rgb(249, 249, 249);
                  "
                  href="#"
                  >3</a
                >
              </li>

              <li class="page-item">
                <a
                  class="page-link border-0"
                  style="
                    color: rgb(180, 180, 180);
                    background-color: rgb(249, 249, 249);
                  "
                  href="#"
                  aria-label="Next"
                >
                  <span aria-hidden="true">&raquo;</span>
                  <span class="sr-only"></span>
                </a>
              </li>
            </ul>
          </nav>
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
