#!/bin/bash 
#Crear usuario
clear

	CREAR=Crear 
	MODIF=Modificar
	BORRAR=Borrar

	echo "1. Crear usuario"
	echo "2. Modificar usuario"
	echo "3. Listar usuarios"
	echo "4. Borrar usuario"	
	
	read -p "Seleccione una opcion: " opcion
	
	if [ 1 -eq $opcion ]; then
	    echo "Crear usuario"
	elif [ 2 -eq $opcion ]; then
	    echo "Modificar usuario"
	elif [ 3 -eq $opcion ]; then
	    echo "Listar usuario"
	elif [ 4 -eq $opcion ]; then
	    echo "Borrar usuario"
	else 
	    echo salir
	fi
	
#!/bin/bash
#Crear usuario
read -p 'Nombre de usuario: ' nombre
read -p 'Contraseña' password
echo $nombre 
echo $password

useradd -p $password $nombre
mkdir /var/www/$nombre/{web,blog,files}
chown root:root /var/www/$nombre
chown $nombre:$nombre /var/www/$nombre/*
chmod -R 755 /var/www/ 
