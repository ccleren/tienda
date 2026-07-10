# Pipeline Jenkins para aplicación PHP Dockerizada

Proyecto DevOps para desplegar una aplicación PHP usando Docker Compose, Apache, MySQL y phpMyAdmin, automatizando el proceso mediante un pipeline de Jenkins.

## Objetivo

El objetivo del proyecto es practicar un flujo básico de integración y despliegue usando contenedores.
El pipeline se encarga de clonar el repositorio, levantar los servicios, copiar los archivos de la aplicación, cargar la base de datos y ejecutar la gestión de dependencias.

## Arquitectura

```text
Jenkins
   │
   ▼
Docker Compose
   ├── Apache + PHP
   ├── MySQL
   └── phpMyAdmin
```

## Tecnologías utilizadas

- Jenkins
- Docker
- Docker Compose
- PHP
- Apache
- MySQL
- phpMyAdmin
- Composer
- GitHub

## Estructura del proyecto

```text
.
├── PHP/
│   └── Archivos de la aplicación PHP
├── scripts/
│   └── Script SQL para inicializar la base de datos
├── Dockerfile
├── docker-compose.yml
├── Jenkins-pipeline.txt
└── README.md
```

## Servicios desplegados

| Servicio | Descripción | Puerto |
|---|---|---|
| Apache + PHP | Servidor web de la aplicación | 8085 |
| MySQL | Base de datos relacional | 3306 |
| phpMyAdmin | Interfaz web para administrar MySQL | 8081 |

## Ejecución local

Para levantar el entorno:

```bash
docker compose up -d
```

Una vez levantados los contenedores, se puede acceder a:

```text
Aplicación: http://localhost:8085
phpMyAdmin: http://localhost:8081
```

Para comprobar los contenedores activos:

```bash
docker ps
```

Para detener el entorno:

```bash
docker compose down
```

## Pipeline Jenkins

El pipeline realiza las siguientes fases:
1. Clona el repositorio desde GitHub.
2. Despliega los contenedores con Docker Compose.
3. Copia los archivos PHP al volumen usado por Apache.
4. Carga las tablas SQL en la base de datos.
5. Ejecuta Composer para gestionar dependencias.

## Qué demuestra este proyecto

- Uso de Docker Compose para desplegar varios servicios.
- Automatización de despliegue con Jenkins.
- Separación entre aplicación, base de datos y administración.
- Inicialización de base de datos mediante scripts SQL.
- Flujo básico DevOps para una aplicación PHP.

## Próximas mejoras

- Añadir variables de entorno con `.env`.
- Separar entornos de desarrollo y producción.
- Añadir healthchecks a los contenedores.
- Añadir pruebas automáticas en Jenkins.
- Añadir capturas del despliegue.
