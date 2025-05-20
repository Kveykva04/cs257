/*
 * books.js
 * Jeff Ondich, 27 April 2016
 * Updated, 5 November 2020
 */

window.addEventListener("load", initialize);

function initialize() {
    loadNameSelector();

    let element = document.getElementById('pokemon_selector');
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

function loadNameSelector() {
    let url = getAPIBaseURL() + '/allPokemon/';

    // Send the request to the books API /types/ endpoint
    fetch(url, {method: 'get'})

    // When the results come back, transform them from a JSON string into
    // a Javascript object (in this case, a list of author dictionaries).
    .then((response) => response.json())

    // Once you have your list of author dictionaries, use it to build
    // an HTML table displaying the author names and lifespan.
    .then(function(names) {
        // Add the <option> elements to the <select> element
        let selectorBody = '';
        for (let k = 0; k < names.length; k++) {
            let name_list = names[k];
            selectorBody += '<option value="' + name_list['name'] + '">'
                                + name_list['name']
                                + '</option>\n';
        }

        let selector = document.getElementById('pokemon_selector');
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
    let element = document.getElementById('pokemon_selector');
    if (!element) {
        return;
    }
    let chosen_pokemon = element.value; 

    let url = getAPIBaseURL() + '/pokemon/' + chosen_pokemon;

    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(pokemon_list) {
        let tableBody = '';
        for (let k = 0; k < pokemon_list.length; k++) {
            let pokemon = pokemon_list[k];
            tableBody += '<tr>'
                            + '<td>' + pokemon['Name'] + '</td>'
                            + '<td>' + pokemon['Type1'] + '</td>'
                            + '<td>' + pokemon['Type2'] + '</td>'
                            + '<td>' + pokemon['Total base stats'] + '</td>'
                            + '<td>' + pokemon['hp'] + '</td>'
                            + '<td>' + pokemon['attack'] + '</td>'
                            + '<td>' + pokemon['defense'] + '</td>'
                            + '<td>' + pokemon['sp attack'] + '</td>'
                            + '<td>' + pokemon['sp defense'] + '</td>'
                            + '<td>' + pokemon['speed'] + '</td>'
                            + '</tr>\n';
        }

        // Put the table body we just built inside the table that's already on the page.
        let pokemonTable = document.getElementById('pokemon_table');
        if (pokemonTable) {
            pokemonTable.innerHTML = tableBody;
        }
    })

    .catch(function(error) {
        console.log(error);
    });
}

