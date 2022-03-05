let form = document.getElementById('user-form');

form.addEventListener('submit', event => {
    let user = form.elements['user'];
    let avatarFile = form.elements['avatar-file'];

    console.log(user.value, avatarFile.value);
    // prevent the browser from submitting the form
    event.preventDefault();
});
