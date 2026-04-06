from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Terceiro teste de atualização!"

if __name__ == '__main__':
    # Adicionamos o debug=True aqui!
    app.run(host='0.0.0.0', port=5000, debug=True)