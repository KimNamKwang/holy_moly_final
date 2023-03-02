let plus = document.getElementById("plus");
let minus = document.getElementById("minus");
let result = document.getElementById("result");
let total_count_items = document.getElementById("total_count_items");
let totalcost = document.getElementById("totalcost");
let i = 5;
total_count_items.value = 5;

document.getElementById("minus").addEventListener("click", function () {
  minusOne();
});

function minusOne(event) {
  if (i > 5) {
    i--;
    total_count_items.value = i;
    result.textContent = i;
    let totalcostNum = i * 3290;
    totalcost.textContent = totalcostNum.toLocaleString();
  } else {
    totalcost.textContent = 0;
  }
}

document.getElementById("plus").addEventListener("click", function () {
  plusOne();
});

function plusOne(event) {
  i++;
  result.textContent = i;
  total_count_items.value = i;
  let totalcostNum = i * 3290;
  totalcost.textContent = totalcostNum.toLocaleString();
}
