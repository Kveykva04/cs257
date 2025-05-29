function getAPIBaseURL() {
    let baseURL = window.location.protocol
                    + '//' + window.location.hostname
                    + ':' + window.location.port
                    + '/api';
    return baseURL;
}

function onChangeWordButton() {
    var magicWordElement = document.getElementById('text');
    colorBoxElement.innerHTML = 'The magic word is "' + magicWordElement.value + '"';
}