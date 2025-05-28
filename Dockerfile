FROM python:3.10-slim

# Instala dependencias del sistema
RUN apt-get update && apt-get install -y ffmpeg git && apt-get clean

# Crear directorio de trabajo
WORKDIR /app

# Copiar archivos
COPY requirements.txt app.py ./

# Instalar dependencias Python
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]
