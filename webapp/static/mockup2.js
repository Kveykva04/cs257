window.addEventListener("load", initialize);

function initialize() {
    loadTypeSelector();

    let element = document.getElementById('type_selector');
    if (element) {
        element.onchange = onNameSelectionChanged;
    }
}

// Returns the base URL of the API, onto which endpoint
// components can be appended.
function getAPIBaseURL() {
    let baseURL = window.location.protocol
                    + '//' + window.location.hostname
                    + ':' + window.location.port
                    + '/api';
    return baseURL;
}

function loadTypeSelector() {
    let url = getAPIBaseURL() + '/types/';

    // Send the request to the books API /types/ endpoint
    fetch(url, {method: 'get'})

    // When the results come back, transform them from a JSON string into
    // a Javascript object (in this case, a list of author dictionaries).
    .then((response) => response.json())

    // Once you have your list of author dictionaries, use it to build
    // an HTML table displaying the author names and lifespan.
    .then(function(types) {
        // Add the <option> elements to the <select> element
        let selectorBody = '';
        for (let k = 0; k < types.length; k++) {
            let type_list = types[k];
            selectorBody += '<option value="' + type_list['type_name'] + '">'
                                + type_list['type_name']
                                + '</option>\n';
        }

        let selector = document.getElementById('type_selector');
        if (selector) {
            selector.innerHTML = selectorBody;
        }
    })

    // Log the error if anything went wrong during the fetch.
    .catch(function(error) {
        console.log(error);
    });
}

function onNameSelectionChanged() {
    let element = document.getElementById('type_selector');
    if (!element) {
        return;
    }
    let chosen_type = element.value.toLowerCase(); 

    let url = getAPIBaseURL() + '/type/' + chosen_type;

    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(pokemon_by_type) {
        let tableBody = '<tr><th>Pokemon</th><th>Type 1</th><th>Type 2</th><th>Base Stat Total</th></tr>';

        for (let k = 0; k < pokemon_by_type.length; k++) {
            let pokemon = pokemon_by_type[k];
            tableBody += '<tr>'
                            + '<td><a href= "/mockup1' + pokemon['Name'] + '">' + pokemon['Name'] + '</a></td>'
                            + '<td>' + pokemon['Type1'] + '</td>'
                            + '<td>' + pokemon['Type2'] + '</td>'
                            + '<td>' + pokemon['Base Total'] + '</td>'
                            + '</tr>\n';
        }

        let pokemonTable = document.getElementById('pokemon_table');
        if (pokemonTable) {
            pokemonTable.innerHTML = tableBody;
        }
    })

    .catch(function(error) {
        console.log(error);
    });
}