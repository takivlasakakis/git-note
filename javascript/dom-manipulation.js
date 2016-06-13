console.log("Hello world")

function addPinkBorder(event) {
    event.target.style.border = "2px solid pink";
}

var photo = document.getElementById("lizard-photo")
photo.addEventListener("click", addPinkBorder)