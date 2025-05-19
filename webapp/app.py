import flask
import argparse
import api

app = flask.Flask(__name__, static_folder='static', template_folder='templates')
app.register_blueprint(api.api, url_prefix='/api')

@app.route('/') 
def home():
    return flask.render_template('index.html')

@app.route('/type/<pokemon_type>/[best={BEST}]')
def get_best_by_type():
    return flask.render_template('mockup2.html')

@app.route('/pokemon/<pokemon_name>')
def get_pokemon():
    return flask.render_template('mockup1.html')

@app.route('/generation/<generation_number>/[is_legendary={LEGENDARY}]')
def get_gen():
    return flask.render_template()

@app.route('/help')
def get_help():
    return flask.render_template('help.html')

if __name__ == '__main__':
    parser = argparse.ArgumentParser('A Flask aplication that lists pokemon of a given type')
    parser.add_argument('host', help='the host on which this application is running')
    parser.add_argument('port', type=int, help='the port on which this application is listening')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)
