import $ from 'jquery';

let form = document.getElementById('user-form');

form.addEventListener('submit', event => {
    let user = form.elements['user'];
    let avatarFile = form.elements['avatar-file'];
    console.log(user);

    let posting = {
        user : user.value,
        avatarFile : avatarFile.value
    };
    console.log(posting);

    let promise = $.post('https://6090e02f3847340017021e24.mockapi.io/api/v1/users', posting);

    promise.then(
        data => console.log('success:', data),
        error => console.log('error:', error)
    );
    event.preventDefault();
});
