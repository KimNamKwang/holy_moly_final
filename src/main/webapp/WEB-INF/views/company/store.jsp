<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>점포찾기</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Zen+Dots&display=swap"
      rel="stylesheet"
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
  <body>
    <jsp:include page="../navbar.jsp" />
    <div
      class="container d-flex justify-content-center"
      style="font-family: 'Noto Sans KR', sans-serif"
    >
      <div style="width: 1000px">
        <div class="p-1" style="background-color: rgb(76, 183, 86)">
          <span style="font-family: 'Zen Dots', cursive; color: white">
            <span class="fst-italic fw-bold ms-2 fs-5">POST</span>
            <span class="material-symbols-outlined fw-bold align-middle">
              local_shipping
            </span>
          </span>
          <span style="color: white">점포찾기</span>
        </div>
        <div class="row m-0" style="width: 1000px">
          <div class="col p-0">
            <iframe
              src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2661.796288633348!2d127.02617191610594!3d37.49784400131752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca19dc90d1911%3A0x6d41fc583e01c3c9!2zQ1Ug6rCV64Ko7IS87YOA7KCQ!5e0!3m2!1sko!2skr!4v1675314557685!5m2!1sko!2skr"
              width="1000"
              height="450"
              style="border: 0"
              allowfullscreen=""
              loading="lazy"
              referrerpolicy="no-referrer-when-downgrade"
            ></iframe>
          </div>
          <!--
            <div
              class="col ps-0 text-center fs-2 fw-bold"
              style="background-color: rgb(246, 246, 245)"
            >
              준비중입니다
            </div>
          -->
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
