from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def home():
    return render_template('index.html')

if __name__ == '__main__':
    # Run the app on port 8080 and listen on all interfaces
    app.run(host='0.0.0.0', port=8080, debug=True)
