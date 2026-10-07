#Usar una imagen base
FROM python:python:3.14-bookworm
WORKDIR /app 
# Copiando archivos del proyecto al contenedor
COPY . .
# Instalando  las dependencias del proyecto
RUN pip install -r requeriments.txt
# Puerto que el contenedor va a escuchar
EXPOSE 5000
#Comando para ejecutar el contenedor
CMD ["python","app.py"]
