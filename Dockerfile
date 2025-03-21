# Usa uma imagem oficial do Python
FROM python:3.9-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos do projeto para o container
COPY . .

# Instala as dependências
RUN pip install flask

# Expõe a porta que o Flask vai rodar
EXPOSE 5000

# Comando para rodar o app
CMD ["python", "app.py"]
