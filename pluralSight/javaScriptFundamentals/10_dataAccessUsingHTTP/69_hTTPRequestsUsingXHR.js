let xhttp = new XMLHttpRequest();

xhttp.onreadystatechange = function(){
    if (this.readyState == 4 && this.status == 200){
        console.log(this.responseText);
    }
};

xhttp.open("GET", "https://6090e02f3847340017021e24.mockapi.io/api/v1/users", true);
xhttp.send();
