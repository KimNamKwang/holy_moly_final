<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
      <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
          <meta charset="UTF-8" />
          <meta http-equiv="X-UA-Compatible" content="IE=edge" />
          <meta name="viewport" content="width=device-width, initial-scale=1.0" />
          <title>관리자 - 사용자 수정</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
            crossorigin="anonymous" />
          <link rel="preconnect" href="https://fonts.googleapis.com" />
          <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
          <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Zen+Dots&display=swap"
            rel="stylesheet" />
          <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheactionet" />
          <link rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
          <style>
            input::-webkit-outer-spin-button,
            input::-webkit-inner-spin-button {
              -webkit-appearance: none;
              margin: 0;
            }
          </style>
          <script src="https://code.jquery.com/jquery-3.6.3.min.js"
            integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
        </head>

        <body style="z-index: 1; font-family: 'Noto Sans KR', sans-serif">
          <jsp:include page="../navbar.jsp" />
          <main>
            <div class="container-fluid d-flex flex-column justify-content-center pt-5"
              style="background-color: rgb(249, 249, 249); padding-bottom: 200px">
              <div class="container" style="width: 650px">
                <!-- 이용방법 -->
                <div class="fs-3 fw-bold pb-3">배송 수정</div>
                <form action="/admin/adminUpdateShipmentProgress" method="get">
                  <div class="shadow-sm p-4 mb-4" style="border-radius: 10px 10px; background-color: white">
                    <table class="table align-middle mb-0">
                      <tr>
                        <th>운송장번호</th>
                        <td>
                          ${resultMap.TRACKING_NUMBER}
                        </td>
                      </tr>
                      <input type="hidden" name="TRACKING_NUMBER" value="${resultMap.TRACKING_NUMBER}">
                      <tr>
                        <th>배송진행상태</th>
                        <td>
                          ${resultMap.PROGRESS_STATUS_DESCRIPTION}

                          <c:set var="PROGRESS_STATUS" value="${resultMap.PROGRESS_STATUS_DESCRIPTION}" />

                          <%-- uid는 새로 랜덤생성해서 넣어줘야 함 --%>
                            <select name="PROGRESS_STATUS_TYPE">
                                <option value="PICKUP">수거완료</option>
                                <option value="IN_PROGRESS">배송중</option>
                                <option value="COMPLETE">배송완료</option>
                             
                            </select>
                        </td>
                      </tr>
                      <tr>
                        <th>배송유형</th>
                        <td>
                          ${resultMap.SHIPMENT_TYPE_DESCRIPTION}
                        </td>
                      </tr>
                      <tr>
                        <th>물품종류</th>
                        <td>
                          ${resultMap.ITEM_TYPE_DESCRIPTION}
                        </td>
                      </tr>
                      <tr>
                        <th class="text-nowrap">총 배송수량</th>
                        <td>
                          ${resultMap.NUMBER_OF_ITEMS}
                        </td>
                      </tr>
                      <th>발신자 이름</th>
                      <td>
                        ${resultMap.SENDER_NAME}
                      </td>
                      </tr>
                      <tr>
                        <th>발신자 전화번호</th>
                        <td>
                          ${resultMap.SENDER_PHONE}
                        </td>
                      </tr>
                      <tr>
                        <th>출발지 우편번호</th>
                        <td>${resultMap.DEPARTURE_POSTALCODE}</td>
                      </tr>
                      <tr>
                        <th>출발지 주소</th>
                        <td>${resultMap.DEPARTURE_ADDRESS}</td>
                      </tr>
                      <tr>
                        <th>출발지 상세주소</th>
                        <td>${resultMap.DEPARTURE_DETAILADDRESS}</td>
                      </tr>
                      <tr>
                        <th>출발지 주소 참고사항</th>
                        <td>${resultMap.DEPARTURE_EXTRAADDRESS}</td>
                      </tr>
                      <tr>
                        <th>수령자 이름</th>
                        <td>${resultMap.RECIPIENT_NAME}</td>
                      </tr>
                      <tr>
                        <th>수령자 전화번호</th>
                        <td>${resultMap.RECIPIENT_PHONE}</td>
                      </tr>
                      <tr>
                        <th>목적지 우편번호</th>
                        <td>${resultMap.DESTINATION_POSTALCODE}</td>
                      </tr>
                      <tr>
                        <th>목적지 주소</th>
                        <td>${resultMap.DESTINATION_ADDRESS}</td>
                      </tr>
                      <tr>
                        <th>목적지 상세주소</th>
                        <td>${resultMap.DESTINATION_DETAILADDRESS}</td>
                      </tr>
                      <tr>
                        <th>목적지 주소 참고사항</th>
                        <td>${resultMap.DESTINATION_EXTRAADDRESS}</td>
                      </tr>
                      <tr>
                        <th>총요금</th>
                        <td>${resultMap.TOTAL_PRICE} 원</td>
                      </tr>
                      <tr>
                        <th>물품단가</th>
                        <td>${resultMap.ITEM_PRICE} 원</td>
                      </tr>
                      <tr>
                        <th>배송비밀번호</th>
                        <td>${resultMap.SHIPMENT_PASSWORD}</td>
                      </tr>
                      <tr>
                        <th>예약날짜</th>
                        <td>
                          ${resultMap.RESERVATION_DATE}</td>
                      </tr>
                      <tr>
                        <th>방문희망일</th>
                        <td>${resultMap.VISITING_DATE}</td>
                      </tr>
                      <tr>
                        <th>요청사항</th>
                        <td>${resultMap.REQUEST_DESCRIPTION}</td>
                      </tr>
                    </table>
                  </div>
                  
                  <div class="text-center">
                    <a onClick="history.go(-1)" class="btn btn-secondary me-2" style="width: 150px">이전</a>
                    <button class="btn btn-outline-secondary ms-2" style="width: 150px">
                      완료
                    </button>
                  </div>
                </form>
              </div>
            </div>
          </main>
          <jsp:include page="../footer.jsp" />

          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
            crossorigin="anonymous"></script>
          <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

        </body>

        </html>