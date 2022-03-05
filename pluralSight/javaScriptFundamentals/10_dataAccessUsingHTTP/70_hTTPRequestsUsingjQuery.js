import $ from 'jquery';

let promise = $.get("https://6090e02f3847340017021e24.mockapi.io/api/v1/users");
// 500 (Internal Server Error)
//let promise = $.get("https://7777777777777777777777.mockapi.io/api/v1/users");


promise.then(
    data => console.log("success:", data),
    error => console.log("error:", error)
);
