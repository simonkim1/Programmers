// 내 풀이
function solution(my_string) {
  return my_string
    .replace(/[A-z]/g, " ")
    .trim()
    .split(" ")
    .reduce((acc, curr) => acc + +curr, 0);
}

// 다른 사람 풀이
function solution(my_string) {
  return my_string.split(/\D+/).reduce((acc, cur) => acc + Number(cur), 0);
}
