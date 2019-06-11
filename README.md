# Ejercicio Docker

Comandos a ejecutar

...

vagrant ssh

cd /vagrant

cd local

docker build -t lin . 

docker run -p 8082:4000 lin 

...

# Desde otra terminal ssh luego verificar con

curl localhost:8082 

...

La URL es 'http://localhost:8082/'
