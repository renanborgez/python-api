from flask import Flask
from gevent.pywsgi import WSGIServer

from config import PORT, IS_DEV, MODE

app = Flask(__name__)

@app.route("/")
def hello_world():
    return f'Running in {MODE} mode'

if IS_DEV:
    print('Running in dev mode')
    app.run(debug=True, host="0.0.0.0", port=PORT)
else:
    http_server = WSGIServer(('', PORT), app)
    http_server.serve_forever()