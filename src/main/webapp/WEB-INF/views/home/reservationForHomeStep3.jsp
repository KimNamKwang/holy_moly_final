<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
      <%@ taglib
      uri="http://www.springframework.org/security/tags" prefix="sec" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
          <meta charset="UTF-8" />
          <meta http-equiv="X-UA-Compatible" content="IE=edge" />
          <meta name="viewport" content="width=device-width, initial-scale=1.0" />
          <title>Document</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
            crossorigin="anonymous" />
          <link rel="preconnect" href="https://fonts.googleapis.com" />
          <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
          <link href="https://fonts.googleapis.com/css2?family=Zen+Dots&display=swap" rel="stylesheet" />
          <link rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
          <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Zen+Dots&display=swap"
            rel="stylesheet" />
          <script src="https://code.jquery.com/jquery-3.6.3.min.js"
            integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
        </head>

        <body>
          <jsp:include page="../navbar.jsp" />
          <main class="container" style="font-family: 'Noto Sans KR', sans-serif">
            <form action="/home/payment" method="get">
              <div class="mt-5">
                <div class="fs-4 fw-bold pb-2">상품이용내역</div>
                <table class="table table-bordered mb-5">
                  <colgroup>
                    <col style="width: 33%" />
                    <col style="width: 27%" />
                    <col style="width: 14%" />
                    <col style="width: 26%" />
                  </colgroup>
                  <tbody>
                    <%-- 여기부터 input hidden으로 넘기는 parameter들 --%>
                      <input type="hidden" name="NUMBER_OF_ITEMS" value="${resultMap.NUMBER_OF_ITEMS}" />
                      <input type="hidden" name="SENDER_NAME" value="${resultMap.SENDER_NAME}" />
                      <input type="hidden" name="SENDER_PHONE"
                        value="${resultMap.phoneFirst}${resultMap.phoneSecond}${resultMap.phoneThird}" />
                      <input type="hidden" name="DEPARTURE_POSTALCODE" value="${resultMap.DEPARTURE_POSTALCODE}" />
                      <input type="hidden" name="DEPARTURE_ADDRESS" value="${resultMap.DEPARTURE_ADDRESS}" />
                      <input type="hidden" name="DEPARTURE_DETAILADDRESS"
                        value="${resultMap.DEPARTURE_DETAILADDRESS}" />
                      <input type="hidden" name="DEPARTURE_EXTRAADDRESS" value="${resultMap.DEPARTURE_EXTRAADDRESS}" />
                      <input type="hidden" name="RECIPIENT_NAME" value="${resultMap.RECIPIENT_NAME}" />
                      <input type="hidden" name="RECIPIENT_PHONE"
                        value="${resultMap.phoneFirst}${resultMap.phoneSecond}${resultMap.phoneThird}" />
                      <input type="hidden" name="DESTINATION_POSTALCODE" value="${resultMap.DESTINATION_POSTALCODE}" />
                      <input type="hidden" name="DESTINATION_ADDRESS" value="${resultMap.DESTINATION_ADDRESS}" />
                      <input type="hidden" name="DESTINATION_DETAILADDRESS"
                        value="${resultMap.DESTINATION_DETAILADDRESS}" />
                      <input type="hidden" name="DESTINATION_EXTRAADDRESS"
                        value="${resultMap.DESTINATION_EXTRAADDRESS}" /> 
                      <input type="hidden" name="TOTAL_PRICE_BEFORE_DISCOUNT" value="${resultMap.NUMBER_OF_ITEMS * 6990}" />
                      <input type="hidden" name="ITEM_PRICE" value="${resultMap.ITEM_PRICE}" />
                      <input type="hidden" name="SHIPMENT_PASSWORD" value="${resultMap.SHIPMENT_PASSWORD}" />
                      <input type="hidden" name="VISITING_DATE" value="${resultMap.VISITING_DATE}" />
                      <%-- SHIPMENT_TYPE_UID와 SHIPMENT_TYPE_DESCRIPTION은 일반택배라면 하드코딩 고정. --%>
                        <input type="hidden" name="SHIPMENT_TYPE_DESCRIPTION" value="일반 택배" />
                        <input type="hidden" name="SHIPMENT_TYPE_UID" value="SHIP_GEN" />
                        <input type="hidden" name="REQUEST_UID" value="${resultMap.REQUEST_UID}" />
                        <input type="hidden" name="ITEM_TYPE_UID" value="${resultMap.ITEM_TYPE_UID}" />
                        <%-- 여기까지 input hidden으로 넘기는 parameter들 --%>
                          <tr class="bg-secondary bg-opacity-10">
                            <th scope="col">상품명</th>
                            <th scope="col">방문희망일</th>
                            <th scope="col" class="text-nowrap">박스수량</th>
                            <th scope="col" class="last">운임합계</th>
                          </tr>
                          <tr>
                            <td>${resultMap.SHIPMENT_TYPE_DESCRIPTION}</td>
                            <td>${resultMap.VISITING_DATE}</td>
                            <td>${resultMap.NUMBER_OF_ITEMS} 개</td>
                            <td class="font07 last">
                              ${resultMap.NUMBER_OF_ITEMS * 6990} 원
                            </td>
                          </tr>
                  </tbody>
                </table>
                <div class="fs-4 fw-bold pb-2">
                  예상결제내역
                </div>
                <table class="table table-bordered mb-5">
                  <colgroup>
                    <col style="width: 33%" />
                    <col style="width: 34%" />
                    <col style="width: 33%" />
                  </colgroup>
                  <tbody>
                    <tr class="bg-secondary bg-opacity-10">
                      <th scope="col">상품금액</th>
                      <th scope="col">할인금액</th>
                      <th scope="col">결제금액</th>
                    </tr>
                    <tr>
                      <td class="font07">${resultMap.NUMBER_OF_ITEMS * 6990} 원</td>                     
                      <td class="font07">
                        <sec:authorize access="isAnonymous()">
                          <%-- anonymous인지 확인(로그인이 안 되어 있는지) --%> 
                          0
                        </sec:authorize>
                       
                        <sec:authentication property="principal" var="userDetailsBean" />
                        <c:set var="USER_GRADE_UID" value="${userDetailsBean.userGrade}" />                    
                       

                        <%-- 로그인이 되어있을때 --%>                        
                          <sec:authorize access="isAuthenticated()">
                          <c:set var="ITEM_COUNT" value=" ${resultMap.NUMBER_OF_ITEMS}" />
                          
                            <c:choose>
                              <c:when test="${USER_GRADE_UID == 'GRADE_F'}">
                                ${resultMap.NUMBER_OF_ITEMS * 6990 * 0.02}
                                <c:set var="TOTAL_PRICE"
                                  value="${(resultMap.NUMBER_OF_ITEMS * 6990) - resultMap.NUMBER_OF_ITEMS * 6990 * 0.02}" />
                              </c:when>
                              <c:when test="${USER_GRADE_UID == 'GRADE_PU'}">
                                ${resultMap.NUMBER_OF_ITEMS * 6990 * 0.04}
                                <c:set var="TOTAL_PRICE"
                                  value="${(resultMap.NUMBER_OF_ITEMS * 6990) - resultMap.NUMBER_OF_ITEMS * 6990 * 0.04}" />
                              </c:when>
                              <c:when test="${USER_GRADE_UID == 'GRADE_V'}">
                                ${resultMap.NUMBER_OF_ITEMS * 6990 * 0.06}
                                <c:set var="TOTAL_PRICE"
                                  value="${(resultMap.NUMBER_OF_ITEMS * 6990) - resultMap.NUMBER_OF_ITEMS * 6990 * 0.06}" />
                              </c:when>
                              <c:when test="${USER_GRADE_UID == 'GRADE_VV'}">
                                ${resultMap.NUMBER_OF_ITEMS * 6990 * 0.08}
                                <c:set var="TOTAL_PRICE"
                                  value="${(resultMap.NUMBER_OF_ITEMS * 6990) - resultMap.NUMBER_OF_ITEMS * 6990 * 0.08}" />
                              </c:when>
                              <c:otherwise>
                                ${resultMap.NUMBER_OF_ITEMS * 6990 * 0.1}
                                <c:set var="TOTAL_PRICE"
                                  value="${(resultMap.NUMBER_OF_ITEMS * 6990) - resultMap.NUMBER_OF_ITEMS * 6990 * 0.1}" />
                              </c:otherwise>
                            </c:choose>
                          </sec:authorize>
                          원
                      </td>
                      <td class="font07">${TOTAL_PRICE}원</td>
                      <input type="hidden" value="${TOTAL_PRICE}" name="TOTAL_PRICE">
                    </tr>
                  </tbody>
                </table>

                <div class="fs-5 fw-bold pb-2">보내는 사람</div>
                <div class="border border-1 mb-5 p-2">
                  <div>${resultMap.SENDER_NAME}(H.P:${resultMap.SENDER_PHONE})</div>
                  <div>
                    ${resultMap.DEPARTURE_ADDRESS} ${resultMap.DEPARTURE_DETAILADDRESS}
                  </div>
                </div>
                <div class="fs-5 fw-bold pb-2">받는 사람</div>
                <div class="border border-1 p-2">
                  <div>${resultMap.RECIPIENT_NAME}(H.P:010-1324-2321)</div>
                  <div>
                    ${resultMap.DESTINATION_ADDRESS}
                    ${resultMap.DESTINATION_DETAILADDRESS}
                  </div>
                  <div>(포장수량: ${resultMap.NUMBER_OF_ITEMS} 박스)-일반:${resultMap.NUMBER_OF_ITEMS}</div>
                  <div>
                    물품:
                    <c:set var="ITEM_TYPE" value="${resultMap.ITEM_TYPE_UID}" />
                    <c:if test="${fn:contains(ITEM_TYPE,'f')}"> 농축산물류 </c:if>
                    <c:if test="${fn:contains(ITEM_TYPE,'b')}"> 서적 </c:if>
                    <c:if test="${fn:contains(ITEM_TYPE,'_m')}"> 약품류 </c:if>
                    <c:if test="${fn:contains(ITEM_TYPE,'c')}"> 의류/잡화 </c:if>

                  </div>
                  <div>
                    가격: ${resultMap.NUMBER_OF_ITEMS * resultMap.ITEM_PRICE} 만원
                  </div>
                </div>
                <div class="border border-1 mt-5 p-2">
                  <ul class="list-unstyled">
                    <li>
                      &nbsp;&nbsp;&nbsp;* 고객님! 택배물품 포장상태를 확인해 주세요.
                    </li>
                    <li>&nbsp;&nbsp;&nbsp;* 고객님! 집하요청일을 확인해주세요.</li>
                  </ul>

                  <ol class="l_info_1">
                    <li>
                      배송사원이 택배 물품 수령 방문 시, 상품 종류에 따라 적합하게
                      물품이 포장 되어 있어야 접수가 가능합니다.
                    </li>
                    <!--<li>박스 당 내품가액 50만원 이하의 물품만 예약가능하며 금액초과 물품을 집하요청하였을 경우 집하를 거부할수 있습니다.</li>-->
                    <li>박스 당 내품가액 50만원 이하의 물품만 예약가능합니다.</li>
                    <li>
                      <!--접수하신 물품이 물품규격 이외의 물품이거나 취급불가 물품, 또는 포장불량인 경우 집하거부 될 수 있으며 취소수수료가 발생합니다. -->
                      보내실 물품이 접수가능규격초과,포장불량,취급불가 품목일 경우
                      집하거부되거나 추가운임이 할증될 수 있습니다.
                      <!--<a href="javascript:layerOpen(jQuery('div[id=divLayerPop]'));" class="bt_gra">
                고객 유의사항 다시 보기
              </a>-->
                    </li>
                    <li>
                      군부대 및 사서함을 이용한 주소는 집하 및 배송이 되지 않습니다.
                    </li>
                    <li>
                      예약 시 예약한 수하인 주소가 부정확하거나 배송이 불가한 주소지로
                      입력 시 반송비용은 송하인이 부담해야 합니다.
                    </li>

                    <li>
                      집하 및 배송지연 문의는 택배사고객센터로 문의 해 주시기 바랍니다
                    </li>
                    <!--<li>
              착불택배를 예약하신 경우,택배를 받으신 분이 착불택배비를 결제하지 않거나 로지아이 홈페이지의 결제페이지를 통하지 않고 택배기사에게 현금으로 지급한 경우,  예약 시 예치하신 착불보증금은 반환되지 않않으므로 택배를 받으시는 분께 착불요금 결제방법을 반드시 알려주시기 바랍니다. 특히 쇼핑몰 반품이나 AS를 위해 업체로 보내시는 경우, 로지아이 홈페이지에서 착불택배비 결제가능여부 협의 후 접수해 주시기 바랍니다. 
            </li>-->
                  </ol>
                </div>

                <div class="d-flex justify-content-center mt-5" style="margin-bottom: 70px">
                  <a href="/home/reservationForHomeStep2" class="btn btn-secondary me-3"
                    style="width: 12rem; height: 3rem; padding-top: 11px">
                    이전단계
                  </a>
                  <button class="btn me-3 text-light" style="
                width: 12rem;
                height: 3rem;
                background-color: rgb(55, 210, 67);
              ">
                    결제 및 예약완료
                  </button>
                </div>
            </form>
            </div>
          </main>
          <jsp:include page="../footer.jsp" />
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
            crossorigin="anonymous"></script>
        </body>

        </html>