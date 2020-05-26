from flask import Flask
import daemon

app = Flask(__name__)

@app.route('/')
def success():
    return 'Success!'

@app.route('/ping')
def ping():
    return 'Ok'


if __name__ == '__main__':
    with daemon.DaemonContext():
        app.run(debug=True)