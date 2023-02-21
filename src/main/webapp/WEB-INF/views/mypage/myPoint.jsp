<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />

    <!-- 23.02.06추가 -->
    <link rel="stylesheet" href="/css/mypage.css" />

    <!-- 23.02.04추가 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css"
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

    <style>
      .hover:hover {
        outline: 1px solid rgb(55, 210, 67);
        color: rgb(55, 210, 67);
      }

      .color:hover {
        color: rgb(55, 210, 67);
      }

      span:hover {
        color: black;
      }

      #myMsgDialog {
        width: 40%;
        background-color: white;
        border: 1px solid white;
        border-radius: 15px;
        text-align: center;
      }

      #mButton {
        text-align: center;
        padding: 7px 30px;
        background-color: rgb(55, 210, 67);
        color: white;
        border-radius: 7px;
        font-size: 15px;
        border: 0;
      }

      /* 23.02.15추가 */
      #modal.modal-overlay {
        width: 100%;
        height: 100%;
        position: absolute;
        left: 0;
        top: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        background: rgba(255, 255, 255, 0.25);
        box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
        backdrop-filter: blur(1.5px);
        -webkit-backdrop-filter: blur(1.5px);
        border-radius: 10px;
        border: 1px solid rgba(255, 255, 255, 0.18);
      }
      #modal .modal-window {
        background: rgba(69, 139, 197, 0.7);
        box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
        backdrop-filter: blur(13.5px);
        -webkit-backdrop-filter: blur(13.5px);
        border-radius: 10px;
        border: 1px solid rgba(255, 255, 255, 0.18);
        width: 400px;
        height: 500px;
        position: relative;
        top: -100px;
        padding: 10px;
      }
      #modal .title {
        padding-left: 10px;
        display: inline;
        text-shadow: 1px 1px 2px gray;
        color: white;
      }
      #modal .title h2 {
        display: inline;
      }
      #modal .close-area {
        display: inline;
        float: right;
        padding-right: 10px;
        cursor: pointer;
        text-shadow: 1px 1px 2px gray;
        color: white;
      }

      #modal .content {
        margin-top: 20px;
        padding: 0px 10px;
        text-shadow: 1px 1px 2px gray;
        color: white;
      }

      #menu {
        width: 200px;
        margin: 100px auto;
        background: #f3f3f3;
        border: 1px solid #d8d8d8;
        text-align: center;
      }

      /* 23.02.15추가 */
    </style>
  </head>

  <body>
    <jsp:include page="../navbar.jsp" />

    <!-- Modal -->
    <div
      class="modal fade"
      id="exampleModal"
      tabindex="-1"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">
              <b>포인트 내역</b>
            </h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <div class="row mb-3">
              <div class="col-4">
                <b>날짜</b>
              </div>
              <div class="col-4">
                <b>적립/사용</b>
              </div>
              <div class="col-4">
                <b>&nbsp;&nbsp;금액</b>
              </div>
            </div>
            <div class="row">
              <div class="col-4">23.02.10</div>
              <div class="col-4">&nbsp;&nbsp; 적립</div>
              <div class="col-4">+3,000</div>
            </div>
            <div class="row">
              <div class="col-4">23.02.11</div>
              <div class="col-4">&nbsp;&nbsp; 적립</div>
              <div class="col-4">+1,300</div>
              <div class="col-4">23.02.12</div>
              <div class="col-4">&nbsp;&nbsp; 사용</div>
              <div class="col-4">-2,300</div>
              <div class="col-4">23.02.13</div>
              <div class="col-4">&nbsp;&nbsp; 적립</div>
              <div class="col-4">+5,300</div>
            </div>
          </div>

          <div class="modal-footer">
            <div class="col" style="color: rgb(55, 210, 67)">
              <img src="/images/포인트 아이콘.png" alt="" />
              123,000
            </div>
            <div class="text-align:center">
              <button
                type="button"
                class="btn btn-secondary"
                data-bs-dismiss="modal"
              >
                Close
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--modal 셋트-->

    <br /><br /><br />
    <div
      class="container"
      style="align-content: center; font-family: 'Noto Sans KR', sans-serif"
    >
      <div class="content-area group">
        <h2 class="mypage-title text-center"><b>포인트</b></h2>
        <br /><br />

        <!--23.02.15 추가-->

        <div
          class=""
          style="
            padding: 0px 0px 0px 300px;
            width: 1000px;
            height: 200px;
            font-size: 1.2rem;
          "
        >
          <div
            class="text-center p-5"
            style="border-radius: 20px; background-color: #0cb68a"
          >
            <div class="box-row">
              <span class="" style="color: white; font-size: 1.5em">
                <b>123,000원</b></span
              >
            </div>

            <br />

            <div class="find-btn text-center">
              <button
                type="button"
                class="btn btn-grey"
                data-bs-toggle="modal"
                data-bs-target="#exampleModal"
                style="
                  color: white;
                  background-color: #088b62;
                  border-color: #098f5a;
                "
              >
                포인트내역
              </button>

              <!-- <button onclick="showMsg()" type="button" class="btn btn-grey " 
                  style="color:white; background-color: #088b62; border-color:#098f5a;">포인트 선물</button> -->
            </div>
          </div>
        </div>
      </div>
      <!--content-area group-->
    </div>
    <!--container-->
    <!--footer-->

    <!-- 아래 dialog 태그 영역이 메시지 창 -->
    <!-- <dialog id="myMsgDialog" style="width:500px;">
    <h3>VIP, VVIP, PLATINUM, PURPLE 등급</h3> 
    <h3>서비스입니다.</h3>
    <input type="button" id="mButton" onclick="closeMsg()" value=" 확 인 " >
  </dialog>

  <script>
		function showMsg(){
			var dialog = document.getElementById("myMsgDialog");
			dialog.showModal();
		}
		
		function closeMsg(){
			var dialog = document.getElementById("myMsgDialog");
			dialog.close();
		}
	</script> -->

    <jsp:include page="../footer.jsp" />

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
