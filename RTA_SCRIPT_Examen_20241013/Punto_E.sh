#!/bin/bash

#Busco/Filtro la primera linea de memoria

echo "$(head -n 1 /proc/meminfo)" > ~/repogit/UTNFRA_SO_1P2C_2024_PRIVITERA/RTA_ARCHIVOS_Examen_20241013/Filtro_Basico.txt
echo "Informacion Chassis : $(sudo dmidecode -t chassis | grep 'Manufacturer:' | awk '{print $2, $3}')" >>  ~/repogit/UTNFRA_SO_1P2C_2024_PRIVITERA/RTA_ARCHIVOS_Examen_20241013/Filtro_Basico.txt


echo "-----------------------"
echo "------TXT-CREADO-------"
echo "----FILTROS BASICOS----"
echo "-----------------------"
