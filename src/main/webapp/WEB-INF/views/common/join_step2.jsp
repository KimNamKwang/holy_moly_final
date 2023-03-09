<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>정보입력</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Zen+Dots&display=swap" rel="stylesheet" />
    <link rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Zen+Dots&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="/resources/css/join.css" />
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"
      integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
  </head>

  <body class="bg-light" style="font-family: 'Noto Sans KR', sans-serif">
    <jsp:include page="../navbar.jsp" />
    <div class="container" style="width: 600px; padding-bottom: 200px">
      <div class="row mb-5 d-flex align-items-center text-start" style="padding-top: 150px">
        <div class="col-3 d-flex align-items-center">
          <a href="/index" class="navbar-brand">
            <div style="font-family: 'Zen Dots', cursive; color: rgb(76, 183, 86)">
              <span class="fst-italic fw-bold ms-2 fs-4">POST</span>
              <span class="material-symbols-outlined fw-bold align-middle">
                local_shipping
              </span>
            </div>
          </a>
        </div>
        <div class="col-2 text-green text-nowrap fs-5 fw-bold d-flex align-items-center">
          회원가입
        </div>
        <div class="col">
          <span style="text-decoration: line-through; color: rgb(55, 210, 67)">
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
          </span>
          <span style="text-decoration: line-through; color: rgb(210, 241, 212)">
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
          </span>
        </div>
      </div>
      <form action="/common/join_step3" method="get">
        <div class="bg-white border text-start p-4" style="border-radius: 20px">
          <table class="table align-middle table-borderless">
            <tr>
              <input type="hidden" name="MARKETING_RECEIVE_ACCEPTION"
                value="${resultMap.MARKETING_RECEIVE_ACCEPTION}" />
              <th style="vertical-align: top">이름</th>
              <td>
                <input type="text" class="form-control" name="Name" id="Name" placeholder="이름" required />
              </td>
            </tr>
            <tr>
              <th class="text-nowrap" style="vertical-align: top">아이디</th>
              <td class="d-flex">
                <input type="text" class="form-control w-75" name="USER_UID" id="USER_UID" minlength="4"
                  placeholder="아이디" required min="4" maxlength="20" />
                <div class="btn btn-outline-secondary ms-2" id="idCheck" style="width: 5rem; font-size: 13px;">
                  아이디<div>
                    중복체크
                  </div>
                </div>

              </td>

            </tr>
            <!-- <tr>
              <td>
              </td>
              <td>
                아이디는 4자 이상으로 입력해주세요.
              </td>
            </tr> -->

            <tr>
              <th class="text-nowrap" style="vertical-align: top">비밀번호</th>
              <td>
                <div>
                  <input type="password" class="form-control" name="PASSWORD" id="PASSWORD" minlength="8"
                    placeholder="비밀번호" onchange="isSame()" required />
                </div>
                <div>
                  <input type="password" class="form-control" name="PASSWORDCheck" id="PASSWORDCheck"
                    placeholder="비밀번호확인" onchange="isSame()" required />
                  <span id="same"></span>
                </div>
              </td>
            </tr>
          </table>
        </div>
        <div class="row">
          <div class="col mt-3">
            <a href="/common/join_step1" class="btn btn-sm" style="
                border-radius: 50px;
                background-color: rgb(165, 165, 165);
                color: white;
              ">BACK</a>
          </div>
          <div class="col text-end mt-3">
            <button id="toNext" disabled="disabled" class="btn btn-lg text-light fw-bold" type="submit" style="
                background-color: rgb(55, 210, 67);
                border-radius: 50%;
                font-size: 1.3rem;
              ">
              >
            </button>
          </div>
        </div>
      </form>
    </div>
    <jsp:include page="../footer.jsp" />
    <script>
      function isSame() {
        if (
          document.getElementById("PASSWORD").value != "" &&
          document.getElementById("PASSWORDCheck").value != ""
        ) {
          if (
            document.getElementById("PASSWORD").value ==
            document.getElementById("PASSWORDCheck").value
          ) {
            document.getElementById("same").innerHTML =
              "비밀번호가 일치합니다.";
            document.getElementById("same").style.color = "lightgreen";
            document.getElementById("toNext").disabled = false;
            document.getElementById("toNext").style.opacity = 1;
          } else {
            document.getElementById("same").innerHTML =
              "비밀번호가 일치하지 않습니다.";
            document.getElementById("same").style.color = "red";
            document.getElementById("toNext").disabled = true;
            document.getElementById("toNext").style.opacity = 0.25;
          }
        }
      }
    </script>

    <script>
      $(document).ready(function () {
        // let idForCheck = $("#USER_UID").val();
        $("#idCheck").click(function () {
          if ($("#USER_UID").val() == '') {
            alert("아이디를 입력해주세요")
          } else {
            $.ajax({
              url: "/forJoinStep2/id_check/",
              type: "GET",
              data: { rawID: $("#USER_UID").val() },
              success: function (data, status) {

                if (data == '') {
                  alert("사용가능한 아이디입니다")
                  $("#toNext").attr("disabled", false);
                } else {
                  alert("이미 존재하는 아이디입니다")
                  $("#toNext").attr("disabled", true);
                }
              },
              error: function (xhr, status, error) {
                alert("에러");
              },
              complete: function () {
              }
            })
          }
        })
      })
    </script>













    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"></script>
  </body>

  </html>