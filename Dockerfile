# Usar una imagen base
FROM python:3.14-bookworm
# Creando la carpeta de trabajo
WORKDIR /app
# Copiadno archivos del proyecto al contenedor
COPY . .
# Instalando las dependencias del proyecto
RUN pip install -r requirements.txt
# Puerto que el contenedor va a escuchar
EXPOSE 5000
# Comando para ejecutar el contenedor
CMD ["python", "app.py"]
