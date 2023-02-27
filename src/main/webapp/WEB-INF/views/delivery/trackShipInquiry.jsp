<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
      <!DOCTYPE html>
      <html lang="en">

      <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>배송조회</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link href="https://fonts.googleapis.com/css2?family=Zen+Dots&display=swap" rel="stylesheet" />
        <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Zen+Dots&display=swap"
          rel="stylesheet" />
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
        <script src="https://code.jquery.com/jquery-3.6.3.slim.js"
          integrity="sha256-DKU1CmJ8kBuEwumaLuh9Tl/6ZB6jzGOBV/5YpNE2BWc=" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.6.3.min.js"
          integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
        <style>
          .greenForCircle {
            background-color: rgb(227, 253, 174);
            border: 2px solid rgb(63, 231, 77);
            color: rgb(55, 210, 67);
          }

          .grayForCircle {
            background-color: rgb(247, 247, 247);

          }

          .greenForText {
            color: rgb(55, 210, 67);
          }

          .grayForText {
            color: rgb(134, 136, 138);
          }

          .greenForDot {
            background-color: rgb(55, 210, 77);
          }

          .grayForDot {
            background-color: rgb(201, 201, 201);
          }

          .darkForText {
            color: black;
          }
        </style>

      </head>

      <body style="font-family: 'Noto Sans KR', sans-serif">
        <jsp:include page="../navbar.jsp" />
        <main class="container-fluid d-flex flex-column justify-content-center pt-5"
          style="background-color: rgb(249, 249, 249); padding-bottom: 200px">
          <div class="container" style="width: 650px">
            <div class="text-center fs-2 fw-bold pb-5">배송조회</div>
            <div class="pb-2 mb-3 fw-bold fs-3" style="color: rgb(55, 210, 67)">
              조회결과
            </div>
            <div class="shadow-sm mt-4" style="
            border-radius: 10px 10px;
            background-color: white;
            padding: 30px;
          ">
              <div class="fs-5 fw-bold" style="color: rgb(55, 210, 67)">
                기본 배송정보
              </div>
              <c:set var="_resultOne" value="${resultMap.resultOne}" />
              <div class="row mt-4 mb-4">
                <div class="col">
                  <span class="fs-5 fw-bold">${_resultOne.TRACKING_NUMBER}</span>
                  <span class="fw-bold" style="
                  background-color: rgb(249, 249, 249);
                  border-radius: 20px;
                  color: rgb(55, 210, 77);
                  padding: 3px 8px 3px 8px;
                ">
                    ${_resultOne.PROGRESS_STATUS_DESCRIPTION}
                  </span>
                </div>
                <div class="col text-end" style="color: rgb(165, 166, 165)">
                  예약일자 : ${_resultOne.RESERVATION_DATE}
                </div>
              </div>
              <div class="row">
                <div class="col">
                  <div class="fw-bold mb-2" style="color: rgb(184, 185, 184)">
                    받는 분
                  </div>
                  <div>
                    <span class="fs-4 fw-bold">${_resultOne.RECIPIENT_NAME}</span>
                    <span class="ps-2 ms-4"
                      style="border-left: 1px solid rgb(184, 185, 184)">${_resultOne.ITEM_TYPE_DESCRIPTION}</span>
                  </div>
                </div>
                <div class="col-auto">
                  <div class="fw-bold mb-2" style="color: rgb(184, 185, 184)">
                    보내는 분
                  </div>
                  <div>
                    <span class="fs-4 fw-bold">${_resultOne.SENDER_NAME}</span>
                    <span class="fw-bold" style="
                    background-color: rgb(249, 249, 249);
                    border-radius: 20px;
                    color: rgb(55, 210, 77);
                    padding: 3px 8px 3px 8px;
                  ">
                      <!-- 선불 -->
                    </span>
                  </div>
                </div>
              </div>
              <div class="fs-5 mt-4 mb-2 fw-bold" style="color: rgb(55, 210, 77)">
                배송상태
              </div>
              <div style="color: rgb(184, 185, 184)">
                고객님의 개인정보 보호를 위하여 일부 *표 처리 하였습니다.
              </div>
              <c:set var="PROGRESS_STATUS_DESCRIPTION" value="${_resultOne.PROGRESS_STATUS_DESCRIPTION}" />
              <div class="p-4 mt-4" style="
              border: 1px solid rgb(201, 201, 201);
              border-radius: 15px 15px;
            ">
                <div class="row" style="color: rgb(184, 185, 184); padding-left: 10px">
                  <div class="col
                  d-flex flex-column justify-content-center">
                    <div
                      class="rounded-circle ${PROGRESS_STATUS_DESCRIPTION == '접수완료' ? 'greenForCircle' : 'grayForCircle' } d-flex flex-column align-items-center justify-content-center"
                      style="
                    width: 80px;
                    height: 80px;
                  ">
                      <div>
                        <img src="/resources/images/접수완료.png" style="width: 44px; height: 44px" alt="" />
                      </div>
                    </div>
                    <div class="text-center ${PROGRESS_STATUS_DESCRIPTION == '접수완료' ? 'greenForText' : '' } pt-2">
                      접수완료</div>
                  </div>
                  <div
                    class="col-auto ${PROGRESS_STATUS_DESCRIPTION == '접수완료' ? 'greenForText' : '' } d-flex align-items-center">
                    ></div>
                  <div class="col">
                    <div
                      class="rounded-circle ${PROGRESS_STATUS_DESCRIPTION == '수거완료' ? 'greenForText' : 'grayForCircle' } d-flex flex-column align-items-center justify-content-center"
                      style="
                    width: 80px;
                    height: 80px;
                   ;
                  ">
                      <div>
                        <img src="/resources/images/배송중.png" style="width: 45px; height: 45px" alt="" />
                      </div>
                    </div>
                    <div class="text-center ${PROGRESS_STATUS_DESCRIPTION == '수거완료' ? 'greenForText' : '' } pt-2">수거완료
                    </div>
                  </div>
                  <div
                    class="col-auto ${PROGRESS_STATUS_DESCRIPTION == '수거완료' ? 'greenForText' : '' } d-flex align-items-center">
                    ></div>
                  <div class="col">
                    <div
                      class="rounded-circle ${PROGRESS_STATUS_DESCRIPTION == '배송중' ? 'greenForCircle' : 'grayForCircle' } d-flex flex-column align-items-center justify-content-center"
                      style="
                    width: 80px;
                    height: 80px;
                  ;
                  ">
                      <div>
                        <img src="/resources/images/택배이용안내.png" style="width: 55px; height: 55px" alt="" />
                      </div>
                    </div>
                    <div class="text-center ${PROGRESS_STATUS_DESCRIPTION == '배송중' ? 'greenForText' : '' }  pt-2">배송중
                    </div>
                  </div>
                  <div
                    class="col-auto d-flex ${PROGRESS_STATUS_DESCRIPTION == '배송중' ? 'greenForText' : '' } align-items-center">
                    >
                  </div>
                  <div class="col">
                    <div
                      class="rounded-circle ${PROGRESS_STATUS_DESCRIPTION == '배송완료' ? 'greenForCircle' : 'grayForCircle' } d-flex flex-column align-items-center justify-content-center"
                      style="
                    width: 80px;
                    height: 80px;
                  ">
                      <div>
                        <img src="/resources/images/배송완료.png" style="width: 45px; height: 45px" alt="" />
                      </div>
                    </div>
                    <div class="text-center ${PROGRESS_STATUS_DESCRIPTION == '배송완료' ? 'greenForText' : '' } pt-2">
                      배송완료
                    </div>
                  </div>
                </div>
              </div>



              <c:set var="listCount" value="${resultMap.resultList.size()}" />

              <c:forEach items="${resultMap.resultList}" var="_resultList" varStatus="loop">

                <div class="row d-flex align-items-center mt-4">
                  <div class=" col-auto fw-bold ${listCount == loop.count ? 'darkFortext' : 'grayForText' }">
                    <div>${_resultList.PROGRESS_STATUS_TIME}</div>
                  </div>
                  <div class="col-auto">
                    <div class="${listCount == loop.count ? 'greenForDot' : 'grayForDot' }" style="
                  width: 15px;
                  height: 15px;
                  border-radius: 50%;
                "></div>
                  </div>
                  <div
                    class="col fs-5 fw-bold col fs-5 fw-bold ${listCount == loop.count ? 'darkForText' : 'grayForText' }">
                    ${_resultList.PROGRESS_STATUS_DESCRIPTION}</div>
                </div>
              </c:forEach>









              <%-- <div class="row d-flex align-items-center mt-5">
                <div class="col-auto fw-bold ${PROGRESS_STATUS_DESCRIPTION == '수거완료' ? 'darkFortext' : 'grayForText' }">
                  <div>2023-02-16</div>
                  <div>16:39</div>
                </div>
                <div class="col-auto">
                  <div class="${PROGRESS_STATUS_DESCRIPTION == '수거완료' ? 'greenForDot' : 'grayForDot' }" style="              
                  width: 15px;
                  height: 15px;
                  border-radius: 50%;
                "></div>
                </div>
                <div class="col fs-5 fw-bold ${PROGRESS_STATUS_DESCRIPTION == '수거완료' ? 'darkForText' : 'grayForText' }">
                  수거완료</div>
            </div>
            <div class="row d-flex align-items-center mt-5">
              <div class="col-auto fw-bold ${PROGRESS_STATUS_DESCRIPTION == '배송중' ? 'darkFortext' : 'grayForText' }">
                <div>2023-02-16</div>
                <div>16:39</div>
              </div>
              <div class="col-auto">
                <div class="${PROGRESS_STATUS_DESCRIPTION == '배송중' ? 'greenForDot' : 'grayForDot' }" style="
               
                  width: 15px;
                  height: 15px;
                  border-radius: 50%;
                "></div>
              </div>
              <div class="col fs-5 fw-bold ${PROGRESS_STATUS_DESCRIPTION == '배송중' ? 'darkForText' : 'grayForText' }">
                배송중</div>
            </div>
            <div class="row d-flex align-items-center mt-5">
              <div class="col-auto fw-bold ${PROGRESS_STATUS_DESCRIPTION == '배송완료' ? 'darkFortext' : 'grayForText' }">
                <div>2023-02-16</div>
                <div>20:39</div>
              </div>
              <div class="col-auto">
                <div class="${PROGRESS_STATUS_DESCRIPTION == '배송완료' ? 'greenForDot' : 'grayForDot' }" style="                  
                  width: 15px;
                  height: 15px;
                  border-radius: 50%;
                "></div>
              </div>
              <div class="col fs-5 fw-bold ${PROGRESS_STATUS_DESCRIPTION == '배송완료' ? 'darkForText' : 'grayForText' }">
                배송완료
              </div>
            </div>
            --%>
          </div>
          <div class="mt-4">
            <a href="/delivery/trackShipment" class="btn btnd-sm" style="
              border-radius: 50px;
              color: white;
              background-color: rgb(165, 165, 165);
            ">BACK</a>
          </div>
          </div>
        </main>
        <jsp:include page="../footer.jsp" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
          crossorigin="anonymous"></script>
      </body>

      </html>