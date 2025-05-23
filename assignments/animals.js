window.addEventListener("load", initialize);

function initialize() {
    loadAuthorsSelector();

    let element = document.getElementsByClassName('animal');
    if (element) {
        element.onclick = changePicture(element);
    }
}

function changePicture(element)
{
    let pic = document.getElementById('animal-pic');
    let cat = document.getElementById('cat');
    let dog = document.getElementById('dog');
    let goat = document.getElementById('goat');

    if(element = cat)
    {
        pic.innerHTML = '';
    }
    else if(element = dog)
    {
        pic.innerHTML = '';
    }
    else if(element = goat)
    {
        pic.innerHTML = '';
    }
}