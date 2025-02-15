from flask import Flask
import requests

app = Flask(__name__)

@app.route('/')
def results():
    response = requests.get('http://backend:3000/votes')
    votes = response.json()
    result = '<h1>Voting Results</h1>'
    for v in votes:
        result += f"<p>{v['option']}: {v['votes']} votes</p>"
    return result

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80)