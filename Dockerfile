# Descripción: Dockerfile para la creación de la imagen de la aplicación
FROM openjdk:18.0.2.1

#Directorio de trabajo
WORKDIR /app

#Copiamos el jar generado en el target
COPY target/ms-usuarios-0.0.1-SNAPSHOT.jar /app

#Opional, copiamos el jar generado en el target con el . para que se copie en el directorio de trabajo
#COPY target/ms-usuarios-0.0.1-SNAPSHOT.jar .

#Puerto de la aplicación
EXPOSE 8001

#Punto de entrada de la aplicación para ejecutarla
ENTRYPOINT ["java", "-jar", "ms-usuarios-0.0.1-SNAPSHOT.jar"]