Para ejecutar el contenedor, ejecutar

```
docker run -td --name laravel-nginx -p80:80 -p443:443 -p3306:3306 moradmp30/laravel-nginx
```

Para arrancar el servicio de base de datos, ejecutar 

```
docker exec -it laravel-nginx mysqld_safe &
```

Este comando debe ejecutarse cada vez que arranque el contenedor.

Por último, si es la primera vez que se arranca el contenedor, ejecutar

```
docker exec -it laravel-nginx php artisan migrate
```

De esta forma, se inicia la base de datos enlazada a la aplicación.
