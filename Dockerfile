FROM python:3.10-slim

# Instala dependencias del sistema
RUN apt-get update && apt-get install -y ffmpeg git && apt-get clean

# Crear directorio de trabajo
WORKDIR /app

# Copiar archivos
COPY requirements.txt voz_texto.py ./

# Instalar dependencias Python
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8001

CMD ["python", "voz_texto.py"]
