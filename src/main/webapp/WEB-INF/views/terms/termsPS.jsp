<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Document</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Zen+Dots&display=swap" rel="stylesheet" />
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Zen+Dots&display=swap" rel="stylesheet" />
  <style>
    #termsUl > li {
      list-style-type: none;
    }

    li > a {
      text-decoration-line: none;
    }
    </style>
</head>

<body>
    <jsp:include page="../navbar.jsp" />
    <main>
      <div class="container">
        <div class="mb-5">
          <div
            class="h2 fw-bold text-center mt-4 mb-4"
            style="font-family: 'Noto Sans KR', sans-serif"
          >
            약관
          </div>
          <div class="d-flex justify-content-center">
            <ul
              id="termsUl"
              class="d-flex justify-content-evenly align-items-center w-50"
              style="font-size: small"
            >
              <li>
                <a
                  class="border-bottom border-success p-2 text-secondary"
                  href="./terms/terms"
                  >이용약관</a
                >
              </li>
              <li>
                <a
                  class="border-bottom border-success p-2 text-secondary"
                  href="./terms/termsPS"
                  >택배 이용 약관</a
                >
              </li>
              <li>
                <a
                  class="border-bottom border-success p-2 text-secondary"
                  href="./terms/termsPrivacy"
                  >개인정보 처리방침</a
                >
              </li>
            </ul>
          </div>
        </div>
        <!-- 약관 내용 담는 곳 -->
        <div class="d-flex justify-content-center">
          <div class="overflow-auto w-75">
            <p
              class="fs-4 fw-bold mb-4"
              style="font-family: 'Noto Sans KR', sans-serif"
            >
              소화물 일관수송 약관
            </p>
            <div class="text-center">
              <p style="font-weight: bold" class="text-success">제1장 총칙</p>
            </div>
            <p
              style="font-size: smaller; font-weight: bold"
              class="text-success mb-0"
            >
              제 1조 (목적)
            </p>
            <p style="font-size: small">
              이 약관은 주식회사 HOLMOLTEK(이하 ‘사업자’라 한다)와 고객(송화인)
              간의 공정한 택배거래를 위하여 그 계약조건을 정함을 목적으로
              합니다.
            </p>
            <p
              style="font-size: smaller; font-weight: bold"
              class="text-success mb-0"
            >
              제 2조 (용어의 정의)
            </p>
            <div>
              <ol style="font-size: small">
                <li>
                  ‘택배’라 함은 고객의 요청에 따라 운송물을 고객(송화인)의 주택,
                  사무실 또는 기타의 장소에서 수탁하여 고객(수화인)의 주택,
                  사무실 또는 기타의 장소까지 운송하여 인도하는 것을 말합니다.
                </li>
                <li>
                  ‘사업자’라 함은 택배를 영업으로 하며, 상호가 운송장에 기재된
                  운송사업자를 말합니다.
                </li>
                <li>
                  ‘고객’이라 함은 사업자에게 택배를 보내는 송화인과 받는
                  수화인을 말합니다. 다만, 약관의규제에관한법률에 따른 ‘고객’은
                  ‘송화인’을 말합니다.
                </li>
                <li>
                  ‘송화인’이라 함은 사업자와 택배계약을 체결한 자로 운송장에
                  ‘보내는 자’(또는 ‘보내는 분’)로 명시되어 있는 자를 말합니다.
                </li>
                <li>
                  ‘수화인’이라 함은 운송물을 수령하는 자로 운송장에 ‘받는
                  자’(또는 ‘받는 분’)로 명시되어 있는 자를 말합니다.
                </li>
                <li>
                  ‘운송장’이라 함은 사업자와 고객(송화인) 간의 택배계약의 성립과
                  내용을 증명하기 위하여 사업자의 청구에 의하여 고객(송화인)이
                  발행한 문서를 말합니다.
                </li>
                <li>
                  ‘수탁’이라 함은 사업자가 택배를 수행하기 위하여
                  고객(송화인)으로부터 운송물을 수령하는 것을 말합니다.
                </li>
                <li>
                  ‘인도’라 함은 사업자가 고객(수화인)에게 운송장에 기재된
                  운송물을 넘겨주는 것을 말합니다.
                </li>
                <li>
                  ‘손해배상한도액’이라 함은 운송물의 멸실, 훼손 또는 연착 시에
                  사업자가 손해를 배상할 수 있는 최고 한도액을 말합니다. 다만,
                  ‘손해배상한도액’은 고객(송화인)이 운송장에 운송물의 가액을
                  기재하지 아니한 경우에 한하여 적용되며, 사업자는
                  손해배상한도액을 미리 이 약관의 별표로 제시하고 운송장에
                  기재합니다.
                </li>
              </ol>
            </div>
            <p
              style="font-size: smaller; font-weight: bold"
              class="text-success mb-0"
            >
              제 3조 (약관의 명시 및 설명)
            </p>
            <div>
              <ol style="font-size: small">
                <li>
                  사업자는 이 약관을 사업장에 게시하며, 택배계약(이하 ‘계약’이라
                  합니다)을 체결하는 때에 고객(송화인, 수화인)의 요구가 있으면
                  이를 교부합니다.
                </li>
                <li>
                  사업자는 계약을 체결하는 때에 고객(송화인)에게 다음 각 호의
                  사항을 설명합니다.
                </li>
              </ol>
            </div>
            <p
              style="font-size: smaller; font-weight: bold"
              class="text-success mb-0"
            >
              제4조 (적용법규 등)
            </p>
            <p style="font-size: small">
              이 약관에 규정되지 않은 사항에 대하여는 화물자동차운수사업법, 상법
              등의 법규와 공정한 일반관습에 따릅니다.
            </p>

            <div class="text-center">
              <p style="font-weight: bold" class="text-success">
                제2장 운송물의 수탁
              </p>
            </div>
            <p
              style="font-size: smaller; font-weight: bold"
              class="text-success mb-0"
            >
              제 5조(사업자의 의무)
            </p>
            <div>
              <ol style="font-size: small">
                <li>
                  사업자는 택배를 이용하고자 하는 자에게 다음 각 호의 사항을
                  홈페이지 및 모바일 앱, 콜센터, 전화 등으로 알기 쉽게
                  제공하여야 합니다.
                  <ol>
                    <li>택배의 접수방법, 취소, 환불, 변경방법</li>
                    <li>택배사고 시 배상접수 방법 및 배상기준, 처리절차 등</li>
                    <li>송장번호 입력란</li>
                    <li>결제방법</li>
                    <li>택배이용약관 또는 운송계약서</li>
                  </ol>
                </li>
                <li>
                  사업자는 고객응대시스템(콜센터, 어플리케이션 등)을 설치,
                  운영하여야 하며 고객서비스 만족 수준을 제고시키기 위해
                  노력하여야 합니다.
                </li>
                <li>
                  사업자는 업무상 알게 된 고객(송화인, 수화인)의 개인정보를
                  개인정보보호법 등 관계법령에 따라 관리하여야 하며,
                  고객(송화인, 수화인)의 동의 없이 택배업무와 관계없는 제3자에게
                  제공할 수 없습니다.
                </li>
                <li>
                  위 사항 이외에도 사업자는 대행 업무를 수행함에 있어 선량한
                  관리자로서의 주의와 의무를 다하여야 합니다.
                </li>
              </ol>
            </div>
            <p
              style="font-size: smaller; font-weight: bold"
              class="text-success mb-0"
            >
              제 6조(송화인의 의무)
            </p>
            <div>
              <ol style="font-size: small">
                <li>
                  고객(송화인)은 수화인의 주소, 전화번호, 성명, 운송물의 품명 및
                  표준가액 등을 운송장에 정확하게 작성하여야 합니다.
                </li>
                <li>
                  고객(송화인)은 제12조에 의한 규정에 따라 화약류, 인화물질,
                  밀수품, 군수품, 현금, 카드, 어음, 수표, 유가증권, 계약서,
                  원고, 서류, 동물, 동물사체 등의 운송물을 위탁하지 않아야
                  합니다.
                </li>
              </ol>
            </div>
            <p
              style="font-size: smaller; font-weight: bold"
              class="text-success mb-0"
            >
              제 7조(운송장)
            </p>
            <div>
              <ol style="font-size: small">
                <li>
                  사업자는 계약을 체결하는 때에 다음 각 호의 사항을 기재한
                  운송장을 마련하여 고객(송화인)에게 교부합니다.
                  <ol>
                    <li>
                      사업자의 상호, 대표자명, 주소 및 전화번호, 담당자(집화자)
                      이름, 운송장 번호
                    </li>
                    <li>
                      운송물을 수탁한 당해 사업소(사업자의 본？지점, 출장소
                      등)의 상호, 대표자명, 주소 및 전화번호
                    </li>
                    <li>운송물의 중량 및 용적 구분</li>
                    <li>운임 기타 운송에 관한 비용 및 지급방법</li>
                    <li>
                      손해배상한도액<br />
                      ※고객(송화인)이 운송장에 운송물의 가액을 기재하지 아니하면
                      제22조 제3항에 따라 사업자가 손해배상을 할 경우
                      손해배상한도액은 50만원이 적용되고, 운송물의 가액에 따라
                      할증요금을 지급하는 경우에는 각 운송가액 구간별 최고가액이
                      적용됨을 명시해 놓을 것
                    </li>
                    <li>문의처 전화번호</li>
                    <li>운송물의 인도 예정 장소 및 인도 예정일</li>
                    <li>
                      기타 운송에 관하여 필요한 사항(특급배송, 신선식품 배송 등)
                    </li>
                  </ol>
                </li>
                <li>
                  고객(송화인)은 제1항의 규정에 의하여 교부받은 운송장에 다음 각
                  호의 사항을 기재하고 기명날인 또는 서명하여 이를 다시
                  사업자에게 교부합니다.
                  <ol>
                    <li>송화인의 주소, 이름(또는 상호) 및 전화번호</li>
                    <li>수화인의 주소, 이름(또는 상호) 및 전화번호</li>
                    <li>
                      운송물의 종류(품명), 수량 및 가액<br />※ 고객(송화인)이
                      운송장에 운송물의 가액을 기재하면 사업자가 손해배상을 할
                      경우 이 가액이 손해배상액 산정의 기준이 된다는 점을 명시해
                      놓을 것
                    </li>
                    <li>
                      운송물의 인도예정장소 및 인도예정일(특정 일시에 수하인이
                      사용할 운송물의 경우에는 그 사용목적, 특정 일시 및
                      인도예정일시를 기재함)
                    </li>
                    <li>운송장의 작성연월일</li>
                  </ol>
                </li>
              </ol>
            </div>
            <p
              style="font-size: smaller; font-weight: bold"
              class="text-success mb-0"
            >
              제 8조 (운임의 청구와 유치권)
            </p>
            <div>
              <ol style="font-size: small">
                <li>
                  사업자는 운송물을 수탁할 때 고객(송화인)에게 운임을 청구할 수
                  있습니다. 다만, 고객(송화인)과의 합의에 따라 운송물을 인도할
                  때 운송물을 받는 자(수화인)에게 청구할 수도 있습니다.
                </li>
                <li>
                  제1항 단서의 경우 고객(수화인)이 운임을 지급하지 않는 때에는
                  사업자는 운송물을 유치할 수 있습니다.
                </li>
                <li>
                  운송물이 포장 당 50만원을 초과하거나 운송상 특별한 주의를
                  요하는 것일 때에는 사업자는 따로 할증요금을 청구할 수
                  있습니다.
                </li>
                <li>
                  고객(송화인, 수화인)의 사유로 운송물을 돌려보내거나, 도착지
                  주소지가 변경되는 경우, 사업자는 따로 추가 요금을 청구할 수
                  있습니다.
                </li>
                <li>
                  운임 및 할증요금은 미리 이 약관의 별표로 제시하고 운송장에
                  기재합니다.
                </li>
              </ol>
            </div>
            <p
              style="font-size: smaller; font-weight: bold"
              class="text-success mb-0"
            >
              제 9조 (포장)
            </p>
            <div>
              <ol style="font-size: small">
                <li>
                  고객(송화인)은 운송물을 그 성질, 중량, 용적 등에 따라 운송에
                  적합하도록 포장하여야 합니다.
                </li>
                <li>
                  사업자는 운송물의 포장이 운송에 적합하지 아니한 때에는
                  고객(송화인)에게 필요한 포장을 하도록 청구하거나,
                  고객(송화인)의 승낙을 얻어 운송 중 발생될 수 있는 충격량을
                  고려하여 포장을 하여야 합니다. 다만, 이 과정에서 추가적인
                  포장비용이 발생할 경우에는 사업자는 고객(송화인)에게 추가
                  요금을 청구할 수 있습니다.
                </li>
                <li>
                  사업자는 제2항의 규정을 준수하지 아니하여 발생된 사고 시
                  제22조에 의해 고객(송화인)에게 손해배상을 하여야 합니다.
                </li>
                <li>
                  사업자가 운송물을 운반하는 도중 운송물의 포장이 훼손되어
                  재포장을 한 경우에는 지체 없이 고객(송화인)에게 그 사실을
                  알려야 합니다.
                </li>
              </ol>
            </div>
            <p
              style="font-size: smaller; font-weight: bold"
              class="text-success mb-0"
            >
              제 10조 (외부표시)
            </p>
            <p style="font-size: small">
              사업자는 운송물을 수탁한 후 그 포장의 외부에 운송물의 종류？수량,
              운송 상의 특별한 주의사항, 인도 예정일(시) 등의 필요한 사항을
              표시합니다.
            </p>
            <p
              style="font-size: smaller; font-weight: bold"
              class="text-success mb-0"
            >
              제 11조 (운송물의 확인)
            </p>
            <div>
              <ol style="font-size: small">
                <li>
                  사업자는 운송장에 기재된 운송물의 종류와 수량에 관하여
                  고객(송화인)의 동의를 얻어 그 참여 하에 이를 확인할 수
                  있습니다.
                </li>
                <li>
                  사업자가 제1항의 규정에 의하여 운송물을 확인한 경우에 운송물의
                  종류와 수량이 고객(송화인)이 운송장에 기재한 것과 같은 때에는
                  사업자가 그로 인하여 발생한 비용 또는 손해를 부담하며, 다른
                  때에는 고객(송화인)이 이를 부담합니다.
                </li>
              </ol>
            </div>
            <p
              style="font-size: smaller; font-weight: bold"
              class="text-success mb-0"
            >
              제 12조 (운송물의 수탁거절)
            </p>
            <div style="font-size: small">
              사업자는 다음 각 호의 경우에 운송물의 수탁을 거절할 수 있습니다.
              <ol>
                <li>
                  고객(송화인)이 운송장에 필요한 사항을 기재하지 아니한 경우
                </li>
                <li>
                  고객(송화인)이 제9조 제2항의 규정에 의한 청구나 승낙을
                  거절하여 운송에 적합한 포장이 되지 않은 경우
                </li>
                <li>
                  고객(송화인)이 제11조 제1항의 규정에 의한 확인을 거절하거나
                  운송물의 종류와 수량이 운송장에 기재된 것과 다른 경우
                </li>
                <li>
                  운송물 1포장의 크기가 가로？세로？높이 세변의 합이 ( 160 )cm를
                  초과하거나, 최장변이 ( 100 )cm를 초과하는 경우
                </li>
                <li>운송물 1포장의 무게가 ( 20 )kg를 초과하는 경우</li>
                <li>운송물 1포장의 가액이 99만원을 초과하는 경우</li>
                <li>운송물의 인도예정일(시)에 따른 운송이 불가능한 경우</li>
                <li>운송물이 화약류, 인화물질 등 위험한 물건인 경우</li>
                <li>
                  운송물이 밀수품, 군수품, 부정임산물 등 관계기관으로부터
                  허가되지 않거나 위법한 물건인 경우
                </li>
                <li>
                  운송물이 현금, 카드, 어음, 수표, 유가증권 등 현금화가 가능한
                  물건인 경우
                </li>
                <li>운송물이 재생 불가능한 계약서, 원고, 서류 등인 경우</li>
                <li>운송물이 살아 있는 동물, 동물사체 등인 경우</li>
                <li>운송이 법령, 사회질서 기타 선량한 풍속에 반하는 경우</li>
                <li>
                  운송이 천재, 지변 기타 불가항력적인 사유로 불가능한 경우
                </li>
              </ol>
            </div>

            <div class="text-center">
              <p style="font-weight: bold" class="text-success">
                제3장 운송물의 인도
              </p>
            </div>
            <p
              style="font-size: smaller; font-weight: bold"
              class="text-success mb-0"
            >
              제 13조 (공동운송 또는 타 운송수단의 이용)
            </p>
            <p style="font-size: small">
              사업자는 고객(송화인)의 이익을 해치지 않는 범위 내에서 수탁한
              운송물을 다른 운송사업자와 협정을 체결하여 공동으로 운송하거나
              다른 운송사업자의 운송수단을 이용하여 운송할 수 있습니다.
            </p>
            <p
              style="font-size: smaller; font-weight: bold"
              class="text-success mb-0"
            >
              제 14조 (운송물의 인도일)
            </p>
            <div>
              <ol style="font-size: small">
                <li>
                  사업자는 다음 각 호의 인도예정일까지 운송물을 인도합니다.
                  <ol>
                    <li>
                      운송장에 인도 예정일의 기재가 있는 경우에는 그 기재된 날
                    </li>
                    <li>
                      운송장에 인도 예정일의 기재가 없는 경우에는 운송장에
                      기재된 운송물의 수탁일로부터 인도예정 장소에 따라 다음
                      일수에 해당하는 날
                    </li>
                  </ol>
                  <ol style="list-style-type: upper-alpha">
                    <li>일반 지역 : 수탁일로부터 2일</li>
                    <li>도서, 산간벽지 : 수탁일로부터 3일</li>
                  </ol>
                </li>
                <li>
                  사업자는 수화인이 특정 일시에 사용할 운송물을 수탁한 경우에는
                  운송장에 기재된 인도예정일의 특정 시간까지 운송물을
                  인도합니다.
                </li>
                <li>
                  사업자는 고객(수화인)에 인도후 운송물 배송의 배송완료 일시,
                  송장번호 등을 고객(송화인)이 확인할 수 있도록 협력하여야
                  합니다.
                </li>
              </ol>
            </div>
            <p
              style="font-size: smaller; font-weight: bold"
              class="text-success mb-0"
            >
              제 15조 (수화인 부재 시의 조치)
            </p>
            <div>
              <ol style="font-size: small">
                <li>
                  사업자는 운송물의 인도 시 고객(수화인)으로부터 인도확인을
                  받아야 하며, 고객(수화인)의 대리인에게 운송물을 인도하였을
                  경우에는 고객(수화인)에게 그 사실을 통지합니다.
                </li>
                <li>
                  사업자는 고객(수화인)의 부재로 인하여 운송물을 인도할 수 없는
                  경우에는 고객(송화인/수화인)과 협의하여 반송하거나,
                  고객(송화인/수화인)의 요청시 고객(송화인/수화인)과 합의된
                  장소에 보관하게 할 수 있으며, 이 경우 고객(수화인)과 합의된
                  장소에 보관하는 때에는 고객(수화인)에 인도가 완료된 것으로
                  합니다.
                </li>
              </ol>
            </div>

            <div class="text-center">
              <p style="font-weight: bold" class="text-success">
                제4장 운송물의 처분
              </p>
            </div>
            <p
              style="font-size: smaller; font-weight: bold"
              class="text-success mb-0"
            >
              제 16조 (인도할 수 없는 운송물의 처분)
            </p>
            <div>
              <ol style="font-size: small">
                <li>
                  사업자는 고객(수화인)을 확인할 수 없거나(수화인 불명),
                  고객(수화인)이 운송물의 수령을 거절하거나(수령거절) 수령할 수
                  없는 경우(수령불능)에는, 운송물을 공탁하거나 제2항 내지
                  제4항의 규정에 의하여 경매할 수 있습니다.
                </li>
                <li>
                  사업자는 고객(송화인)에게 1개월 이상의 기간을 정하여 그 기간
                  내에 운송물의 처분에 관한 지시가 없으면 경매한다는 뜻을
                  명시하여 운송물의 처분과 관련한 지시를 해 줄 것을 통지합니다.
                  다만, 고객(수화인)의 수령거절 또는 수령불능의 경우에는 먼저
                  고객(수화인)에게 1주일 이상의 기간을 정하여 수령을 요청하고 그
                  기간 내에도 수령하지 않는 때에 고객(송화인)에게 통지합니다.
                </li>
                <li>
                  사업자는 제2항의 규정에 의한 통지가 고객(송화인)에게 도달된
                  것으로 확인되는 경우에는, 그 도달일로부터 정한 기간 내에
                  지시가 없으면 운송물을 경매할 수 있습니다. 그러나 통지가
                  사업자의 과실 없이 고객(송화인)에게 도달된 것으로 확인될 수
                  없는 경우에는, 통지를 발송한 날로부터 3개월간 운송물을 보관한
                  후에 경매할 수 있습니다.
                </li>
                <li>
                  사업자는 운송물이 멸실 또는 훼손될 염려가 있는 경우에는,
                  고객(송화인, 수화인)의 이익을 위해 고객(송화인, 수화인)에 대한
                  통지 없이 즉시 경매할 수 있습니다.
                </li>
                <li>
                  사업자가 운송물을 공탁 또는 경매한 때에는 지체 없이 그 사실을
                  고객(송화인)에게 통지합니다.
                </li>
                <li>
                  제1항 내지 제5항의 규정에 의한 운송물의 공탁·경매·보관, 통지,
                  고객(송화인)의 지시에 따른 운송물의 처분 등에 소요되는 비용은
                  고객(송화인)의 부담으로 하며, 사업자는 운임이 지급되지 않은
                  경우에는 고객(송화인)에게 운임을 청구할 수 있습니다.
                </li>
                <li>
                  사업자는 운송물을 경매한 때에는 그 대금을 운송물의 경매·보관,
                  통지 등에 소요되는 비용과 운임(운임이 지급되지 않은 경우에
                  한함)에 충당하고, 부족한 때에는 고객(송화인)에게 그 지급을
                  청구하며, 남는 때에는 고객(송화인)에게 반환합니다. 이 경우
                  고객(송화인)에게 반환해야 할 잔액을 고객(송화인)이 수령하지
                  않거나 수령할 수 없는 때에는, 공탁에 과다한 비용이 소요되지
                  않는 한, 그 금액을 공탁합니다.
                </li>
              </ol>
            </div>
            <p
              style="font-size: smaller; font-weight: bold"
              class="text-success mb-0"
            >
              제 17조 (고객의 처분청구권)
            </p>
            <div>
              <ol style="font-size: small">
                <li>
                  고객(송화인)은 사업자에 대하여 운송의 중지, 운송물의 반환 등의
                  처분을 청구할 수 있습니다.
                </li>
                <li>
                  사업자는 제1항의 규정에 의한 고객(송화인)의 청구가 있는
                  때에는, 공동운송 또는 타 운송수단의 이용 등으로 인해 운송상
                  현저한 지장이 발생할 우려가 있는 경우를 제외하고는 이에
                  응합니다. 이 경우에 이미 운송한 비율에 따른 운임과 운송물의
                  처분에 소요되는 비용은 고객(송화인)의 부담으로 합니다.
                </li>
                <li>
                  제1항의 규정에 의한 고객(송화인)의 청구권은 고객(수화인)에게
                  운송물을 인도한 때에 소멸합니다.
                </li>
              </ol>
            </div>

            <div class="text-center">
              <p style="font-weight: bold" class="text-success">
                제5장 운송물의 사고
              </p>
            </div>
            <p
              style="font-size: smaller; font-weight: bold"
              class="text-success mb-0"
            >
              제 18조 (사고발생시의 조치)
            </p>
            <div>
              <ol style="font-size: small">
                <li>
                  사업자는 운송물의 수탁 후부터 인도전까지 전부 멸실을 발견한
                  때에는 지체 없이 그 사실을 고객(송화인)에게 통지합니다.
                </li>
                <li>
                  사업자는 운송물의 수탁 후부터 인도전까지 운송물의 일부
                  멸실이나 현저한 훼손을 발견하거나, 인도 예정일 보다 현저하게
                  연착될 경우에는 지체 없이 그 사실을 고객(송화인)에게 통지하고,
                  일정 기간을 정하여 운송물의 처분 방법 및 일자 등에 관한 지시를
                  해 줄 것을 요청합니다.
                </li>
                <li>
                  사업자는 제2항의 규정에 의한 고객(송화인)의 지시를 기다릴
                  여유가 없는 경우 또는 사업자가 정한 기간 내에 지시가 없을
                  경우에는 고객의 이익을 위하여 운송의 중지, 운송물의 반환
                  기타의 필요한 처분을 할 수 있습니다. 이 경우 사업자는 지체
                  없이 그 사실을 고객(송화인)에게 통지합니다.
                </li>
              </ol>
            </div>
            <p
              style="font-size: smaller; font-weight: bold"
              class="text-success mb-0"
            >
              제 19조 (사고증명서의 발행)
            </p>
            <p style="font-size: small">
              사업자는 운송 중에 발생한 운송물의 멸실, 훼손 또는 연착에 대하여
              고객(송화인)의 청구가 있으면 그 발생한 날로부터 1년에 한하여
              사고증명서를 발행합니다.
            </p>

            <div class="text-center">
              <p style="font-weight: bold" class="text-success">
                제6장 운송물의 책임
              </p>
            </div>
            <p
              style="font-size: smaller; font-weight: bold"
              class="text-success mb-0"
            >
              제 20조 (책임의 시작)
            </p>
            <p style="font-size: small">
              운송물의 멸실, 훼손 또는 연착에 관한 사업자의 책임은 운송물을
              고객(송화인)으로부터 수탁한 때로부터 시작됩니다.
            </p>
            <p
              style="font-size: smaller; font-weight: bold"
              class="text-success mb-0"
            >
              제 21조 (공동운송 또는 타 운송수단 이용시 책임)
            </p>
            <p style="font-size: small">
              사업자가 다른 운송사업자와 협정을 체결하여 공동으로 운송하거나
              다른 운송사업자의 운송수단을 이용하여 운송한 운송물이 멸실, 훼손
              또는 연착되는 때에는 이에 대한 책임은 사업자가 부담합니다.
            </p>
            <p
              style="font-size: smaller; font-weight: bold"
              class="text-success mb-0"
            >
              제 22조 (손해배상)
            </p>
            <div>
              <ol style="font-size: small">
                <li>
                  사업자는 자기 또는 운송 위탁을 받은 자, 기타 운송을 위하여
                  관여된 자가 운송물의 수탁, 인도, 보관 및 운송에 관하여 주의를
                  태만히 하지 않았음을 증명하지 못하는 한, 제2항 내지 제4항의
                  규정에 의하여 운송물의 멸실, 훼손 또는 연착으로 인한 손해를
                  고객(송화인)에게 배상합니다.
                </li>
                <li>
                  고객(송화인)이 운송장에 운송물의 가액을 기재한 경우에는
                  사업자의 손해배상은 다음 각 호에 의합니다.
                  <ol>
                    <li>
                      전부 또는 일부 멸실된 때: 운송장에 기재된 운송물의 가액을
                      기준으로 산정한 손해액 또는 고객(송화인)이 입증한 운송물의
                      손해액(영수증 등)
                    </li>
                    <li>
                      훼손된 때
                      <ol style="list-style-type: upper-alpha">
                        <li>수선이 가능한 경우 : 실수선 비용(A/S비용)</li>
                        <li>수선이 불가능한 경우 : 제1호에 준함</li>
                      </ol>
                    </li>
                    <li>
                      연착되고 일부 멸실 및 훼손되지 않은 때
                      <ol style="list-style-type: upper-alpha">
                        <li>
                          일반적인 경우 : 인도예정일을 초과한 일수에 사업자가
                          운송장에 기재한 운임액(이하 ‘운송장 기재 운임액’이라
                          합니다)의 50%를 곱한 금액(초과일수×운송장 기재
                          운임액×50%). 다만, 운송장 기재 운임액의 200%를 한도로
                          함
                        </li>
                        <li>
                          특정 일시에 사용할 운송물의 경우 : 운송장기재운임액의
                          200
                        </li>
                      </ol>
                    </li>
                    <li>
                      연착되고 일부 멸실 또는 훼손된 때: 제1호 또는 제2호에 준함
                    </li>
                  </ol>
                </li>
                <li>
                  고객(송화인)이 운송장에 운송물의 가액을 기재하지 않은 경우에는
                  사업자의 손해배상은 다음 각 호에 의합니다. 이 경우
                  손해배상한도액은 50만원으로 하되, 운송물의 가액에 따라
                  할증요금을 지급하는 경우의 손해배상한도액은 각 운송가액 구간별
                  운송물의 최고가액으로 합니다.
                  <ol>
                    <li>
                      전부 멸실된 때 : 인도예정일의 인도예정장소에서의 운송물
                      가액을 기준으로 산정한 손해액 또는 고객(송화인)이 입증한
                      운송물의 손해액(영수증 등)
                    </li>
                    <li>
                      일부 멸실된 때 : 인도일의 인도장소에서의 운송물 가액을
                      기준으로 산정한 손해액 또는 고객(송화인)이 입증한 운송물의
                      손해액(영수증 등)
                    </li>
                    <li>
                      훼손된 때
                      <ol style="list-style-type: upper-alpha">
                        <li>수선이 가능한 경우 : 실수선 비용(A/S비용)</li>
                        <li>수선이 불가능한 경우 : 제2호에 준함</li>
                      </ol>
                    </li>
                    <li>
                      연착되고 일부 멸실 및 훼손되지 않은 때 : 제2항 제3호를
                      준용함
                    </li>
                    <li>
                      연착되고 일부 멸실 또는 훼손된 때 : 제2호 또는 제3호에
                      준하되, ‘인도일’을 ‘인도예정일’로함
                    </li>
                  </ol>
                </li>
                <li>
                  운송물의 멸실, 훼손 또는 연착이 사업자 또는 운송 위탁을 받은
                  자, 기타 운송을 위하여 관여된 자의 고의 또는 중대한 과실로
                  인하여 발생한 때에는, 사업자는 제2항과 제3항의 규정에도
                  불구하고 모든 손해를 배상합니다.
                </li>
                <li>
                  제1항에 따른 손해에 대하여 사업자가 고객(송화인)으로부터
                  배상요청을 받은 경우 고객(송화인)이 영수증 등 제2항 내지
                  제4항에 따른 손해입증서류를 제출한 날로부터 30일 이내에
                  사업자가 우선 배상합니다. 단, 손해입증서류가 허위인 경우에는
                  적용되지 아니합니다.
                </li>
              </ol>
            </div>
            <p
              style="font-size: smaller; font-weight: bold"
              class="text-success mb-0"
            >
              제 23조 (사고발생시의 운임 등의 환급과 청구)
            </p>
            <div>
              <ol style="font-size: small">
                <li>
                  운송물의 멸실, 현저한 훼손 또는 연착이 천재지변, 전쟁, 내란
                  기타 불가항력적인 사유 또는 고객(송화인, 수화인)의 책임없는
                  사유로 인한 것인 때에는, 사업자는 운임을 비롯하여 제18조 제1항
                  내지 제3항의 규정에 의한 통지, 합의, 처분 등에 소요되는 비용을
                  청구하지 못합니다. 사업자가 이미 운임이나 비용을 받은 때에는
                  이를 환급합니다.
                </li>
                <li>
                  운송물의 멸실, 현저한 훼손 또는 연착이 운송물의 성질이나 하자
                  또는 고객(송화인, 수화인)의 과실로 인한 것인 때에는, 사업자는
                  운임 전액을 비롯하여 제18조 제1항 내지 제3항의 규정에 의한
                  통지, 협의, 처분 등에 소요되는 비용을 청구할 수 있습니다.
                </li>
              </ol>
            </div>
            <p
              style="font-size: smaller; font-weight: bold"
              class="text-success mb-0"
            >
              제 24조 (사업자의 면책)
            </p>
            <p style="font-size: small">
              사업자는 천재지변, 전쟁, 내란 기타 불가항력적인 사유에 의하여
              발생한 운송물의 멸실, 훼손 또는 연착에 대해서는 손해배상책임을
              지지 아니합니다.
            </p>

            <p
              style="font-size: smaller; font-weight: bold"
              class="text-success mb-0"
            >
              제 25조 (책임의 특별소멸 사유와 시효)
            </p>
            <div>
              <ol style="font-size: small">
                <li>
                  운송물의 일부 멸실 또는 훼손에 대한 사업자의 손해배상책임은
                  고객(수화인)이 운송물을 수령한 날로부터 14일 이내에 그 일부
                  멸실 또는 훼손에 대한 사실을 고객(송화인)이 사업자에게 통지를
                  발송하지 아니하면 소멸합니다.
                </li>
                <li>
                  운송물의 일부 멸실, 훼손 또는 연착에 대한 사업자의
                  손해배상책임은 고객(수화인)이 운송물을 수령한 날로부터 1년이
                  경과하면 소멸합니다. 다만, 운송물이 전부 멸실된 경우에는 그
                  인도예정일로부터 기산합니다.
                </li>
                <li>
                  제1항과 제2항의 규정은 사업자 또는 그 운송 위탁을 받은 자,
                  기타 운송을 위하여 관여된 자가 이 운송물의 일부 멸실 또는
                  훼손의 사실을 알면서 이를 숨기고 운송물을 인도한 경우에는
                  적용되지 아니합니다. 이 경우에는 사업자의 손해배상책임은
                  고객(수화인)이 운송물을 수령한 날로부터 5년간 존속합니다.
                </li>
              </ol>
            </div>
            <p
              style="font-size: smaller; font-weight: bold"
              class="text-success mb-0"
            >
              제 26조 (분쟁해결)
            </p>
            <div>
              <ol style="font-size: small">
                <li>
                  이 계약에 명시되지 아니한 사항 또는 계약의 해석에 관하여
                  다툼이 있는 경우에는 사업자와 고객(송화인)이 합의하여
                  결정하되, 합의가 이루어지지 아니한 경우에는 관계법령 및 일반
                  관례에 따릅니다.
                </li>
                <li>
                  제1항의 규정에도 불구하고 법률상 분쟁이 발생한 경우에는 사업자
                  또는 고객(송화인)은 소비자기본법에 따른 분쟁조정기구에
                  분쟁조정을 신청하거나 중재법 등 다른 법률에 따라 운영 중인
                  중재기관에 중재를 신청할 수 있습니다.
                </li>
                <li>
                  이 계약과 관련된 모든 분쟁은 민사소송법상의 관할법원을
                  전속관할로 합니다.
                </li>
              </ol>
            </div>
            <div>
              <hr />
              <div style="font-size: small" class="text-end">
                시행 : 2023년 2월 3일
              </div>
            </div>
          </div>
        </div>
      </div>
    </nav>
  </header>
  <!-- 여기까지 header -->
  <main>
    <div class="container">
      <div class="mb-5">
        <div class="h2 fw-bold text-center mt-4 mb-4">약관</div>
        <div class="d-flex justify-content-center">
          <ul id="termsUl" class="d-flex justify-content-evenly align-items-center w-50" style="font-size: small">
            <li>
              <a class="border-bottom border-success p-2 text-secondary" href="./terms.html">이용약관</a>
            </li>
            <li>
              <a class="border-bottom border-success p-2 text-secondary" href="./termsPS.html">택배 이용 약관</a>
            </li>
            <li>
              <a class="border-bottom border-success p-2 text-secondary" href="./termsPrivacy.html">개인정보 처리방침</a>
            </li>
          </ul>
        </div>
      </div>
      <!-- 약관 내용 담는 곳 -->
      <div class="d-flex justify-content-center">
        <div class="overflow-auto w-75">
          <p class="fs-4 fw-bold mb-4">소화물 일관수송 약관</p>
          <div class="text-center">
            <p style="font-weight: bold" class="text-success">제1장 총칙</p>
          </div>
          <p style="font-size: smaller; font-weight: bold" class="text-success mb-0">
            제 1조 (목적)
          </p>
          <p style="font-size: small">
            이 약관은 주식회사 HOLMOLTEK(이하 ‘사업자’라 한다)와 고객(송화인)
            간의 공정한 택배거래를 위하여 그 계약조건을 정함을 목적으로
            합니다.
          </p>
          <p style="font-size: smaller; font-weight: bold" class="text-success mb-0">
            제 2조 (용어의 정의)
          </p>
          <div>
            <ol style="font-size: small">
              <li>
                ‘택배’라 함은 고객의 요청에 따라 운송물을 고객(송화인)의 주택,
                사무실 또는 기타의 장소에서 수탁하여 고객(수화인)의 주택,
                사무실 또는 기타의 장소까지 운송하여 인도하는 것을 말합니다.
              </li>
              <li>
                ‘사업자’라 함은 택배를 영업으로 하며, 상호가 운송장에 기재된
                운송사업자를 말합니다.
              </li>
              <li>
                ‘고객’이라 함은 사업자에게 택배를 보내는 송화인과 받는
                수화인을 말합니다. 다만, 약관의규제에관한법률에 따른 ‘고객’은
                ‘송화인’을 말합니다.
              </li>
              <li>
                ‘송화인’이라 함은 사업자와 택배계약을 체결한 자로 운송장에
                ‘보내는 자’(또는 ‘보내는 분’)로 명시되어 있는 자를 말합니다.
              </li>
              <li>
                ‘수화인’이라 함은 운송물을 수령하는 자로 운송장에 ‘받는
                자’(또는 ‘받는 분’)로 명시되어 있는 자를 말합니다.
              </li>
              <li>
                ‘운송장’이라 함은 사업자와 고객(송화인) 간의 택배계약의 성립과
                내용을 증명하기 위하여 사업자의 청구에 의하여 고객(송화인)이
                발행한 문서를 말합니다.
              </li>
              <li>
                ‘수탁’이라 함은 사업자가 택배를 수행하기 위하여
                고객(송화인)으로부터 운송물을 수령하는 것을 말합니다.
              </li>
              <li>
                ‘인도’라 함은 사업자가 고객(수화인)에게 운송장에 기재된
                운송물을 넘겨주는 것을 말합니다.
              </li>
              <li>
                ‘손해배상한도액’이라 함은 운송물의 멸실, 훼손 또는 연착 시에
                사업자가 손해를 배상할 수 있는 최고 한도액을 말합니다. 다만,
                ‘손해배상한도액’은 고객(송화인)이 운송장에 운송물의 가액을
                기재하지 아니한 경우에 한하여 적용되며, 사업자는
                손해배상한도액을 미리 이 약관의 별표로 제시하고 운송장에
                기재합니다.
              </li>
            </ol>
          </div>
          <p style="font-size: smaller; font-weight: bold" class="text-success mb-0">
            제 3조 (약관의 명시 및 설명)
          </p>
          <div>
            <ol style="font-size: small">
              <li>
                사업자는 이 약관을 사업장에 게시하며, 택배계약(이하 ‘계약’이라
                합니다)을 체결하는 때에 고객(송화인, 수화인)의 요구가 있으면
                이를 교부합니다.
              </li>
              <li>
                사업자는 계약을 체결하는 때에 고객(송화인)에게 다음 각 호의
                사항을 설명합니다.
              </li>
            </ol>
          </div>
          <p style="font-size: smaller; font-weight: bold" class="text-success mb-0">
            제4조 (적용법규 등)
          </p>
          <p style="font-size: small">
            이 약관에 규정되지 않은 사항에 대하여는 화물자동차운수사업법, 상법
            등의 법규와 공정한 일반관습에 따릅니다.
          </p>

          <div class="text-center">
            <p style="font-weight: bold" class="text-success">
              제2장 운송물의 수탁
            </p>
          </div>
          <p style="font-size: smaller; font-weight: bold" class="text-success mb-0">
            제 5조(사업자의 의무)
          </p>
          <div>
            <ol style="font-size: small">
              <li>
                사업자는 택배를 이용하고자 하는 자에게 다음 각 호의 사항을
                홈페이지 및 모바일 앱, 콜센터, 전화 등으로 알기 쉽게
                제공하여야 합니다.
                <ol>
                  <li>택배의 접수방법, 취소, 환불, 변경방법</li>
                  <li>택배사고 시 배상접수 방법 및 배상기준, 처리절차 등</li>
                  <li>송장번호 입력란</li>
                  <li>결제방법</li>
                  <li>택배이용약관 또는 운송계약서</li>
                </ol>
              </li>
              <li>
                사업자는 고객응대시스템(콜센터, 어플리케이션 등)을 설치,
                운영하여야 하며 고객서비스 만족 수준을 제고시키기 위해
                노력하여야 합니다.
              </li>
              <li>
                사업자는 업무상 알게 된 고객(송화인, 수화인)의 개인정보를
                개인정보보호법 등 관계법령에 따라 관리하여야 하며,
                고객(송화인, 수화인)의 동의 없이 택배업무와 관계없는 제3자에게
                제공할 수 없습니다.
              </li>
              <li>
                위 사항 이외에도 사업자는 대행 업무를 수행함에 있어 선량한
                관리자로서의 주의와 의무를 다하여야 합니다.
              </li>
            </ol>
          </div>
          <p style="font-size: smaller; font-weight: bold" class="text-success mb-0">
            제 6조(송화인의 의무)
          </p>
          <div>
            <ol style="font-size: small">
              <li>
                고객(송화인)은 수화인의 주소, 전화번호, 성명, 운송물의 품명 및
                표준가액 등을 운송장에 정확하게 작성하여야 합니다.
              </li>
              <li>
                고객(송화인)은 제12조에 의한 규정에 따라 화약류, 인화물질,
                밀수품, 군수품, 현금, 카드, 어음, 수표, 유가증권, 계약서,
                원고, 서류, 동물, 동물사체 등의 운송물을 위탁하지 않아야
                합니다.
              </li>
            </ol>
          </div>
          <p style="font-size: smaller; font-weight: bold" class="text-success mb-0">
            제 7조(운송장)
          </p>
          <div>
            <ol style="font-size: small">
              <li>
                사업자는 계약을 체결하는 때에 다음 각 호의 사항을 기재한
                운송장을 마련하여 고객(송화인)에게 교부합니다.
                <ol>
                  <li>
                    사업자의 상호, 대표자명, 주소 및 전화번호, 담당자(집화자)
                    이름, 운송장 번호
                  </li>
                  <li>
                    운송물을 수탁한 당해 사업소(사업자의 본？지점, 출장소
                    등)의 상호, 대표자명, 주소 및 전화번호
                  </li>
                  <li>운송물의 중량 및 용적 구분</li>
                  <li>운임 기타 운송에 관한 비용 및 지급방법</li>
                  <li>
                    손해배상한도액<br />
                    ※고객(송화인)이 운송장에 운송물의 가액을 기재하지 아니하면
                    제22조 제3항에 따라 사업자가 손해배상을 할 경우
                    손해배상한도액은 50만원이 적용되고, 운송물의 가액에 따라
                    할증요금을 지급하는 경우에는 각 운송가액 구간별 최고가액이
                    적용됨을 명시해 놓을 것
                  </li>
                  <li>문의처 전화번호</li>
                  <li>운송물의 인도 예정 장소 및 인도 예정일</li>
                  <li>
                    기타 운송에 관하여 필요한 사항(특급배송, 신선식품 배송 등)
                  </li>
                </ol>
              </li>
              <li>
                고객(송화인)은 제1항의 규정에 의하여 교부받은 운송장에 다음 각
                호의 사항을 기재하고 기명날인 또는 서명하여 이를 다시
                사업자에게 교부합니다.
                <ol>
                  <li>송화인의 주소, 이름(또는 상호) 및 전화번호</li>
                  <li>수화인의 주소, 이름(또는 상호) 및 전화번호</li>
                  <li>
                    운송물의 종류(품명), 수량 및 가액<br />※ 고객(송화인)이
                    운송장에 운송물의 가액을 기재하면 사업자가 손해배상을 할
                    경우 이 가액이 손해배상액 산정의 기준이 된다는 점을 명시해
                    놓을 것
                  </li>
                  <li>
                    운송물의 인도예정장소 및 인도예정일(특정 일시에 수하인이
                    사용할 운송물의 경우에는 그 사용목적, 특정 일시 및
                    인도예정일시를 기재함)
                  </li>
                  <li>운송장의 작성연월일</li>
                </ol>
              </li>
            </ol>
          </div>
          <p style="font-size: smaller; font-weight: bold" class="text-success mb-0">
            제 8조 (운임의 청구와 유치권)
          </p>
          <div>
            <ol style="font-size: small">
              <li>
                사업자는 운송물을 수탁할 때 고객(송화인)에게 운임을 청구할 수
                있습니다. 다만, 고객(송화인)과의 합의에 따라 운송물을 인도할
                때 운송물을 받는 자(수화인)에게 청구할 수도 있습니다.
              </li>
              <li>
                제1항 단서의 경우 고객(수화인)이 운임을 지급하지 않는 때에는
                사업자는 운송물을 유치할 수 있습니다.
              </li>
              <li>
                운송물이 포장 당 50만원을 초과하거나 운송상 특별한 주의를
                요하는 것일 때에는 사업자는 따로 할증요금을 청구할 수
                있습니다.
              </li>
              <li>
                고객(송화인, 수화인)의 사유로 운송물을 돌려보내거나, 도착지
                주소지가 변경되는 경우, 사업자는 따로 추가 요금을 청구할 수
                있습니다.
              </li>
              <li>
                운임 및 할증요금은 미리 이 약관의 별표로 제시하고 운송장에
                기재합니다.
              </li>
            </ol>
          </div>
          <p style="font-size: smaller; font-weight: bold" class="text-success mb-0">
            제 9조 (포장)
          </p>
          <div>
            <ol style="font-size: small">
              <li>
                고객(송화인)은 운송물을 그 성질, 중량, 용적 등에 따라 운송에
                적합하도록 포장하여야 합니다.
              </li>
              <li>
                사업자는 운송물의 포장이 운송에 적합하지 아니한 때에는
                고객(송화인)에게 필요한 포장을 하도록 청구하거나,
                고객(송화인)의 승낙을 얻어 운송 중 발생될 수 있는 충격량을
                고려하여 포장을 하여야 합니다. 다만, 이 과정에서 추가적인
                포장비용이 발생할 경우에는 사업자는 고객(송화인)에게 추가
                요금을 청구할 수 있습니다.
              </li>
              <li>
                사업자는 제2항의 규정을 준수하지 아니하여 발생된 사고 시
                제22조에 의해 고객(송화인)에게 손해배상을 하여야 합니다.
              </li>
              <li>
                사업자가 운송물을 운반하는 도중 운송물의 포장이 훼손되어
                재포장을 한 경우에는 지체 없이 고객(송화인)에게 그 사실을
                알려야 합니다.
              </li>
            </ol>
          </div>
          <p style="font-size: smaller; font-weight: bold" class="text-success mb-0">
            제 10조 (외부표시)
          </p>
          <p style="font-size: small">
            사업자는 운송물을 수탁한 후 그 포장의 외부에 운송물의 종류？수량,
            운송 상의 특별한 주의사항, 인도 예정일(시) 등의 필요한 사항을
            표시합니다.
          </p>
          <p style="font-size: smaller; font-weight: bold" class="text-success mb-0">
            제 11조 (운송물의 확인)
          </p>
          <div>
            <ol style="font-size: small">
              <li>
                사업자는 운송장에 기재된 운송물의 종류와 수량에 관하여
                고객(송화인)의 동의를 얻어 그 참여 하에 이를 확인할 수
                있습니다.
              </li>
              <li>
                사업자가 제1항의 규정에 의하여 운송물을 확인한 경우에 운송물의
                종류와 수량이 고객(송화인)이 운송장에 기재한 것과 같은 때에는
                사업자가 그로 인하여 발생한 비용 또는 손해를 부담하며, 다른
                때에는 고객(송화인)이 이를 부담합니다.
              </li>
            </ol>
          </div>
          <p style="font-size: smaller; font-weight: bold" class="text-success mb-0">
            제 12조 (운송물의 수탁거절)
          </p>
          <div style="font-size: small">
            사업자는 다음 각 호의 경우에 운송물의 수탁을 거절할 수 있습니다.
            <ol>
              <li>
                고객(송화인)이 운송장에 필요한 사항을 기재하지 아니한 경우
              </li>
              <li>
                고객(송화인)이 제9조 제2항의 규정에 의한 청구나 승낙을
                거절하여 운송에 적합한 포장이 되지 않은 경우
              </li>
              <li>
                고객(송화인)이 제11조 제1항의 규정에 의한 확인을 거절하거나
                운송물의 종류와 수량이 운송장에 기재된 것과 다른 경우
              </li>
              <li>
                운송물 1포장의 크기가 가로？세로？높이 세변의 합이 ( 160 )cm를
                초과하거나, 최장변이 ( 100 )cm를 초과하는 경우
              </li>
              <li>운송물 1포장의 무게가 ( 20 )kg를 초과하는 경우</li>
              <li>운송물 1포장의 가액이 99만원을 초과하는 경우</li>
              <li>운송물의 인도예정일(시)에 따른 운송이 불가능한 경우</li>
              <li>운송물이 화약류, 인화물질 등 위험한 물건인 경우</li>
              <li>
                운송물이 밀수품, 군수품, 부정임산물 등 관계기관으로부터
                허가되지 않거나 위법한 물건인 경우
              </li>
              <li>
                운송물이 현금, 카드, 어음, 수표, 유가증권 등 현금화가 가능한
                물건인 경우
              </li>
              <li>운송물이 재생 불가능한 계약서, 원고, 서류 등인 경우</li>
              <li>운송물이 살아 있는 동물, 동물사체 등인 경우</li>
              <li>운송이 법령, 사회질서 기타 선량한 풍속에 반하는 경우</li>
              <li>
                운송이 천재, 지변 기타 불가항력적인 사유로 불가능한 경우
              </li>
            </ol>
          </div>

          <div class="text-center">
            <p style="font-weight: bold" class="text-success">
              제3장 운송물의 인도
            </p>
          </div>
          <p style="font-size: smaller; font-weight: bold" class="text-success mb-0">
            제 13조 (공동운송 또는 타 운송수단의 이용)
          </p>
          <p style="font-size: small">
            사업자는 고객(송화인)의 이익을 해치지 않는 범위 내에서 수탁한
            운송물을 다른 운송사업자와 협정을 체결하여 공동으로 운송하거나
            다른 운송사업자의 운송수단을 이용하여 운송할 수 있습니다.
          </p>
          <p style="font-size: smaller; font-weight: bold" class="text-success mb-0">
            제 14조 (운송물의 인도일)
          </p>
          <div>
            <ol style="font-size: small">
              <li>
                사업자는 다음 각 호의 인도예정일까지 운송물을 인도합니다.
                <ol>
                  <li>
                    운송장에 인도 예정일의 기재가 있는 경우에는 그 기재된 날
                  </li>
                  <li>
                    운송장에 인도 예정일의 기재가 없는 경우에는 운송장에
                    기재된 운송물의 수탁일로부터 인도예정 장소에 따라 다음
                    일수에 해당하는 날
                  </li>
                </ol>
                <ol style="list-style-type: upper-alpha">
                  <li>일반 지역 : 수탁일로부터 2일</li>
                  <li>도서, 산간벽지 : 수탁일로부터 3일</li>
                </ol>
              </li>
              <li>
                사업자는 수화인이 특정 일시에 사용할 운송물을 수탁한 경우에는
                운송장에 기재된 인도예정일의 특정 시간까지 운송물을
                인도합니다.
              </li>
              <li>
                사업자는 고객(수화인)에 인도후 운송물 배송의 배송완료 일시,
                송장번호 등을 고객(송화인)이 확인할 수 있도록 협력하여야
                합니다.
              </li>
            </ol>
          </div>
          <p style="font-size: smaller; font-weight: bold" class="text-success mb-0">
            제 15조 (수화인 부재 시의 조치)
          </p>
          <div>
            <ol style="font-size: small">
              <li>
                사업자는 운송물의 인도 시 고객(수화인)으로부터 인도확인을
                받아야 하며, 고객(수화인)의 대리인에게 운송물을 인도하였을
                경우에는 고객(수화인)에게 그 사실을 통지합니다.
              </li>
              <li>
                사업자는 고객(수화인)의 부재로 인하여 운송물을 인도할 수 없는
                경우에는 고객(송화인/수화인)과 협의하여 반송하거나,
                고객(송화인/수화인)의 요청시 고객(송화인/수화인)과 합의된
                장소에 보관하게 할 수 있으며, 이 경우 고객(수화인)과 합의된
                장소에 보관하는 때에는 고객(수화인)에 인도가 완료된 것으로
                합니다.
              </li>
            </ol>
          </div>

          <div class="text-center">
            <p style="font-weight: bold" class="text-success">
              제4장 운송물의 처분
            </p>
          </div>
          <p style="font-size: smaller; font-weight: bold" class="text-success mb-0">
            제 16조 (인도할 수 없는 운송물의 처분)
          </p>
          <div>
            <ol style="font-size: small">
              <li>
                사업자는 고객(수화인)을 확인할 수 없거나(수화인 불명),
                고객(수화인)이 운송물의 수령을 거절하거나(수령거절) 수령할 수
                없는 경우(수령불능)에는, 운송물을 공탁하거나 제2항 내지
                제4항의 규정에 의하여 경매할 수 있습니다.
              </li>
              <li>
                사업자는 고객(송화인)에게 1개월 이상의 기간을 정하여 그 기간
                내에 운송물의 처분에 관한 지시가 없으면 경매한다는 뜻을
                명시하여 운송물의 처분과 관련한 지시를 해 줄 것을 통지합니다.
                다만, 고객(수화인)의 수령거절 또는 수령불능의 경우에는 먼저
                고객(수화인)에게 1주일 이상의 기간을 정하여 수령을 요청하고 그
                기간 내에도 수령하지 않는 때에 고객(송화인)에게 통지합니다.
              </li>
              <li>
                사업자는 제2항의 규정에 의한 통지가 고객(송화인)에게 도달된
                것으로 확인되는 경우에는, 그 도달일로부터 정한 기간 내에
                지시가 없으면 운송물을 경매할 수 있습니다. 그러나 통지가
                사업자의 과실 없이 고객(송화인)에게 도달된 것으로 확인될 수
                없는 경우에는, 통지를 발송한 날로부터 3개월간 운송물을 보관한
                후에 경매할 수 있습니다.
              </li>
              <li>
                사업자는 운송물이 멸실 또는 훼손될 염려가 있는 경우에는,
                고객(송화인, 수화인)의 이익을 위해 고객(송화인, 수화인)에 대한
                통지 없이 즉시 경매할 수 있습니다.
              </li>
              <li>
                사업자가 운송물을 공탁 또는 경매한 때에는 지체 없이 그 사실을
                고객(송화인)에게 통지합니다.
              </li>
              <li>
                제1항 내지 제5항의 규정에 의한 운송물의 공탁·경매·보관, 통지,
                고객(송화인)의 지시에 따른 운송물의 처분 등에 소요되는 비용은
                고객(송화인)의 부담으로 하며, 사업자는 운임이 지급되지 않은
                경우에는 고객(송화인)에게 운임을 청구할 수 있습니다.
              </li>
              <li>
                사업자는 운송물을 경매한 때에는 그 대금을 운송물의 경매·보관,
                통지 등에 소요되는 비용과 운임(운임이 지급되지 않은 경우에
                한함)에 충당하고, 부족한 때에는 고객(송화인)에게 그 지급을
                청구하며, 남는 때에는 고객(송화인)에게 반환합니다. 이 경우
                고객(송화인)에게 반환해야 할 잔액을 고객(송화인)이 수령하지
                않거나 수령할 수 없는 때에는, 공탁에 과다한 비용이 소요되지
                않는 한, 그 금액을 공탁합니다.
              </li>
            </ol>
          </div>
          <p style="font-size: smaller; font-weight: bold" class="text-success mb-0">
            제 17조 (고객의 처분청구권)
          </p>
          <div>
            <ol style="font-size: small">
              <li>
                고객(송화인)은 사업자에 대하여 운송의 중지, 운송물의 반환 등의
                처분을 청구할 수 있습니다.
              </li>
              <li>
                사업자는 제1항의 규정에 의한 고객(송화인)의 청구가 있는
                때에는, 공동운송 또는 타 운송수단의 이용 등으로 인해 운송상
                현저한 지장이 발생할 우려가 있는 경우를 제외하고는 이에
                응합니다. 이 경우에 이미 운송한 비율에 따른 운임과 운송물의
                처분에 소요되는 비용은 고객(송화인)의 부담으로 합니다.
              </li>
              <li>
                제1항의 규정에 의한 고객(송화인)의 청구권은 고객(수화인)에게
                운송물을 인도한 때에 소멸합니다.
              </li>
            </ol>
          </div>

          <div class="text-center">
            <p style="font-weight: bold" class="text-success">
              제5장 운송물의 사고
            </p>
          </div>
          <p style="font-size: smaller; font-weight: bold" class="text-success mb-0">
            제 18조 (사고발생시의 조치)
          </p>
          <div>
            <ol style="font-size: small">
              <li>
                사업자는 운송물의 수탁 후부터 인도전까지 전부 멸실을 발견한
                때에는 지체 없이 그 사실을 고객(송화인)에게 통지합니다.
              </li>
              <li>
                사업자는 운송물의 수탁 후부터 인도전까지 운송물의 일부
                멸실이나 현저한 훼손을 발견하거나, 인도 예정일 보다 현저하게
                연착될 경우에는 지체 없이 그 사실을 고객(송화인)에게 통지하고,
                일정 기간을 정하여 운송물의 처분 방법 및 일자 등에 관한 지시를
                해 줄 것을 요청합니다.
              </li>
              <li>
                사업자는 제2항의 규정에 의한 고객(송화인)의 지시를 기다릴
                여유가 없는 경우 또는 사업자가 정한 기간 내에 지시가 없을
                경우에는 고객의 이익을 위하여 운송의 중지, 운송물의 반환
                기타의 필요한 처분을 할 수 있습니다. 이 경우 사업자는 지체
                없이 그 사실을 고객(송화인)에게 통지합니다.
              </li>
            </ol>
          </div>
          <p style="font-size: smaller; font-weight: bold" class="text-success mb-0">
            제 19조 (사고증명서의 발행)
          </p>
          <p style="font-size: small">
            사업자는 운송 중에 발생한 운송물의 멸실, 훼손 또는 연착에 대하여
            고객(송화인)의 청구가 있으면 그 발생한 날로부터 1년에 한하여
            사고증명서를 발행합니다.
          </p>

          <div class="text-center">
            <p style="font-weight: bold" class="text-success">
              제6장 운송물의 책임
            </p>
          </div>
          <p style="font-size: smaller; font-weight: bold" class="text-success mb-0">
            제 20조 (책임의 시작)
          </p>
          <p style="font-size: small">
            운송물의 멸실, 훼손 또는 연착에 관한 사업자의 책임은 운송물을
            고객(송화인)으로부터 수탁한 때로부터 시작됩니다.
          </p>
          <p style="font-size: smaller; font-weight: bold" class="text-success mb-0">
            제 21조 (공동운송 또는 타 운송수단 이용시 책임)
          </p>
          <p style="font-size: small">
            사업자가 다른 운송사업자와 협정을 체결하여 공동으로 운송하거나
            다른 운송사업자의 운송수단을 이용하여 운송한 운송물이 멸실, 훼손
            또는 연착되는 때에는 이에 대한 책임은 사업자가 부담합니다.
          </p>
          <p style="font-size: smaller; font-weight: bold" class="text-success mb-0">
            제 22조 (손해배상)
          </p>
          <div>
            <ol style="font-size: small">
              <li>
                사업자는 자기 또는 운송 위탁을 받은 자, 기타 운송을 위하여
                관여된 자가 운송물의 수탁, 인도, 보관 및 운송에 관하여 주의를
                태만히 하지 않았음을 증명하지 못하는 한, 제2항 내지 제4항의
                규정에 의하여 운송물의 멸실, 훼손 또는 연착으로 인한 손해를
                고객(송화인)에게 배상합니다.
              </li>
              <li>
                고객(송화인)이 운송장에 운송물의 가액을 기재한 경우에는
                사업자의 손해배상은 다음 각 호에 의합니다.
                <ol>
                  <li>
                    전부 또는 일부 멸실된 때: 운송장에 기재된 운송물의 가액을
                    기준으로 산정한 손해액 또는 고객(송화인)이 입증한 운송물의
                    손해액(영수증 등)
                  </li>
                  <li>
                    훼손된 때
                    <ol style="list-style-type: upper-alpha">
                      <li>수선이 가능한 경우 : 실수선 비용(A/S비용)</li>
                      <li>수선이 불가능한 경우 : 제1호에 준함</li>
                    </ol>
                  </li>
                  <li>
                    연착되고 일부 멸실 및 훼손되지 않은 때
                    <ol style="list-style-type: upper-alpha">
                      <li>
                        일반적인 경우 : 인도예정일을 초과한 일수에 사업자가
                        운송장에 기재한 운임액(이하 ‘운송장 기재 운임액’이라
                        합니다)의 50%를 곱한 금액(초과일수×운송장 기재
                        운임액×50%). 다만, 운송장 기재 운임액의 200%를 한도로
                        함
                      </li>
                      <li>
                        특정 일시에 사용할 운송물의 경우 : 운송장기재운임액의
                        200
                      </li>
                    </ol>
                  </li>
                  <li>
                    연착되고 일부 멸실 또는 훼손된 때: 제1호 또는 제2호에 준함
                  </li>
                </ol>
              </li>
              <li>
                고객(송화인)이 운송장에 운송물의 가액을 기재하지 않은 경우에는
                사업자의 손해배상은 다음 각 호에 의합니다. 이 경우
                손해배상한도액은 50만원으로 하되, 운송물의 가액에 따라
                할증요금을 지급하는 경우의 손해배상한도액은 각 운송가액 구간별
                운송물의 최고가액으로 합니다.
                <ol>
                  <li>
                    전부 멸실된 때 : 인도예정일의 인도예정장소에서의 운송물
                    가액을 기준으로 산정한 손해액 또는 고객(송화인)이 입증한
                    운송물의 손해액(영수증 등)
                  </li>
                  <li>
                    일부 멸실된 때 : 인도일의 인도장소에서의 운송물 가액을
                    기준으로 산정한 손해액 또는 고객(송화인)이 입증한 운송물의
                    손해액(영수증 등)
                  </li>
                  <li>
                    훼손된 때
                    <ol style="list-style-type: upper-alpha">
                      <li>수선이 가능한 경우 : 실수선 비용(A/S비용)</li>
                      <li>수선이 불가능한 경우 : 제2호에 준함</li>
                    </ol>
                  </li>
                  <li>
                    연착되고 일부 멸실 및 훼손되지 않은 때 : 제2항 제3호를
                    준용함
                  </li>
                  <li>
                    연착되고 일부 멸실 또는 훼손된 때 : 제2호 또는 제3호에
                    준하되, ‘인도일’을 ‘인도예정일’로함
                  </li>
                </ol>
              </li>
              <li>
                운송물의 멸실, 훼손 또는 연착이 사업자 또는 운송 위탁을 받은
                자, 기타 운송을 위하여 관여된 자의 고의 또는 중대한 과실로
                인하여 발생한 때에는, 사업자는 제2항과 제3항의 규정에도
                불구하고 모든 손해를 배상합니다.
              </li>
              <li>
                제1항에 따른 손해에 대하여 사업자가 고객(송화인)으로부터
                배상요청을 받은 경우 고객(송화인)이 영수증 등 제2항 내지
                제4항에 따른 손해입증서류를 제출한 날로부터 30일 이내에
                사업자가 우선 배상합니다. 단, 손해입증서류가 허위인 경우에는
                적용되지 아니합니다.
              </li>
            </ol>
          </div>
          <p style="font-size: smaller; font-weight: bold" class="text-success mb-0">
            제 23조 (사고발생시의 운임 등의 환급과 청구)
          </p>
          <div>
            <ol style="font-size: small">
              <li>
                운송물의 멸실, 현저한 훼손 또는 연착이 천재지변, 전쟁, 내란
                기타 불가항력적인 사유 또는 고객(송화인, 수화인)의 책임없는
                사유로 인한 것인 때에는, 사업자는 운임을 비롯하여 제18조 제1항
                내지 제3항의 규정에 의한 통지, 합의, 처분 등에 소요되는 비용을
                청구하지 못합니다. 사업자가 이미 운임이나 비용을 받은 때에는
                이를 환급합니다.
              </li>
              <li>
                운송물의 멸실, 현저한 훼손 또는 연착이 운송물의 성질이나 하자
                또는 고객(송화인, 수화인)의 과실로 인한 것인 때에는, 사업자는
                운임 전액을 비롯하여 제18조 제1항 내지 제3항의 규정에 의한
                통지, 협의, 처분 등에 소요되는 비용을 청구할 수 있습니다.
              </li>
            </ol>
          </div>
          <p style="font-size: smaller; font-weight: bold" class="text-success mb-0">
            제 24조 (사업자의 면책)
          </p>
          <p style="font-size: small">
            사업자는 천재지변, 전쟁, 내란 기타 불가항력적인 사유에 의하여
            발생한 운송물의 멸실, 훼손 또는 연착에 대해서는 손해배상책임을
            지지 아니합니다.
          </p>

          <p style="font-size: smaller; font-weight: bold" class="text-success mb-0">
            제 25조 (책임의 특별소멸 사유와 시효)
          </p>
          <div>
            <ol style="font-size: small">
              <li>
                운송물의 일부 멸실 또는 훼손에 대한 사업자의 손해배상책임은
                고객(수화인)이 운송물을 수령한 날로부터 14일 이내에 그 일부
                멸실 또는 훼손에 대한 사실을 고객(송화인)이 사업자에게 통지를
                발송하지 아니하면 소멸합니다.
              </li>
              <li>
                운송물의 일부 멸실, 훼손 또는 연착에 대한 사업자의
                손해배상책임은 고객(수화인)이 운송물을 수령한 날로부터 1년이
                경과하면 소멸합니다. 다만, 운송물이 전부 멸실된 경우에는 그
                인도예정일로부터 기산합니다.
              </li>
              <li>
                제1항과 제2항의 규정은 사업자 또는 그 운송 위탁을 받은 자,
                기타 운송을 위하여 관여된 자가 이 운송물의 일부 멸실 또는
                훼손의 사실을 알면서 이를 숨기고 운송물을 인도한 경우에는
                적용되지 아니합니다. 이 경우에는 사업자의 손해배상책임은
                고객(수화인)이 운송물을 수령한 날로부터 5년간 존속합니다.
              </li>
            </ol>
          </div>
          <p style="font-size: smaller; font-weight: bold" class="text-success mb-0">
            제 26조 (분쟁해결)
          </p>
          <div>
            <ol style="font-size: small">
              <li>
                이 계약에 명시되지 아니한 사항 또는 계약의 해석에 관하여
                다툼이 있는 경우에는 사업자와 고객(송화인)이 합의하여
                결정하되, 합의가 이루어지지 아니한 경우에는 관계법령 및 일반
                관례에 따릅니다.
              </li>
              <li>
                제1항의 규정에도 불구하고 법률상 분쟁이 발생한 경우에는 사업자
                또는 고객(송화인)은 소비자기본법에 따른 분쟁조정기구에
                분쟁조정을 신청하거나 중재법 등 다른 법률에 따라 운영 중인
                중재기관에 중재를 신청할 수 있습니다.
              </li>
              <li>
                이 계약과 관련된 모든 분쟁은 민사소송법상의 관할법원을
                전속관할로 합니다.
              </li>
            </ol>
          </div>
          <div>
            <hr />
            <div style="font-size: small" class="text-end">
              시행 : 2023년 2월 3일
            </div>
            <br />
          </div>
        </div>
      </div>
    </div>
  </main>
  <jsp:include page="../footer.jsp" />
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"></script>
</body>

</html>