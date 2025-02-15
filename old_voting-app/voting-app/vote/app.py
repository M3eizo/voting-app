from flask import Flask, render_template, request
import redis

app = Flask(__name__)
redis_client = redis.Redis(host='redis', port=6379)

@app.route('/', methods=['GET', 'POST'])
def vote():
    if request.method == 'POST':
        option = request.form['option']
        redis_client.incr(option)
    return '''
        <form method="post">
            <button name="option" value="cats">Vote for Cats</button>
            <button name="option" value="dogs">Vote for Dogs</button>
        </form>
    '''

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80)