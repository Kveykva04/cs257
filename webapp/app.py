import flask
import argparse
import api

app = flask.Flask(__name__, static_folder='static', template_folder='templates')
app.register_blueprint(api.api, url_prefix='/api')

@app.route('/') 
def home():
    return flask.render_template('index.html')

@app.route('/Pokemon Search')
def get_poke_search():
    name = flask.request.args.get('name', default='')
    name = name.capitalize()
    return flask.render_template('Pokemon Search.html', name=name)

@app.route('/Type Search')
def get_type_search():
    return flask.render_template('Type Search.html')

@app.route('/help')
def get_help():
    return flask.render_template('help.html')

@app.route('/search')
def get_search():
    return flask.render_template('search.html')

if __name__ == '__main__':
    parser = argparse.ArgumentParser('A Flask aplication that lists pokemon of a given type')
    parser.add_argument('host', help='the host on which this application is running')
    parser.add_argument('port', type=int, help='the port on which this application is listening')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)
