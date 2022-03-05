import $ from 'jquery';

let user = {name: "Mark Zamoyta",
avatar: 'mark.jpg'};

let promise = $.post('https://6090e02f3847340017021e24.mockapi.io/api/v1/users', user);
// 500 (Internal Server Error)
//let promise = $.post('https:///000000000000000000000.mockapi.io/api/v1/users', user);

promise.then(
    data => console.log('data:', data),
    error => console.log('error', error)
);
