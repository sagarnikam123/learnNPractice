let form = document.getElementById('user-form');

form.addEventListener('submit', event => {
    // prevent the browser from submitting the form 
    event.preventDefault();
});

/*
<!-- index.html -->
<body>

  <h3>JavaScript Fundamentals</h3>
  <form action="/somepath" method="POST" id="user-form">
    <input name="user" placeholder="User Name"/>
    <span id="user-error"></span>
      <br>
      <input name="avatar-file" placeholder="Avatar File">
      <span id="avatar-error"></span>
      <br>
      <button type="submit">Submit</button>
  </form>

</body>
*/