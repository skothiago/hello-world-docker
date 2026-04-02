from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Olá, DevOps! Meu primeiro contêiner está rodando."

if __name__ == '__main__':
    # O host 0.0.0.0 é fundamental para o Docker conseguir expor a porta
    app.run(host='0.0.0.0', port=5000)