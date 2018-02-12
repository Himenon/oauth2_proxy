from flask import Flask, render_template
from os import environ
app = Flask(__name__)

server_name = environ.get('SERVER_NAME')

@app.route('/')
def hello():
    return render_template('hello.html', server_name=server_name)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
