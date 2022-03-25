from flask import Flask
app=Flask(__name__)

@app.route("/")
def home():
    return "Welcome to Home Page"

@app.route("/nikhil")
def nikhil():
    return "Welcome nikhil"
    
if __name__=='__main__':
    app.run(debug=True)