# PRÁCTICA JENKINS

Este repositorio cuenta con dos carpetas:
  - PHP: en la que se encuentran todos los ficheros PHP + HTLM que va a tener el contenedor desplegado
  - scripts: que contiene el fichero SQL con las tablas que se van a insertar en la base de datos iaw_db.

El fichero docker-compose contiene tres imágenes:
  - Apache: permite puerto 8085.
  - MySQL: puerto 3306.
  - phpMyAdmin: puerto 8081.

Y un fichero llamado Jenkins-pipeline.txt que realiza las siguientes etapas:
  1. Descarga el repositorio con git clone.
  2. Despliega los contenedores.
  3. Copia los ficheros que están en la carpeta PHP al volumen web, que utiliza el contenedor de Apache.
  4. Añade las tablas que se encuentran en el archivo SQL a la base de datos iaw_db, creada al desplegar los contenedores.
  5. Ejecutar la gestión de dependencias con composer.
