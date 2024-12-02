# Usamos la imagen oficial de PostgreSQL como base
FROM postgres:latest

# Copiamos cualquier archivo de configuración personalizado, si es necesario
# COPY ./my_custom.conf /etc/postgresql/postgresql.conf

# Establecemos la variable de entorno para la contraseña del usuario postgres
ENV POSTGRES_PASSWORD=feedbackPassword

# Exponemos el puerto 5432 para que se pueda acceder a la base de datos
EXPOSE 5432

# El contenedor se ejecutará con la configuración predeterminada de PostgreSQL
# y usará el volumen para almacenar los datos de forma persistente
VOLUME ["/var/lib/postgresql/data"]