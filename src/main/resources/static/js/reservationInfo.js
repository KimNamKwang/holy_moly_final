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
    fullDate = new Date(today.setDate(today.getDate() + 1)); //내일 날짜 -> Sat Mar 11 2023 00:17:44 GMT+0900 (한국 표준시)
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
