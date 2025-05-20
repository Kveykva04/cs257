/*
 * books.js
 * Jeff Ondich, 27 April 2016
 * Updated, 5 November 2020
 */

window.addEventListener("load", initialize);

function initialize() {
    loadTypeSelector();

    let element = document.getElementById('type_selector');
    if (element) {
        element.onchange = onTypeSelectionChanged;
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
    .then(function(result) {
        // Add the <option> elements to the <select> element
        let selectorBody = '';
        for (let k = 0; k < result.pokemon_types.length; k++) {
            let types = result.pokemon_types[k];
            selectorBody += '<option value="' + types['type'] + '">'
                                + types['type']
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

function onTypeSelectionChanged() {
    let element = document.getElementById('type_selector');
    if (!element) {
        return;
    }
    let chosen_type = element.value; 

    let url = getAPIBaseURL() + '/type/' + chosen_type;

    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(pokemon_type_stats) {
        let tableBody = '';
        for (let k = 0; k < pokemon_type_stats.length; k++) {
            let pokemon = pokemon_type_stats[k];
            tableBody += '<tr>'
                            + '<td>' + pokemon['name'] + '</td>'
                            + '<td>' + pokemon['type1'] + '</td>'
                            + '<td>' + pokemon['type2'] + '</td>'
                            + '</tr>\n';
        }

        // Put the table body we just built inside the table that's already on the page.
        let pokemonTable = document.getElementById('pokemon_table');
        if (pokemonTable) {
            booksTable.innerHTML = tableBody;
        }
    })

    .catch(function(error) {
        console.log(error);
    });
}

