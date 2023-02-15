<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>고객센터 - FAQ</title>
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
        <li class="fs-3 fw-bold pe-5">
          <a href="" class="text-decoration-none text-dark"> FAQ </a>
        </li>
        <li class="fs-3 fw-bold ps-5" style="opacity: 0.5">
          <a href="${pageContext.request.contextPath}/inquiry/Inquiry" class="text-decoration-none text-dark">
            1:1문의
          </a>
        </li>
      </ul>
    </div>
    <div
      class="container-fluid"
      style="background-color: rgb(249, 249, 249); padding-bottom: 200px"
    >
      <div class="container d-flex justify-content-center">
        <div class="row">
          <div class="col-2">
            <ul class="list-unstyled pt-5" style="font-size: 1.2rem">
              <li class="fw-bold">
                <a href="" class="text-dark" style="text-decoration: none"
                  >전체</a
                >
              </li>
              <li style="margin-top: 40px">
                <a href="" style="text-decoration: none; color: rgb(80, 83, 80)"
                  >접수문의</a
                >
              </li>
              <li style="margin-top: 40px">
                <a href="" style="text-decoration: none; color: rgb(80, 83, 80)"
                  >배송문의</a
                >
              </li>
              <li style="margin-top: 40px">
                <a href="" style="text-decoration: none; color: rgb(80, 83, 80)"
                  >지도문의</a
                >
              </li>
              <li style="margin-top: 40px">
                <a href="" style="text-decoration: none; color: rgb(80, 83, 80)"
                  >사고문의</a
                >
              </li>
            </ul>
          </div>
          <div class="col-10 d-flex row justify-content-center text-center p-0">
            <div
              class="border p-4 mt-5"
              style="
                border-radius: 20px;
                background-color: white;
                width: 710px;
                margin: 0px 310px 0px 130px;
              "
            >
              <div>
                <input
                  type="text"
                  xn
                  class="w-100 border border-secondary border-opacity-10 p-3"
                  style="height: 50px; border-radius: 10px"
                  name="search"
                  placeholder="검색어"
                />
              </div>
              <div class="pt-3 mt-4">
                <ul class="list-unstyled">
                  <li class="row">
                    <div
                      class="col text-start"
                      style="color: rgb(81, 84, 81); font-size: 1.1rem"
                    >
                      <span
                        class="p-1 me-1"
                        style="
                          background-color: rgb(242, 255, 216);
                          border-radius: 20px;
                          color: rgb(55, 210, 77);
                          font-size: 0.9rem;
                        "
                      >
                        택배서비스
                      </span>
                      오늘 보내면 언제 배송 되나요?
                    </div>
                    <div class="col-auto">
                      <a
                        class="text-dark"
                        href="#collapseContent01"
                        data-bs-toggle="collapse"
                        ><span class="material-symbols-outlined">
                          expand_more
                        </span></a
                      >
                    </div>
                    <div
                      class="row collapse text-start pt-4"
                      id="collapseContent01"
                      style="color: rgb(108, 110, 108); font-size: 1.1rem"
                    >
                      <div class="col-2">&nbsp;</div>
                      <div class="col">
                        <div>
                          점포별 택배 마감시간 이전에 맡기신 물건은일반지역 :
                          2영업일 이내 배송제주 및 도서, 산간지역은 배송이
                          지연될 수 있습니다.(단 공휴일, 일요일, 천재지변시에는
                          배송기일에서 제외됩니다)
                        </div>
                        <div>
                          점포별 택배 마감시간은 평일 17시 (시,군,구 일부지역 및
                          경기 일부지역 15시), 토요일 12시 이며, 일요일 및
                          공휴일은 배송되지 않습니다.
                        </div>
                        <div class="pb-5">
                          택배 마감시간은 지역마다 다르므로 직접 문의 바랍니다.
                        </div>
                      </div>
                    </div>
                  </li>
                  <li class="row pt-4">
                    <div
                      class="col text-start"
                      style="color: rgb(81, 84, 81); font-size: 1.1rem"
                    >
                      <span
                        class="p-1 me-1"
                        style="
                          background-color: rgb(242, 255, 216);
                          border-radius: 20px;
                          color: rgb(55, 210, 77);
                          font-size: 0.9rem;
                        "
                      >
                        택배서비스
                      </span>
                      홈택배 예약정보를 수정하고 싶어요
                    </div>
                    <div class="col-auto">
                      <a
                        class="text-dark"
                        href="#collapseContent02"
                        data-bs-toggle="collapse"
                        ><span class="material-symbols-outlined">
                          expand_more
                        </span></a
                      >
                    </div>
                    <div
                      class="row collapse text-start pt-4"
                      id="collapseContent02"
                      style="color: rgb(108, 110, 108); font-size: 1.1rem"
                    >
                      <div class="col-2">&nbsp;</div>
                      <div class="col">
                        <div>예약정보 수정은 불가합니다.</div>
                        <div class="pb-5">
                          예약 취소 후 재접수로 이용 가능하며, 취소 불가한 경우
                          고객센터(1566-1025)로 연락바랍니다.
                        </div>
                      </div>
                    </div>
                  </li>
                  <li class="row pt-4">
                    <div
                      class="col text-start"
                      style="color: rgb(81, 84, 81); font-size: 1.1rem"
                    >
                      <span
                        class="p-1 me-1"
                        style="
                          background-color: rgb(242, 255, 216);
                          border-radius: 20px;
                          color: rgb(55, 210, 77);
                          font-size: 0.9rem;
                        "
                      >
                        위치서비스
                      </span>
                      인터넷 지도 위치가 잘못 되어 있는데요?
                    </div>
                    <div class="col-auto">
                      <a
                        class="text-dark"
                        href="#collapseContent03"
                        data-bs-toggle="collapse"
                        ><span class="material-symbols-outlined">
                          expand_more
                        </span></a
                      >
                    </div>
                    <div
                      class="row collapse text-start pt-4"
                      id="collapseContent03"
                      style="color: rgb(108, 110, 108); font-size: 1.1rem"
                    >
                      <div class="col-2">&nbsp;</div>
                      <div class="col">
                        <div class="pb-5">
                          현재 지도 상 위치가 정확하게 파악이 되지 않았습니다.
                          빠른 시일 내에 수정하여 반영하겠습니다.
                        </div>
                      </div>
                    </div>
                  </li>
                  <li class="row pt-4">
                    <div
                      class="col text-start"
                      style="color: rgb(81, 84, 81); font-size: 1.1rem"
                    >
                      <span
                        class="p-1 me-1"
                        style="
                          background-color: rgb(242, 255, 216);
                          border-radius: 20px;
                          color: rgb(55, 210, 77);
                          font-size: 0.9rem;
                        "
                      >
                        택배서비스
                      </span>
                      화물이 분실(파손)되면 어떻게 해야 하죠?
                    </div>
                    <div class="col-auto">
                      <a
                        class="text-dark"
                        href="#collapseContent04"
                        data-bs-toggle="collapse"
                        ><span class="material-symbols-outlined">
                          expand_more
                        </span></a
                      >
                    </div>
                    <div
                      class="row collapse text-start pt-4"
                      id="collapseContent04"
                      style="color: rgb(108, 110, 108); font-size: 1.1rem"
                    >
                      <div class="col-2">&nbsp;</div>
                      <div class="col">
                        <div>
                          화물이 분실 혹은 파손 되었을 경우에는 고객센터로
                          문의로 문의 부탁 드리겠습니다.
                        </div>
                        <div>
                          특히, 파손 시에는 화물의 포장상태와 파손내용을
                          택배사에서 확인할 수 있도록 그대로 유지한 상태에서
                          연락을 주시면, 사진이나 방문확인 등을 통해서
                          택배표준약관의 기준에 준하여 신속히 처리하여 드립니다.
                        </div>
                        <div class="pb-5">
                          단, 품목과 물품가액 고객 정보 등을 거짓 기재한 경우와
                          파손면책 동의 건, 포장이 충분하지 않은 건은 고객님
                          귀책이 있는 사안으로 빠른 처리가 어려울 수 있습니다.
                        </div>
                      </div>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- 여기부터 footer -->
    <footer
      class="pb-5"
      style="
        font-family: 'Noto Sans KR', sans-serif;
        background-color: rgb(246, 246, 245);
      "
    >
      <div class="container-fluid">
        <div style="font-size: 1.2rem">
          <ul
            class="d-flex justify-content-end list-unstyled pt-4 mt-5"
            style="height: 70px"
          >
            <li>
              <a
                class="text-decoration-none me-3 pe-3 border-end border-2"
                style="color: rgb(89, 89, 89)"
                href="./company_introduction.html"
                >회사소개</a
              >
            </li>
            <li>
              <a
                class="text-decoration-none me-3 pe-3 border-end border-2"
                style="color: rgb(89, 89, 89)"
                href="./terms.html"
                >이용약관</a
              >
            </li>
            <li>
              <a
                class="text-decoration-none me-3 pe-3 border-end border-2"
                style="color: rgb(89, 89, 89)"
                href="./termsPrivacy.html"
                >개인정보처리방침</a
              >
            </li>

            <li>
              <a
                class="text-decoration-none me-3 pe-3"
                style="color: rgb(89, 89, 89)"
                href="./Inquiry.html"
                >고객센터</a
              >
            </li>
          </ul>
        </div>
      </div>
      <div style="background-color: white">
        <div class="container">
          <div class="row pt-4 pb-4">
            <div class="col" style="color: rgb(147, 147, 147)">
              <div class="fw-bold fs-4" style="color: rgb(55, 210, 67)">
                1000-0110
              </div>
              <div class="pt-1 pb-1" style="font-size: 1.2rem">
                홈택배 고객센터
              </div>
              <div>평일 09~18시/ 토요일 09~13시</div>
              <div>(평일 점심시간 12~13시)</div>
            </div>
            <div class="col" style="color: rgb(147, 147, 147)">
              <div class="fw-bold fs-4" style="color: rgb(55, 210, 67)">
                1221-2211
              </div>
              <div class="pt-1 pb-1" style="font-size: 1.2rem">
                픽업/제휴 회원관련 문의
              </div>
              <div>평일 09~18시/ 토요일 09~13시</div>
              <div>(평일 점심시간 11:30~12:30)</div>
            </div>
            <div class="col" style="color: rgb(147, 147, 147)">
              <div class="fw-bold fs-4" style="color: rgb(55, 210, 67)">
                1771-7711
              </div>
              <div class="pt-1 pb-1" style="font-size: 1.2rem">
                홈페이지 관련문의
              </div>
              <div>평일 09~18시</div>
            </div>
          </div>
        </div>
      </div>
      <div>
        <div class="container" style="font-size: 0.85rem">
          <div class="mt-5 pt-5">
            <span class="border-end border-dark pe-2">대표자명</span>&nbsp;
            <span style="color: rgb(110, 110, 110)">강낭콩 </span>
          </div>
          <div class="row">
            <div class="col-auto pt-1">
              <span class="border-end border-dark pe-2">주소</span>&nbsp;
              <span style="color: rgb(110, 110, 110)"
                >서울특별시 광진구 광나루로56길,85 24층 1-13
              </span>
            </div>
            <div class="col-auto pt-1">
              <span class="text-nowrap">
                <span class="border-end border-dark pe-2">e-mail</span
                >&nbsp;<span style="color: rgb(110, 110, 110)"
                  >post@bgf.co.kr</span
                >
              </span>
            </div>
            <div class="col pt-1">
              <span class="border-end border-dark pe-2">FAX</span>&nbsp;<span
                style="color: rgb(110, 110, 110)"
                >02-1001-2977</span
              >
            </div>
          </div>
          <div class="row">
            <div class="col-auto pt-1">
              <span class="border-end border-dark pe-2">상호명</span>&nbsp;
              <span style="color: rgb(110, 110, 110)">(주)포스트네트웍스 </span>
            </div>
            <div class="col pt-1">
              <span class="border-end border-dark pe-2 ps-4"
                >사업자등록번호</span
              >
              &nbsp;<span style="color: rgb(110, 110, 110)">110-02-24397 </span>
            </div>
          </div>

          <div class="mt-4">
            <span class="text-dark" style="font-family: 'Zen Dots', cursive">
              <span class="fst-italic fw-bold ms-2">POST</span>
              <span class="material-symbols-outlined fw-bold align-middle">
                local_shipping
              </span>
            </span>
            <span class="ps-3"
              >Copyright ⓒ2016 CUpost ALL RIGHTS RESERVED.</span
            >
          </div>
        </div>
      </div>
    </footer>
    <!-- 여기까지 footer -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
