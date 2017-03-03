
DROP DATABASE IF EXISTS eoslab;
CREATE DATABASE IF NOT EXISTS eoslab;
USE eoslab;


CREATE TABLE categorias(
	id INT(5) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(150) NOT NULL,
	imagen VARCHAR(150) NOT NULL
)ENGINE=INNODB;


CREATE TABLE productos(
	id INT(5) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	url VARCHAR(150) DEFAULT 'Imagen no disponible',
	descripcion_nombre VARCHAR(150) NOT NULL,
	ref VARCHAR(150) NOT NULL,
	descripcion VARCHAR(150),
	tresd VARCHAR(150),
	bluetooth VARCHAR(150),
	fecha VARCHAR(150),
	cruz VARCHAR(150),
	horario VARCHAR(150),
	brillo VARCHAR(150),
	disponibilidad VARCHAR(150),
	voltaje VARCHAR(150),
	consumo VARCHAR(150),
	almacenamiento VARCHAR(150),
	trabajo VARCHAR(150),
	pixeles VARCHAR(150),
	fuente VARCHAR(150),
	control VARCHAR(150),
	tipografia VARCHAR(150),
	cpu VARCHAR(150),
	animacion VARCHAR(150),
	cantidad VARCHAR(150),
	ancho VARCHAR(150),
	alto VARCHAR(150),
	fondo VARCHAR(150),
	id_categorias INT(5) NOT NULL,
	FOREIGN KEY (id_categorias) REFERENCES categorias(id)

)ENGINE=INNODB;

INSERT INTO categorias(nombre) VALUES ("Cruces de farmacia");
INSERT INTO categorias(nombre) VALUES ("Clínicas veterinarias");
INSERT INTO categorias(nombre) VALUES ("Preciarios gasolineras");
INSERT INTO categorias(nombre) VALUES ("Clínicas ortopedias");
INSERT INTO categorias(nombre) VALUES ("Cruces de parafarmacia");
INSERT INTO categorias(nombre) VALUES ("Clínicas dentales");
INSERT INTO categorias(nombre) VALUES ("Centro médico");

INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Latina%2060/latina60-02.png",
"Cruz Led Latina 60","CL60","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 75w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 22mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 640", "Ancho: 60 cm", "Alto: 60 cm",
"Fondo: 12", 1);

INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Latina%2085%20LC/latina85lc.png",
"Cruz Led Latina 85 LC","CL85LC","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 75w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 32mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 640", "Ancho: 86 cm", "Alto: 86 cm",
"Fondo: 12", 1);


INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Latina%2085%20Compact/latina85com-02.png",
"Cruz Led Latina 85 Compact","CL85COM","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 169w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 22mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 1440", "Ancho: 86 cm", "Alto: 86 cm",
"Fondo: 12", 1);


INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Latina%20110/latina110.png",
"Cruz Led Latina 110","CL110","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 299w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 22mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 2560", "Ancho: 112 cm", "Alto: 112 cm",
"Fondo: 12", 1);


INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Latina%2085%20Color/latina85color.png",
"Cruz Led Latina 85 Color","CL85COLOR","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Presente cualquier color corporativo alcanzando mayor notoriedad",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 225w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 32mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 640", "Ancho: 86 cm", "Alto: 86 cm",
"Fondo: 12", 1);


INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Latina%2085%20HQ/latina85hq02.png",
"Cruz Led Latina 85 HQ","CL85HQ","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 299w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 16mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 5", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 2560", "Ancho: 86 cm", "Alto: 86 cm",
"Fondo: 12", 1);


INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Griega%2080/griega80.png",
"Cruz Led Griega 80","CG80","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 180w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 22mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 1536", "Ancho: 78 cm", "Alto: 78 cm",
"Fondo: 12", 1);


INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Griega%2090/griega90.png",
"Cruz Led Griega 90","CG90","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 404w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 17,7mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 3456", "Ancho: 89 cm", "Alto: 89 cm",
"Fondo: 12", 1);


INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Griega%20110%20LC/griega110lc.png",
"Cruz Led Griega 110LC","CG110LC","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 180w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 32mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 1536", "Ancho: 112 cm", "Alto: 112 cm",
"Fondo: 12", 1);


INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Griega%20110%20Compact/griega110com.png",
"Cruz Led Griega 110 Compact","CG110COM","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 404w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 22mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 3456", "Ancho: 112 cm", "Alto: 112 cm",
"Fondo: 12", 1);


INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Griega%20110%20Color/griega110color.png",
"Cruz Led Griega 110 Color","CG110COLOR","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Presente cualquier color corporativo alcanzando mayor notoriedad",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 539w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 32mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 4608", "Ancho: 112 cm", "Alto: 112 cm",
"Fondo: 12", 1);


INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Griega%20150%20Monster/griega150.png",
"Cruz Led Griega 150 Monster","CG150MONSTER","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 718w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 22mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 5", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 6144", "Ancho: 148 cm", "Alto: 148 cm",
"Fondo: 12", 1);


INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Latina%2060/latina60-01-v.png",
"Cruz Led Griega 150 Monster","CG150MONSTER","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 718w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 22mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 5", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 6144", "Ancho: 148 cm", "Alto: 148 cm",
"Fondo: 12", 1);


INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Latina%2060/latina60-01-v.png",
"Cruz Led Latina 60","CL60","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 75w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 22mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 640", "Ancho: 60 cm", "Alto: 60 cm",
"Fondo: 12", 2);

INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Latina%2085%20LC/latina85lc-v.png",
"Cruz Led Latina 85 LC","CL85LC","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 75w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 32mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 640", "Ancho: 86 cm", "Alto: 86 cm",
"Fondo: 12", 2);


INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Latina%2085%20Compact/latina85com-v.png",
"Cruz Led Latina 85 Compact","CL85COM","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 169w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 22mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 1440", "Ancho: 86 cm", "Alto: 86 cm",
"Fondo: 12", 2);


INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Latina%20110/latina110-v.png",
"Cruz Led Latina 110","CL110","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 299w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 22mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 2560", "Ancho: 112 cm", "Alto: 112 cm",
"Fondo: 12", 2);


INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Latina%2085%20Color/latina85color.png",
"Cruz Led Latina 85 Color","CL85COLOR","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Presente cualquier color corporativo alcanzando mayor notoriedad",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 225w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 32mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 640", "Ancho: 86 cm", "Alto: 86 cm",
"Fondo: 12", 2);

INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/fotobox/griega80-v.png",
"Cruz Led Griega 80","CG80","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 180w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 22mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 1536", "Ancho: 78 cm", "Alto: 78 cm",
"Fondo: 12", 2);

INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Griega%20110%20LC/griega110lc-v.png",
"Cruz Led Griega 110LC","CG110LC","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 180w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 32mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 1536", "Ancho: 112 cm", "Alto: 112 cm",
"Fondo: 12", 2);

INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Griega%20110%20Color/griega110color.png",
"Cruz Led Griega 110 Color","CG110COLOR","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Presente cualquier color corporativo alcanzando mayor notoriedad",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 539w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 32mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 4608", "Ancho: 112 cm", "Alto: 112 cm",
"Fondo: 12", 2);


INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Latina%2060/latina60-01-o.png ",
"Cruz Led Latina 60","CL60","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 75w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 22mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 640", "Ancho: 60 cm", "Alto: 60 cm",
"Fondo: 12", 4);

INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Latina%2085%20LC/latina85lc-o.png",
"Cruz Led Latina 85 LC","CL85LC","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 75w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 32mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 640", "Ancho: 86 cm", "Alto: 86 cm",
"Fondo: 12", 4);


INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Latina%2085%20Compact/latina85com-o.png",
"Cruz Led Latina 85 Compact","CL85COM","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 169w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 22mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 1440", "Ancho: 86 cm", "Alto: 86 cm",
"Fondo: 12", 4);


INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Latina%20110/latina110-o.png",
"Cruz Led Latina 110","CL110","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 299w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 22mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 2560", "Ancho: 112 cm", "Alto: 112 cm",
"Fondo: 12", 4);

INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Griega%2080/griega80-o.png",
"Cruz Led Griega 80","CG80","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 180w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 22mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 1536", "Ancho: 78 cm", "Alto: 78 cm",
"Fondo: 12", 4);

INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Griega%20110%20LC/griega110lc-o.png",
"Cruz Led Griega 110LC","CG110LC","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 180w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 32mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 1536", "Ancho: 112 cm", "Alto: 112 cm",
"Fondo: 12", 4);


INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Latina%2060/latina60-01-p.png",
"Cruz Led Latina 60","CL60","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 75w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 22mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 640", "Ancho: 60 cm", "Alto: 60 cm",
"Fondo: 12", 5);

INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Latina%2085%20LC/latina85lc-v.png",
"Cruz Led Latina 85 LC","CL85LC","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 75w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 32mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 640", "Ancho: 86 cm", "Alto: 86 cm",
"Fondo: 12", 5);


INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Latina%2085%20Compact/latina85com-v.png",
"Cruz Led Latina 85 Compact","CL85COM","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 169w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 22mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 1440", "Ancho: 86 cm", "Alto: 86 cm",
"Fondo: 12", 5);


INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Latina%20110/latina110-v.png",
"Cruz Led Latina 110","CL110","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 299w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 22mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 2560", "Ancho: 112 cm", "Alto: 112 cm",
"Fondo: 12", 5);

INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Griega%2080/griega80.png",
"Cruz Led Griega 80","CG80","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 180w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 22mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 1536", "Ancho: 78 cm", "Alto: 78 cm",
"Fondo: 12", 5);

INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Griega%20110%20LC/griega110lc-v.png",
"Cruz Led Griega 110LC","CG110LC","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 180w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 32mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 1536", "Ancho: 112 cm", "Alto: 112 cm",
"Fondo: 12", 5);


INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Muela%20LED%2090/muela90-01.png",
"Muela LED 90","ML90","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 300w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 16mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 2560", "Ancho: 62 cm", "Alto: 92 cm",
"Fondo: 12", 6);


INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Muela%20LED%20130/muela130-02.png",
"Muela LED 130","ML130","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 300w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 22mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 2560", "Ancho: 92 cm", "Alto: 126 cm",
"Fondo: 12", 6);


INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Latina%2060/latina60-01-m.png",
"Cruz Led Latina 60","CL60","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 75w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 22mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 640", "Ancho: 60 cm", "Alto: 60 cm",
"Fondo: 12", 7);

INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Latina%2085%20LC/latina85lc-m.png",
"Cruz Led Latina 85 LC","CL85LC","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 75w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 32mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 640", "Ancho: 86 cm", "Alto: 86 cm",
"Fondo: 12", 7);


INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Latina%2085%20Compact/latina85com-m.png",
"Cruz Led Latina 85 Compact","CL85COM","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 169w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 22mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 1440", "Ancho: 86 cm", "Alto: 86 cm",
"Fondo: 12", 7);


INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Latina%20110/latina110-m.png",
"Cruz Led Latina 110","CL110","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 299w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 22mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 2560", "Ancho: 112 cm", "Alto: 112 cm",
"Fondo: 12", 7);

INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Griega%2080/griega80-m.png",
"Cruz Led Griega 80","CG80","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 180w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 22mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 1536", "Ancho: 78 cm", "Alto: 78 cm",
"Fondo: 12", 7);

INSERT INTO productos (url, descripcion_nombre,ref, descripcion, tresd, bluetooth, fecha, cruz, horario, brillo, disponibilidad, voltaje,
consumo, almacenamiento, trabajo, pixeles, fuente, control, tipografia, cpu, animacion, cantidad, ancho, alto, fondo, id_categorias) VALUES ("http://www.eoslab.com/img/productos/cruces/Griega%20110%20LC/griega110lc-m.png",
"Cruz Led Griega 110LC","CG110LC","Texto programable con múltiples efectos y hasta cinco fuentes tipográficas","Animaciones de alta calidad gracias a nuestro sofisticado sistema 3D",
"Comunicación bluetooth con 100 metros de alcance aproximadamente","Fecha, hora y temperatura. Horario de verano actualizado automáticamente",
"Cualquier cruz se puede pedir a una o a dos caras","Control de horario comercial: Abierto y Cerrado","Control de brillo mediante programación horaria. (Día y noche)",
"Disponible en un sólo color o con orla (dos colores) a elegir, sin coste adicional","Voltaje de Entrada: 200-240V AC","Consumo Máximo: 180w",
"Temperatura de Almacenamiento: -30°C ~ 140°C","Temperatura de Trabajo: -20°C ~ 64°C","Separación entre píxeles: 32mm","Alimentación: Fuente de 5V alojada en el interior",
"Sistema de Control: Bus de datos serie", "Número de fuentes tipográficas: 4", "CPU: 16bits", "Animaciones: 16Mbytes", "Cantidad de Leds: 1536", "Ancho: 112 cm", "Alto: 112 cm",
"Fondo: 12", 7);










