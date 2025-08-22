# Use uma imagem base do Python
FROM python:3.9-slim

# Defina o diretório de trabalho no contêiner
WORKDIR /app

# Copie os arquivos de requisitos para o diretório de trabalho
COPY requirements.txt .

# Instale as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copie o código da sua aplicação
COPY . .

# Expõe a porta em que a aplicação será executada
EXPOSE 5000

# Comando para rodar a aplicação quando o contêiner for iniciado
CMD ["python", "app.py"]
