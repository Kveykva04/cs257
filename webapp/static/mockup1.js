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
        let type1Body = '';
        let type2Body = '';
        let pokemon = pokemon_list[0];

        //need an sql and api for classification, gender, strengths, weaknesses, and (images?)
        tableBody += '<tr>'
                        + '<tr><th>Stat</th><th>Points</th></tr>'
                        + '<tr><td>HP</td><td>' + pokemon['hp'] + '</td></tr>'
                        + '<tr><td>Atk</td><td>' + pokemon['attack'] + '</td></tr>'
                        + '<tr><td>Def</td><td>' + pokemon['defense'] + '</td></tr>'
                        + '<tr><td>Sp. Atk</td><td>' + pokemon['sp attack'] + '</td></tr>'
                        + '<tr><td>Sp. Def</td><td>' + pokemon['sp defense'] + '</td></tr>'
                        + '<tr><td>Speed</td><td>' + pokemon['speed'] + '</td></tr>'
                        + '<tr><td>Total</td><td>' + pokemon['Total base stats'] + '</td></tr>'
                        + '</tr>\n';
        type1Body += pokemon['Type1'];
        if(pokemon['Type2'] == null)
        {
            type2Body += 'n/a\n';
        }
        else
        {
            type2Body += pokemon['Type2'];
        }

        // Put the table body we just built inside the table that's already on the page.
        let pokemonTable = document.getElementById('pokemon_table');
        if (pokemonTable) {
            pokemonTable.innerHTML = tableBody;
        }

        let pokemonType1 = document.getElementById('pokemon_type1')
        let pokemonType2 = document.getElementById('pokemon_type2')
        if (pokemonType1) {
            pokemonType1.innerHTML = type1Body;
        }
        if (pokemonType2) {
            pokemonType2.innerHTML = type2Body;
        }

        let type = document.getElementById('pokemon_selector');
        if (!type) {
            return;
        }
        let chosen_type = type.value; 

        loadWeakAndStrong(chosen_type);
        loadPokeClass(chosen_pokemon);
        loadPokeGender(chosen_pokemon);
    })

    .catch(function(error) {
        console.log(error);
    });
}


function loadWeakAndStrong(chosen_type) {
    let newUrl = getAPIBaseURL() + '/strong_weak/' + chosen_type;

    // Send the request to the books API /types/ endpoint
    fetch(newUrl, {method: 'get'})

    // When the results come back, transform them from a JSON string into
    // a Javascript object (in this case, a list of author dictionaries).
    .then((response) => response.json())

    // Once you have your list of author dictionaries, use it to build
    // an HTML table displaying the author names and lifespan.
    .then(function(sAndw) {
        // Add the <option> elements to the <select> element
        let tableBody = '';
        let strongline = '';
        let weakline = '';

        let SW = sAndw[0];

        if(SW['strong5'] != null)
        {
            strongline = '<tr><td>Strong Against:</td><td>' + SW['strong1'] + '</td><td>' +  SW['strong2'] + '</td><td>' +  SW['strong3'] + '</td><td>' +  SW['strong4'] + '</td><td>' +  SW['strong5'] + '</td></tr>';
        }
        else if(SW['strong4'] != null)
        {
            strongline = '<tr><td>Strong Against:</td><td>' + SW['strong1'] + '</td><td>' +  SW['strong2'] + '</td><td>' +  SW['strong3'] + '</td><td>' +  SW['strong4'] + '</td></tr>';
        }
        else if(SW['strong3'] != null)
        {
            strongline = '<tr><td>Strong Against:</td><td>' + SW['strong1'] + '</td><td>' +  SW['strong2'] + '</td><td>' +  SW['strong3'] + '</td></tr>';
        }
        else if(SW['strong2'] != null)
        {
            strongline = '<tr><td>Strong Against:</td><td>' + SW['strong1'] + '</td><td>' +  SW['strong2'] + '</td></tr>';
        }
        else
        {
            strongline = '<tr><td>Strong Against:</td><td>' + SW['strong1'] + '</td></tr>';
        }

        if(SW['weak5'] != null)
        {
            weakline = '<tr><td>Weak Against:</td><td>' + SW['weak1'] + '</td><td>' +  SW['weak2'] + '</td><td>' +  SW['weak3'] + '</td><td>' +  SW['weak4'] + '</td><td>' +  SW['weak5'] + '</td></tr>';
        }
        else if(SW['weak4'] != null)
        {
            weakline = '<tr><td>Weak Against:</td><td>' + SW['weak1'] + '</td><td>' +  SW['weak2'] + '</td><td>' +  SW['weak3'] + '</td><td>' +  SW['weak4'] + '</td></tr>';
        }
        else if(SW['weak3'] != null)
        {
            weakline = '<tr><td>Weak Against:</td><td>' + SW['weak1'] + '</td><td>' +  SW['weak2'] + '</td><td>' +  SW['weak3'] + '</td></tr>';
        }
        else if(SW['weak2'] != null)
        {
            weakline = '<tr><td>Weak Against:</td><td>' + SW['weak1'] + '</td><td>' +  SW['weak2'] + '</td></tr>';
        }
        else
        {
            weakline = '<tr><td>Weak Against:</td><td>' + SW['weak1'] + '</td></tr>';
        }

        tableBody += '<tr style =  "font-size: 1px;">'
                        + strongline
                        + weakline
                        + '</tr>\n';

        // Put the table body we just built inside the table that's already on the page.
        let weakStrongTable = document.getElementById('weakness_and_strength_table');
        if (weakStrongTable) {
            weakStrongTable.innerHTML = tableBody;
        }
    })

    // Log the error if anything went wrong during the fetch.
    .catch(function(error) {
        console.log(error);
    });
}

