<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>로그인</title>
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
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />
    <script
      src="https://code.jquery.com/jquery-3.6.3.slim.js"
      integrity="sha256-DKU1CmJ8kBuEwumaLuh9Tl/6ZB6jzGOBV/5YpNE2BWc="
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
    <jsp:include page="../navbar.jsp" />
    <main class="bg-light" style="font-family: 'Noto Sans KR', sans-serif">
      <div class="container" style="width: 650px">
        <form action="/common/login">
          <div class="fs-3 fw-bold mb-5 text-center" style="padding-top: 50px">
            회원정보
          </div>

          <div class="d-flex justify-content-center">
            <div
              class="bg-white border text-start w-100 p-5"
              style="border-radius: 20px"
            >
              <div>
                <div class="fs-4 fw-bold">김석진</div>
                <div class="mb-3">1996.04.11</div>
              </div>
              <div>
                <div class="form-check-label fw-bold pb-2">비밀번호</div>
                <div>
                  <input
                    class="form-control form-check-input w-100"
                    type="password"
                    name="userPassword"
                    id="userPassword"
                    placeholder="PW"
                    onchange="isSame()"
                    required
                    style="
                      height: 50px;
                      border-radius: 10px 10px;
                      border-color: rgb(242, 242, 242);
                    "
                  />
                </div>
              </div>
              <div>
                <div class="form-check-label fw-bold pb-2">비밀번호 확인</div>
                <div>
                  <input
                    class="form-control form-check-input w-100"
                    type="password"
                    name="userPasswordCheck"
                    id="userPasswordCheck"
                    placeholder="PW"
                    onchange="isSame()"
                    required
                    style="
                      height: 50px;
                      border-radius: 10px 10px;
                      border-color: rgb(242, 242, 242);
                    "
                  />
                </div>
                <div id="same"></div>
              </div>
              <div>
                <div class="form-check-label fw-bold pb-2">휴대폰 번호</div>
                <div>
                  <input
                    class="form-control form-check-input w-100"
                    type="text"
                    name="phone"
                    value="01050413846"
                    style="
                      height: 50px;
                      border-radius: 10px 10px;
                      border-color: rgb(242, 242, 242);
                    "
                  />
                </div>
              </div>
              <div>
                <div class="form-check-label fw-bold pb-2">주소</div>
                <div>
                  <input
                    type="button"
                    class="form-control mt-2"
                    style="width: 150px; border-color: rgb(242, 242, 242)"
                    onclick="sample6_execDaumPostcode()"
                    value="우편번호 찾기"
                  />
                  <input
                    class="form-control form-check-input w-100"
                    type="text"
                    id="sample6_postcode"
                    name="postcode"
                    placeholder="우편번호"
                    value="14506"
                    style="
                      height: 50px;
                      border-radius: 10px 10px;
                      border-color: rgb(242, 242, 242);
                    "
                  />
                  <input
                    class="form-control form-check-input w-100"
                    type="text"
                    id="sample6_address"
                    name="address"
                    placeholder="주소"
                    value="경기 부천시 상동로 196"
                    style="
                      height: 50px;
                      border-radius: 10px 10px;
                      border-color: rgb(242, 242, 242);
                    "
                  />
                  <input
                    class="form-control form-check-input w-100"
                    type="text"
                    id="sample6_detailAddress"
                    name="addressadd"
                    placeholder="상세주소"
                    value="2107동 1004호"
                    style="
                      height: 50px;
                      border-radius: 10px 10px;
                      border-color: rgb(242, 242, 242);
                    "
                  />
                  <input
                    class="form-control form-check-input w-100"
                    type="text"
                    id="sample6_extraAddress"
                    name="extraaddress"
                    placeholder="참고항목"
                    value="(상동, 다정한마을)"
                    style="
                      height: 50px;
                      border-radius: 10px 10px;
                      border-color: rgb(242, 242, 242);
                    "
                  />
                </div>
              </div>
            </div>
          </div>
          <!-- 버튼 구역 -->
          <div class="col text-end mt-2">
            <button
              class="btn btn-lg text-light fw-bold"
              style="
                background-color: rgb(55, 210, 67);
                border-radius: 50%;
                font-size: 1.3rem;
              "
            >
              ⅴ
            </button>
          </div>
        </form>
      </div>
      <br /><br /><br /><br />
    </main>
    <jsp:include page="../footer.jsp" />

    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
      function sample6_execDaumPostcode() {
        new daum.Postcode({
          oncomplete: function (data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ""; // 주소 변수
            var extraAddr = ""; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === "R") {
              // 사용자가 도로명 주소를 선택했을 경우
              addr = data.roadAddress;
            } else {
              // 사용자가 지번 주소를 선택했을 경우(J)
              addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if (data.userSelectedType === "R") {
              // 법정동명이 있을 경우 추가한다. (법정리는 제외)
              // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
              if (data.bname !== "" && /[동|로|가]$/g.test(data.bname)) {
                extraAddr += data.bname;
              }
              // 건물명이 있고, 공동주택일 경우 추가한다.
              if (data.buildingName !== "" && data.apartment === "Y") {
                extraAddr +=
                  extraAddr !== ""
                    ? ", " + data.buildingName
                    : data.buildingName;
              }
              // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
              if (extraAddr !== "") {
                extraAddr = " (" + extraAddr + ")";
              }
              // 조합된 참고항목을 해당 필드에 넣는다.
              document.getElementById("sample6_extraAddress").value = extraAddr;
            } else {
              document.getElementById("sample6_extraAddress").value = "";
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById("sample6_postcode").value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
          },
        }).open();
      }
    </script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
    <script>
      function isSame() {
        if (
          document.getElementById("userPassword").value != "" &&
          document.getElementById("userPasswordCheck").value != ""
        ) {
          if (
            document.getElementById("userPassword").value ==
            document.getElementById("userPasswordCheck").value
          ) {
            document.getElementById("same").innerHTML =
              "비밀번호가 일치합니다.";
            document.getElementById("same").style.color = "lightgreen";
            document.getElementById("target_btn").disabled = false;
            document.getElementById("target_btn").style.opacity = 1;
          } else {
            document.getElementById("same").innerHTML =
              "비밀번호가 일치하지 않습니다.";
            document.getElementById("same").style.color = "red";
            document.getElementById("target_btn").disabled = true;
            document.getElementById("target_btn").style.opacity = 0.25;
          }
        }
      }
    </script>
  </body>
</html>
