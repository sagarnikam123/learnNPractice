from flask import Flask, jsonify

app = Flask(__name__)


@app.route('/')
def hello_world():
    return 'Hello World!'


@app.route('/armstrong/<int:n>')
def armstrong(n):
    sum_arm = 0
    order = len(str(n))
    copy_n = n
    while n > 0:
        digit = n % 10
        sum_arm += digit ** order
        n = n // 10
    if sum_arm == copy_n:
        result = {
            'Number': copy_n,
            'Armstrong': True,
            'Server IP': '121.323.263.23',
            'Other Numbers': [1, 2, 3, 4]
        }
    else:
        print(f'{copy_n} is not an armstrong number')
        result = {
            'Number': copy_n,
            'Armstrong': False,
            'Server IP': '122.235.283.13',
            'Other Numbers': [5, 6, 7, 8]
        }
    return jsonify(result)


if __name__ == '__main__':
    app.run(debug=True)
