window.addEventListener("load", initialize);

function initialize() {

    let element = document.getElementById('pokemon_search');
    if (element) {
        element.onchange = onChangeWordButton;
    }
}

function getAPIBaseURL() {
    let baseURL = window.location.protocol
                    + '//' + window.location.hostname
                    + ':' + window.location.port
                    + '/api';
    return baseURL;
}

function onChangeWordButton() {
    let searchTerms = document.getElementById('pokemon_search').value;
    window.location.href = "/mockup1?name=" + searchTerms;
}