#sistema operativo y python
FROM python:3.12-slim
#Crear una carpeta de trabajo
WORKDIR /app
#importar el proyecto a la carpeta
COPY . /app
#instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt
#exponer el puerto
Expose 5000
#ejecutar el proyecto \
CMD ["python", "app.py"]