function loadPokeClass(pname) {
    let newUrl = getAPIBaseURL() + '/pokemon_class/' + pname;

    // Send the request to the books API /types/ endpoint
    fetch(newUrl, {method: 'get'})

    // When the results come back, transform them from a JSON string into
    // a Javascript object (in this case, a list of author dictionaries).
    .then((response) => response.json())

    // Once you have your list of author dictionaries, use it to build
    // an HTML table displaying the author names and lifespan.
    .then(function(pclass) {
        // Add the <option> elements to the <select> element

        let pkclass = pclass[0];

        let classline = pkclass['pokemon_class'];

                let pokemon_class_line = document.getElementById('pokemon_class');
                if (pokemon_class_line) {
                    pokemon_class_line.innerHTML = classline;
                }
    })
    .catch(function(error) {
        console.log(error);
    });
}

function loadPokeGender(pname) {
    let newUrl = getAPIBaseURL() + '/pokemon_gender/' + pname;

    // Send the request to the books API /types/ endpoint
    fetch(newUrl, {method: 'get'})

    // When the results come back, transform them from a JSON string into
    // a Javascript object (in this case, a list of author dictionaries).
    .then((response) => response.json())

    // Once you have your list of author dictionaries, use it to build
    // an HTML table displaying the author names and lifespan.
    .then(function(pclass) {
        // Add the <option> elements to the <select> element

        let pkgender = pclass[0];

        let maleline = pkgender['gender'];
        let femaleline = Math.round(100 - pkgender['gender']);

        if (maleline != null){

                let pokemon_class_line = document.getElementById('female');
                if (pokemon_class_line) {
                    pokemon_class_line.innerHTML = 'Male %: ' + maleline
                }

                let pokemon_class_line2 = document.getElementById('male');
                if (pokemon_class_line2) {
                    pokemon_class_line2.innerHTML = 'Female %: ' + femaleline
                }
            }

        else{
            let pokemon_class_line = document.getElementById('female');
                if (pokemon_class_line) {
                    pokemon_class_line.innerHTML = 'Male %: NA' 
                }

                let pokemon_class_line2 = document.getElementById('male');
                if (pokemon_class_line2) {
                    pokemon_class_line2.innerHTML = 'Female %: NA'
                }
        }
    })
    .catch(function(error) {
        console.log(error);
    });
}