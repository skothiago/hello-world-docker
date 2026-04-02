# 1. Pega uma imagem oficial do Python (versão slim, que é bem mais leve)
FROM python:3.9-slim

# 2. Cria uma pasta chamada /app dentro do "mini Linux" do contêiner
WORKDIR /app

# 3. Copia o arquivo de requisitos do seu PC para dentro da pasta /app do contêiner
COPY requirements.txt .

# 4. Roda o comando para instalar o Flask lá dentro
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copia o resto dos arquivos do seu PC (o app.py) para dentro do contêiner
COPY . .

# 6. Avisa que o contêiner vai liberar o tráfego na porta 5000
EXPOSE 5000

# 7. O comando que o contêiner vai executar assim que for ligado
CMD ["python", "app.py"]