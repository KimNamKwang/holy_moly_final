// 방문 희망일시
// 내일, 모레, 글피 mm/dd (E)

let today = new Date();
let fullDate;
let month;
let date;
let day;

let week = new Array("일", "월", "화", "수", "목", "금", "토");

let trVisitDate = document.querySelector("#visit_date");
for (let i = 1; i <= 3; i++) {
  let thVisitDate = document.createElement("th");
  fullDate = new Date(today.setDate(today.getDate() + 1));
  month = fullDate.getMonth() + 1;
  date = fullDate.getDate();
  day = week[fullDate.getDay()];
  // 평일만 노출
  if (day != "일" && day != "토") {
    thVisitDate.innerHTML = month + "/" + date + " (" + day + ")";
    trVisitDate.appendChild(thVisitDate);
  } else i--;
}

// input:radio value
// yy-mm-dd hh:mm:ss

// i -> row, j -> col
// #visit-time_i_j

// #visit-time_1_1
// #visit-time_1_2
// #visit-time_1_3
// #visit-time_2_1
// #visit-time_2_2
for (let i = 1; i <= 4; i++) {
  for (let j = 1; j <= 3; j++) {
    fullDate = new Date(today.setDate(today.getDate() + 1)); //내일 날짜 => Sat Mar 11 2023 00:17:44 GMT+0900 (한국 표준시)
    yymmdd = fullDate.toISOString().replace("T", " ").substring(0, 11);
    // toISOString -> 날짜 형식을 YYYY-MM-DDTHH:mm:ss.sssZ 으로 바꿈
    // replace -> 가운데 T를 공백 한 칸으로
    // substring -> 'YYYY-MM-DD ' 까지 자름. 뒤에 공백 한 칸 포함
    let visitDateInputId = document.querySelector("#visit-time_" + i + "_" + j); // 각각의 input
    let hh; // HH:mm:ss 중 HH. 09 처럼 앞에 0을 붙이면 9로 값이 들어가서 0까지 붙게 문자열로 사용할 거임
    if (i == 1) {
      // 첫번째 열
      hh = "09";
    } else if (i == 2) {
      // 두번째 열
      hh = "11";
    } else if (i == 3) {
      // 세번째 열
      hh = "13";
    } else if (i == 4) {
      // 네번째 열
      hh = "15";
    }
    visitDateInputId.value = yymmdd + hh + ":00:00"; // input value에 YYYY-MM-DD HH:mm:ss 을 넣음
  }
}

// 실패 케이스
// 시간은 정상동작하나, 날짜가 15 16 17 18 19 ... 처럼 input 하나당 1씩 계속 증가하고, 익일부터도 아님. // 이 결과가 현재 코드 상태
// 15일부터 시작되는 것은 totay 변수를 윗 단이랑 공유하고 써서 그런 것 같다 싶었으나, 변수 초기화 후 해보니 이번에는 오늘 날짜만 반복됨 (10 10 10 / 10 10 10 / 10 10 10 / 10 10 10)
// 정상이라면 주말을 제외한 오늘의 익일인 13일부터 13 14 15 / 13 14 15 / 13 14 15 / 13 14 15 가 dd로 값이 들어가야 함 // 최종 정상 결과 값
// 주말을 제외하는 코드는 아직 작성되지 않았으므로, 우선은 주말을 포함한 아래의 결과가 나와야 함 (편의상 다음과 같이 줄여 표현함 - 2023-03-11 09:00:00 -> 11(09:00))
// 1열 input들 : 11(09:00) 12(09:00) 13(09:00) / 2열 input들 : 11(11:00) 12(11:00) 13(11:00) / 3열 input들 : 11(13:00) 12(13:00) 13(13:00) / 4열 input들 : 11(15:00) 12(15:00) 13(15:00)

// 반복문을 통해 위 데이터가 나와야 하는 것이 첫번째이며, 주말을 제외하는 것이 두번째 순서임
// 애초에 이중for문을 잘못 짠 건가 싶기도 함...
