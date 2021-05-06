let form = document.getElementById('user-form');

form.addEventListener('submit', event => {
    let user = form.elements['user'];

    let userError = document.getElementById('user-error');

    if (user.value.length > 4) {
        userError.textContent = 'Invalid entry';
        userError.style.color = 'red';
        userError.style.borderColor = 'red';
        user.focus();

        event.preventDefault();
    }

});