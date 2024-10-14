#!/bin/bash



sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores        



sudo useradd -m -s /bin/bash -c "Alumnos" -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A1
sudo useradd -m -s /bin/bash -c "Alumnos" -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A2
sudo useradd -m -s /bin/bash -c "Alumnos" -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A3
sudo useradd -m -s /bin/bash -c "Profesores" -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_P1



sudo usermod -aG p1c2_2024_gAlumno p1c2_2024_A1
sudo usermod -aG p1c2_2024_gAlumno p1c2_2024_A2
sudo usermod -aG p1c2_2024_gAlumno p1c2_2024_A3
sudo usermod -aG p1c2_2024_gProfesores p1c2_2024_P1


sudo chown p1c2_2024_A1  /Examenes-UTN/alumno_1
sudo chown p1c2_2024_A2  /Examenes-UTN/alumno_2
sudo chown p1c2_2024_A3  /Examenes-UTN/alumno_3
sudo chown p1c2_2024_P1  /Examenes-UTN/profesores



sudo chmod 750 /Examenes-UTN/alumno_1
sudo chmod 760 /Examenes-UTN/alumno_2
sudo chmod 700 /Examenes-UTN/alumno_3
sudo chmod 775 /Examenes-UTN/profesores

#Que cada usuario cree su propia carpeta.
sudo su -c "whoami" p1c2_2024_A1 | sudo tee /Examenes-UTN/alumno_1/validar1.txt
sudo su -c "whoami" p1c2_2024_A2 | sudo tee /Examenes-UTN/alumno_2/validar2.txt
sudo su -c "whoami" p1c2_2024_A3 | sudo tee /Examenes-UTN/alumno_3/validar3.txt
sudo su -c "whoami" p1c2_2024_P1 | sudo tee /Examenes-UTN/profesores/profesores.txt


echo "Punto C terminado"
