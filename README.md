# Ejercicio Linux Docker

Clonar el respositorio, abrir el terminal en el mismo y ejecutar los siguientes comandos:

- vagrant ssh
- cd /vagrant
- cd local
- docker build -t lin .
- docker run -p 8082:4000 lin

En este punto ya esta publicada la aplicación, para verificar que esta funciónanado, abrimos un nuevo terminal en la misma carpeta y ejecutamos:

- vagrant ssh
- curl localhost:8082

Por ultimo desde el navegador podemos acceder a la aplciación mediante el siguiente URL:

- http://localhost:8082/
