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
  if (day != "일" && day != "토") {
    thVisitDate.innerHTML = month + "/" + date + " (" + day + ")";
    trVisitDate.appendChild(thVisitDate);
  } else i--;
}
