-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 28-05-2022 a las 17:11:42
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE `play-to-play`;

USE `play-to-play`;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `play-to-play`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `games`
--

CREATE TABLE `games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `genre` bigint(20) UNSIGNED NOT NULL,
  `cover` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `video` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `text1` longtext COLLATE utf8_spanish_ci NOT NULL,
  `text2` longtext COLLATE utf8_spanish_ci DEFAULT NULL,
  `text3` longtext COLLATE utf8_spanish_ci DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `archives` varchar(500) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `games`
--

INSERT INTO `games` (`id`, `name`, `genre`, `cover`, `video`, `text1`, `text2`, `text3`, `price`, `archives`) VALUES
(1, 'Dead Cells', 1, 'http://127.0.0.1/public/images/71PCWffnThLSL1500__6292373ab9bc3.jpg', 'gX4cGcwmdsY', 'Dead Cells es un videojuego híbrido entre el género de exploración de mazmorras o roguelite, y metroidvania, creando su propio género, “roguevania”, desarrollado por el estudio Motion Twin. El juego fue lanzado para PC, Mac, Linux, Playstation 4, Nintendo Switch y Xbox One, siendo lanzado en la plataforma de Steam el 6 de agosto de 2018, bajo la categoría de juego de acción e indie.En el juego asumes el papel de un cúmulo de células que se apoderan de un cuerpo en descomposición, con el cual explora un castillo que constantemente se expande y cambia, el jugador puede hacer uso de distintas armas que se encuentran repartidas a lo largo del sitio, cada una con habilidades y estadísticas diferentes, diversas habilidades permanentes desbloqueables que permiten acceder a desafíos o recompensas nuevas, así como varios jefes y zonas.', 'La historia del juego ronda sobre un rey de una prisión, el cual al hacer experimentos acabó vertiendo una maldición sobre la isla donde se ubicaba esta, por lo cual la isla cobra vida y los distintos seres que habitaban la isla toman formas terroríficas, del cual el protagonista, llamado solamente como “Prisionero” es víctima y está condenado a resucitar eternamente, sirviendo como justificación de la jugabilidad a la vez que elemento de la historia. Esta se encuentra de cierto modo oculta y es tarea del jugador descubrir las pistas que el juego deja en determinadas ocasiones e hilarlas por su cuenta, aunque la finalidad de este juego no es atrapar por su historia, por lo que los desarrolladores del propio tienden a hacer bromas sobre esto dentro del juego.', NULL, '15.00', 'http://127.0.0.1/public/images/71PCWffnThLSL1500__629236ef15f84.jpg'),
(2, 'Hollow Knight', 1, 'http://127.0.0.1/public/images/0d8c26607b6857ed0785c790f403e906_6292374387e3b.jpg', 'UAO2urG23S4', 'Hollow Knight es un videojuego perteneciente al género metroidvania desarrollado y publicado por Team Cherry. El videojuego fue inicialmente lanzado para Microsoft Windows en febrero de 2017, y más tarde para macOS y Linux en abril de 2017. La adaptación para Nintendo Switch fue lanzada el 12 de junio de 2018. El desarrollo fue parcialmente financiado como un proyecto Kickstarter que obtuvo 57 000 dólares hasta finales de 2014. El juego fue lanzado en las consolas PlayStation 4 y Xbox One el 25 de septiembre de 2018. El videojuego cuenta la historia del Caballero, en su búsqueda para descubrir los secretos del largamente abandonado reino de Hallownest, cuyas profundidades atraen a los aventureros y valientes con la promesa de tesoros o la respuesta a misterios antiguos.Una secuela del videojuego titulada Hollow Knight: Silksong, se encuentra actualmente en desarrollo y su lanzamiento está programado para Microsoft Windows, Mac, Linux y Nintendo Switch, aunque Team Cherry no ha descartado lanzamientos en otras plataformas. Las personas que donaron en la campaña de Kickstarter de Hollow Knight recibirán Silksong de forma gratuita.', 'El combate del videojuego se centra en el uso del aguijón, un arma que se asemeja a una espada, con el que se puede golpear a los enemigos en las 4 direcciones (arriba, abajo, derecha e izquierda). El aguijón puede ser mejorado para que haga más daño a medida que se progresa en el videojuego, y el Caballero puede aprender ciertos ataques especiales (llamados Artes del aguijón), aumentando su daño a los enemigos. La mayoría de las áreas tienen un jefe que el jugador deberá derrotar para continuar su aventura, dado que dejan caer recompensas o mejoras útiles, u otorgan un objeto o habilidad necesaria para acceder a nuevas zonas. Los enemigos derrotados dejan caer geo, moneda que el jugador puede usar para comprar objetos de los distintos comerciantes que pueden encontrarse en Hallownest. Golpear enemigos otorga ALMA al jugador, un recurso que puede ser usado para curarse del daño recibido o lanzar habilidades especiales como hechizos de largo alcance y explosiones.\r\n\r\nSi el jugador muere, reaparecerá en el último lugar en el que descansó/guardó, perdiendo todo el Geo obtenido y reduciendo la cantidad máxima de ALMA que puede recoger. Sin embargo, regresando al lugar donde murió y derrotando su sombra, podrá recuperar el geo y el límite de ALMA.', NULL, '15.00', 'http://127.0.0.1/public/images/0d8c26607b6857ed0785c790f403e906_629236f7db8a7.jpg'),
(3, 'Spiritfarer', 6, 'http://127.0.0.1/public/images/Y1nQVX5gU2_evV5lCTXAnEpWRCCY-DUecqpKe_fH4YA_350x200_2x-0_62923714be2bd.jpg', '4pKJ-NuSjNE', 'Spiritfarer es un videojuego independiente de acción desarrollado y publicado por el estudio canadiense Thunder Lotus Games y liberado el 18 de agosto de 2020 para Microsoft Windows, macOS, Linux, PlayStation 4, Nintendo Switch, Xbox One y Stadia. El personaje principal, Stella, se convierte en un \"Spiritfarer\" (viajero espiritual) cuyo trabajo es transportar los espíritus de los difuntos al \"más allá\".\r\n\r\nRecibió críticas generalmente positivas porque elogian su jugabilidad de un ritmo lento, su detallada animación, una partitura musical de orquesta y temas únicos, y en diciembre de 2021 había vendido por encima de un millón de copias. Tras el lanzamiento del juego, Thunder Lotus decidió que Spiritfarer añadiera nuevo contenido con actualizaciones gratuitas; en la última actualización del 13 de diciembre de 2021, el juego pasaría a llamarse Spiritfarer: Farewell Edition.', 'Spiritfarer es un juego de aventura indie desarrollado por Thunder Lotus Games donde el jugador tiene que satisfacer las necesidades de los espíritus a bordo de su barco con alimentos y construyendo mejoras adicionales a la barca para satisfacer los deseos y necesidades de los espíritus. Esto conlleva a que el jugador recolecte materiales mientras navega en su viaje para construir cocinas, jardines y otras amenidades para ayudar a que los espíritus se sientan más en un hogar mientras descubres un poco más de la historia que hay detrás de cada espíritu cuando navegan en busca de cruzar el más allá del Everdoor. Estas nuevas secciones que son añadidas al barco se colocan como si se tratara de un juego de Tetris, colocando uno tras otro en cualquier forma que quepan. El personaje que Stella conoce a lo largo del camino le proporciona al jugador mini-juegos para probar sus habilidades y obtener materiales y monedas que le serán pertinentes para los personajes de los espíritus. El juego también tiene vendedores que ofrecen elementos interesantes para el interior del barco como semillas de plantas para los jardines y mobiliario para decorar el barco, dando una experiencia más personalizada.', NULL, '17.95', 'http://127.0.0.1/public/images/Y1nQVX5gU2_evV5lCTXAnEpWRCCY-DUecqpKe_fH4YA_350x200_2x-0_62923714c0c4b.jpg'),
(4, 'Frostpunk', 2, 'http://127.0.0.1/public/images/Frostpunk-Cover-Art_6292377b4f1f4.jpg', 'qqEpSOFDXGA', 'Frostpunk es un videojuego de supervivencia de construcción de ciudades desarrollado y publicado por 11 bit studios. Los jugadores asumen el papel de un líder en una historia alternativa de finales del siglo XIX, en la que deben construir y mantener una ciudad durante un invierno volcánico en todo el mundo, gestionando los recursos, tomando decisiones sobre cómo sobrevivir y explorando la zona fuera de su ciudad en busca de supervivientes, recursos u otros objetos útiles. El juego cuenta con varios escenarios para emprender, cada uno con sus propias historias y diferentes desafíos.\r\n\r\nEl juego se lanzó inicialmente para Microsoft Windows en abril de 2018, pero posteriormente estuvo disponible para PlayStation 4 y Xbox One en octubre de 2019, y para macOS en febrero de 2021.1​ El juego recibió críticas generalmente positivas en su lanzamiento y vendió más de 3 millones de copias a los tres años de su salida. 11 Bit studios se ha asociado con NetEase Games para llevar la versión de Frostpunk Mobile en 2021.', 'El jugador, conocido simplemente como \"el Capitán\", comienza con un pequeño grupo de supervivientes formado por trabajadores, ingenieros y niños, y varios pequeños alijos de suministros con los que construir una ciudad. A partir de ahí, los jugadores recogen carbón, madera, acero y alimentos para mantener su sociedad caliente y saludable en medio de las constantes fluctuaciones de temperatura. Las condiciones meteorológicas y la agitación política pueden hacer que los ciudadanos no quieran trabajar tanto. En la mayoría de los escenarios, salvo en \"Al límite\", toda la ciudad gira en torno al generador, una máquina de vapor que depende del carbón y produce calor en un radio circular, que puede ampliarse e intensificarse a lo largo del juego, lo que requiere una mayor aportación de carbón. El juego hace hincapié en la necesidad de priorizar los edificios en función del calor que necesiten; las casas y las instalaciones médicas requerirán una ubicación cercana al reactor, para que el jugador no se enfrente a brotes de congelación y enfermedades. Mientras que las casas se pueden aislar mejor a lo largo del juego, las instalaciones médicas tendrán que mantenerse por encima de los -20°C, o se enfrentarán a ser inoperables. Los lugares de trabajo también tendrán que estar aislados, lo que puede conseguirse mediante puestos de recogida o turbinas de vapor, o bien eludirlos por completo con la introducción de mano de obra mecánica, o \"autómatas\".\r\n\r\nEl jugador tiene la opción de utilizar las leyes para regular la productividad de su sociedad a costa de aumentar posiblemente el descontento, por ejemplo, permitiendo el trabajo infantil u obligando a hacer turnos temporales de 24 horas, pero también leyes para desarrollar una mejor asistencia sanitaria como prótesis o raciones extra para los enfermos. En la mayoría de los escenarios, el jugador también tiene la opción de aumentar el apoyo de los ciudadanos, ya sea mediante el \"Orden\", que incluye edificios y leyes para imponer la seguridad, o mediante la \"Fe\", que incluye edificios y leyes que implementan una religión. Estos dos caminos pueden continuarse hasta el fanatismo, con el camino del \"Orden\" que lleva a una autocracia militarista, mientras que el camino de la \"Fe\" lleva a una teocracia total. Con la ley final en cualquiera de los dos caminos, el Capitán es proclamado gobernante absoluto, y la mecánica de la esperanza se sustituye por un valor constante. Además, se construye una plataforma para ejecutar a los \"enemigos\" o \"infieles\" escaldándolos hasta la muerte con el vapor del generador; el jugador puede programar una ejecución para rebajar el descontento en su ciudad. Adoptar cualquiera de las tres últimas leyes de ambos caminos llevará al final \"Cruzó la línea\", en caso de que la ciudad sobreviva, donde el juego comenta cómo la humanidad cruzó la línea y abandonó sus valores en la búsqueda de la supervivencia. 11BitStudios ha mencionado en múltiples ocasiones que el sistema de leyes fue diseñado para forzar a los jugadores a elegir entre la supervivencia o la conservación de la humanidad, creando un dilema moral en el que se basa el juego.', NULL, '20.00', 'http://127.0.0.1/public/images/Frostpunk-Cover-Art_6292377b6720a.jpg'),
(5, 'Skyrim', 3, 'http://127.0.0.1/public/images/81rwetLHTwL._AC_SY606__62923798c3736.jpg', 'ooqdJTYspyo', 'The Elder Scrolls V : Skyrim es un ARPG del tipo mundo abierto desarrollado por Bethesda Game Studios y publicado por Bethesda Softworks. Skyrim es la quinta entrega de videojuegos de acción y fantasía de la serie The Elder Scrolls y es posterior a The Elder Scrolls IV: Oblivion y predecesor de The Elder Scrolls Online. Skyrim salió a la venta el 11 de noviembre de 20111​ para las plataformas: Microsoft Windows, Xbox 360 y PlayStation 3. El 26 de julio de 2012 fueron lanzados al mercado tres expansiones que son descargables: Dawnguard, Hearthfire y Dragonborn. El 28 de octubre de 2016 fue lanzada una remasterización llamada: Skyrim Special Edition. Incluye el juego original y los complementos, así como nuevas características: gráficos y efectos renovados.', 'La historia de Skyrim se centra en los esfuerzos del personaje, dovahkiin (sangre de dragón), para derrotar a Alduin, un dragón/dovah que, según la profecía, destruirá el mundo. La trama está fechada doscientos años después de los sucesos de Oblivion y tiene lugar en la provincia ficticia de Skyrim[1]. En el transcurso de la partida, el jugador completa misiones y hace evolucionar a su personaje gracias a la mejora de sus habilidades. A diferencia de los juegos anteriores de Elder Scrolls, en Skyrim no se requiere que el usuario seleccione un tipo de personaje al inicio del juego, resolviendo así el problema que el equipo de desarrolladores veía desde versiones anteriores: la necesidad de tener que forzar al usuario a un estilo rígido de juego. Skyrim continúa con la tradición de mundo abierto al permitir que el jugador viaje a cualquier parte del mapa del juego en cualquier momento y posponer indefinidamente u omitir parcial o totalmente la historia principal.', 'Es una secuela directa de los anteriores juegos de Elder Scrolls, durante su construcción fue considerado como un sucesor de la filosofía de Oblivion y de Fallout 3 de 2008. El equipo de desarrolladores optó por un mundo de juego más diverso y único de lo que fue la provincia ficticia de Cyrodiil en Oblivion, los cuales fueron considerados menos interesantes por su director y productor ejecutivo Todd Howard, en comparación con Skyrim. Durante el estreno, recibió buenas críticas por sus cambios, sobre todo en lo relacionado con el sistema de desarrollo de los personajes, gracias a la experiencia ganada durante el desarrollo de las entregas anteriores de Elder Scrolls. No obstante, también recibió críticas negativas en cuanto a la pobreza del acabado en los detalles de los personajes y a los escuetos movimientos durante un combate cuerpo a cuerpo. El juego fue desarrollado utilizando un motor de creación elaborado por Bethesda Softworks específicamente para este juego. Durante la primera semana de su lanzamiento se enviaron a los minoristas más de siete millones de copias y ha vendido más de 20 millones de copias para las tres plataformas. En el E3 de 2016 Bethesda anuncio la ya nombrada versión remasterizada del juego para el 27 de octubre de 2016 para PC, PS4 y Xbox One, saliendo después para Nintendo Switch en 2017.', '39.99', 'http://127.0.0.1/public/images/81rwetLHTwL._AC_SY606__62923798c5f9d.jpg'),
(6, 'Horizon Chase', 5, 'http://127.0.0.1/public/images/horizonChase_629237ba9411a.jpg', '4VomFVNGgnA', 'Horizon Chase es un videojuego de carreras desarrollado y publicado por la empresa brasileña Aquiris Game Studio.1​ Fue lanzado el 20 de agosto de 2015 para iOS y Android. Un juego en 3D, promociona el hecho de que tiene una estética retro única inspirada en títulos 2D de 16 bits. Su banda sonora tiene influencias de Nintendocore.2​\r\n\r\nEn 2018, se lanzó una versión llamada Horizon Chase Turbo para Windows, PlayStation 4, Nintendo Switch, Xbox One y PlayStation Vita a través de Play-Asia lanzamiento físico, uno de los últimos para el sistema. Esta versión incluye gráficos mejorados, más autos y pistas, y presenta nuevas características como el modo cooperativo de sofá.', 'Horizon Chase desafía al jugador a completar carreras en pistas ubicadas alrededor del mundo. Giros adicionales a la fórmula de carreras vienen en forma de pastillas de combustible que deben obtenerse para completar la carrera, así como fichas que desbloquean nuevas pistas y el uso de refuerzos de nitro para acelerar la velocidad del coche del jugador.3​ El jugador comienza cada carrera en la parte posterior del paquete y debe pasar a los oponentes para ganar. También hay diferentes efectos climáticos y tipos de pistas que afectan el manejo.', NULL, '9.99', ''),
(7, 'Ori and the Blind Forest', 6, 'http://127.0.0.1/public/images/ori_629237e3463f0.jpg', 'cklw-Yu3moE', 'Ori and the Blind Forest es un videojuego de plataforma aventura de un jugador con el estilo de Metroidvania diseñado por Moon Studios, un desarrollador independiente, y publicado por Xbox Game Studios. El juego fue lanzado en 11 de marzo de 2015 y en solo 1 semana llegó al Millón de ventas por Microsoft Windows y Xbox One. Una nueva edición Ori and the Blind Forest: Definitive Edition se lanzó por Xbox One en 11 de marzo de 2016, y por Windows en 27 de abril de 2016. La Edición de Ori and the Blind Forest: Definitive Edition se lanzó para la consola Nintendo Switch en 27 de septiembre de 2019.\r\n\r\nEl videojuego se desarrolló por Moon Studios que no tiene una sede oficina real. Los miembros de equipo de desarrollo son de todo el mundo. El juego fue adquirido por Xbox Game Studios un año después del inicio del desarrollo. La historia del juego se inspiró por El rey león y El gigante de hierro, mientras unos de los elementos de sistema de juego se inspiró por las franquicias de Rayman y Metroid.\r\n\r\nAl lanzamiento, el videojuego recibió reconocimiento de los críticos y los jugadores que aplaudieron su sistema de juego, estilo de arte, historia, secuencias de acción, y diseño ambiente. El cofundador de Moon Studios Gennadiy Korol dijo que el juego fue lucrativo por la empresa en menos de una semana después de su lanzamiento inicial.', 'Ori and the Blind Forest es un videojuego de plataformas, donde el jugador asume el control de Ori, un espíritu guardián blanco, y Sein, quien es la luz y los ojos del Árbol del Espíritu. Ori tiene las habilidades de saltar, trepar y muchas otras. Sein tiene la habilidad de disparar Llamas de Espíritu para combatir enemigos o derribar obstáculos.\r\n\r\nOri deberá interactuar con su entorno saltando de plataforma en plataforma, resolviendo acertijos y enfrentándose con múltiples enemigos para cumplir con la tarea de restaurar el bosque.\r\n\r\nEl jugador ayudará a Ori a recolectar fragmentos de vida, fragmentos de energía, nuevas habilidades y mejoras. El mundo del juego se revela al jugador al estilo de Metroidvania - a medida que se adquieren nuevas habilidades, los jugadores pueden acceder a áreas que eran inaccesibles anteriormente.\r\n\r\nEl juego dispone de puntos de guardado (llamados \"pozos de espíritu\") distribuidos por todo su mundo, además de estos, el jugador puede también crear en cualquier momento \"vínculos de alma\", los cuales sirven como checkpoints. Sin embargo, los vínculos de alma solo pueden ser creados utilizando celdas de energía, siendo estas un recurso escaso que debe recolectarse en el juego, el jugador se ve forzado a crear vínculos de alma solo cuando es realmente necesario.\r\n\r\nEl jugador puede también ganar puntos de habilidad, utilizados para adquirir mejoras y beneficios, como por ejemplo daño incrementado para las Llamas de Espíritu. Estas mejoras pueden ser compradas solo en los puntos donde se haya creado un Vínculo de Alma y solo si el jugador tiene suficientes puntos de habilidad para cubrir el costo de la mejora. Eliminando a los enemigos y destruyendo plantas varias que se encuentran en el mundo de juego Ori obtiene puntos de experiencia, un punto de habilidad es ganado solo cuando se obtienen suficientes los puntos de experiencia requeridos para ello. Las habilidades deben ser compradas de forma secuencial, siempre habiendo comprado la habilidad que la precede en el Árbol de Habilidades, y volviéndose estas cada vez más caras a medida que progresamos en el desarrollo de este árbol.', NULL, '19.99', ''),
(8, 'Sifu', 1, 'http://127.0.0.1/public/images/sifu_6292381f8da94.jpeg', '5nXw5BDlz2E', 'Sifu es el nuevo juego del estudio independiente Sloclap, creadores de Absolver. En este juego de acción en tercera persona con intensos combates cuerpo a cuerpo controlarás a un joven aprendiz de kung-fu que busca venganza.', 'Sifu es la historia de un joven aprendiz de kung-fu que busca a los asesinos de su familia para cobrarse venganza. Por desgracia, carece de aliados y se enfrenta a un sinfín de enemigos sin más ayuda que su dominio del kung-fu y un misterioso colgante a los que tendrá que recurrir para preservar el legado de sus antepasados.\r\nPara dar caza a tus enemigos tendrás que recorrer los rincones ocultos de la ciudad, desde los suburbios repletos de bandas hasta los fríos pasillos de las torres empresariales. Tienes un día y un sinfín de enemigos cortándote el paso. Cada vez que cometas un error, el tiempo será el precio a pagar.', NULL, '49.99', ''),
(9, 'Lost Ark', 3, 'http://127.0.0.1/public/images/26127_Lost_Ark_62923840958d9.jpg', 'Udwbd5X0zbg', 'Lost Ark es un juego de rol de acción multijugador masivo en línea (MMOARPG) de fantasía en 2,5D.2​3​ Está codesarrollado por Tripod Studio y la filial de desarrollo de juegos Smilegate RPG. Fue lanzado completamente en la región de Corea del Sur el 4 de diciembre de 2019.4​ El juego también fue lanzado en Norteamérica, Sudamérica y Europa el 11 de febrero de 2022, donde es publicado por Amazon Games.5​ A las veinticuatro horas de su lanzamiento, se convirtió en el segundo juego más jugado en Steam. Lost Ark ganó seis premios de juegos en varias categorías en los Korea Game Awards 2019.8​ El desarrollo del juego costó unos 85,4 millones de dólares.', 'Lost Ark se centra principalmente en el PvE y la exploración (búsqueda, caza de logros/coleccionables, elaboración, etc.), pero también cuenta con elementos de PvP. Los jugadores empiezan por personalizar su personaje, que luego pueden subir de nivel completando la historia.​ Logrando nivel 50 unlocks acceso a tiered endgame mazmorras y redadas, en qué punto todo el progreso más lejano está ligado a puntuación de marcha del carácter.', NULL, '0.00', ''),
(13, '0 A.D', 2, 'http://127.0.0.1/public/images/GalerieHuman_0AD-LudoBoxArt02a180x272-02-1200_629238528145a.jpg', 'D3vxXZygHIk', '0 A.D. es un videojuego de estrategia en tiempo real, libre y de código abierto desarrollado por Wildfire Games. Es un juego sobre guerras históricas y economía antigua, la primera parte del juego \"Empires Ascendant\" abarca el periodo comprendido entre el año 500 a.C y el año 1 d.C y la segunda parte \"Empires Besieged\" se basará del 1 d.C al 500 d.C. El juego es multiplataforma, está disponible para Windows, MacOS, Linux y OpenBSD. Se compone completamente de software libre y contenido libre, utilizando la licencia GPL v2+ para el código fuente del motor de juego y la licencia CC BY-SA para el arte y música del juego.', 'En un principio iba a ser un “mod” para Age of Empires II: The Age of Kings, pero el equipo de desarrollo consideró que hacer un mod era demasiado limitante para su libertad creativa, y decidieron trasladar su arte e ideas a un motor interno, creando un juego completamente independiente. El juego ha estado en desarrollo desde el año 2000, y el trabajo actual comenzó en 2003.\r\n\r\nEn noviembre de 2008, los desarrolladores confirmaron que pronto lanzarían el proyecto como código abierto. El 10 de julio de 2009, Wildfire Games publicó el código fuente para 0 A.D. bajo GPL 2+, y puso a disposición el contenido artístico bajo CC BY-SA.1​\r\n\r\nEl 5 de septiembre de 2013, se inició una campaña de financiación colectiva de Indiegogo con un objetivo de 160.000 dólares. Recaudaron un total de 33.251 dólares para contratar a un programador. La mayoría de las finanzas son gestionadas por la organización Software en el interés público.\r\n\r\nNo se ha fijado una fecha oficial de lanzamiento para la versión final.', NULL, '0.00', ''),
(23, 'Alien Arena', 1, 'http://127.0.0.1/public/images/alienArena_6292385dac13a.jpg', '5jrSU0ZCd9g', 'Compite con cientos de usuarios de todo el mundo a través de Internet en el torneo a muerte que propone Alien Arena, un juego de acción en primera persona ambientado en el espacio.', 'Alien Arena mezcla lo mejor de Unreal Tournament y Quake III para lograr una experiencia multijugador única.\r\n\r\nLas características de la aplicación te dejarán con la boca abierta: 35 niveles, 5 modos de juego, 11 personajes, 8 armas distintas, etcétera. Además, si no tienes red, no te preocupes, ya que Alien Arena cuenta con un sistema de bots.\r\n\r\nEl armamento va desde un simple rayo láser a un lanza misiles, pasando por el arma más potente del juego, un volatilizador de alienígenas.\r\n\r\nSi eres un jugador empedernido, trata de alcanzar las cifras de los mejores jugadores para aparecer en las estadísticas del juego.', NULL, '0.00', 'http://127.0.0.1/public/images/AlienArena_6288cb36a4650_629239a93cdd8.zip');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `game_commentaries`
--

CREATE TABLE `game_commentaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_game` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `commentary` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `game_commentaries`
--

INSERT INTO `game_commentaries` (`id`, `id_game`, `id_user`, `commentary`, `created_at`, `updated_at`) VALUES
(16, 1, 7, 'Hola, esto es un comentario de Luna', '2022-05-18 15:13:26', '2022-05-18 15:13:26'),
(17, 1, 2, 'Esto es un comentario de Rosa, que solo puede borrar Rosa... o un admin...', '2022-05-18 15:14:23', '2022-05-18 15:14:23'),
(19, 7, 2, 'Esto es un comentario', '2022-05-27 16:19:31', '2022-05-27 16:19:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genres`
--

CREATE TABLE `genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Acción'),
(2, 'Estrategia'),
(3, 'Rol'),
(4, 'Simulación'),
(5, 'Deportes'),
(6, 'Aventura');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `library`
--

CREATE TABLE `library` (
  `id_game` bigint(20) UNSIGNED NOT NULL,
  `id_player` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `library`
--

INSERT INTO `library` (`id_game`, `id_player`) VALUES
(1, 1),
(1, 2),
(1, 12),
(2, 1),
(2, 2),
(2, 12),
(3, 1),
(3, 2),
(3, 11),
(4, 1),
(5, 1),
(5, 12),
(6, 1),
(6, 11),
(6, 12),
(7, 1),
(7, 11),
(8, 1),
(8, 11),
(8, 12),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(9, 7),
(9, 12),
(13, 2),
(13, 7),
(13, 12),
(23, 1),
(23, 2),
(23, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_07_122900_create_roles_table', 1),
(6, '2022_05_07_123600_create_role_user_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `text` longtext COLLATE utf8_spanish_ci NOT NULL,
  `image` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `link` varchar(500) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `news`
--

INSERT INTO `news` (`id`, `title`, `text`, `image`, `link`) VALUES
(1, 'Starfield, cada vez más cerca', 'Los creadores de Skyrim avanzan novedades sobre este esperado juego', 'https://i0.wp.com/lavidaesunvideojuego.com/wp-content/uploads/2020/11/StarField-lavidaesunvideojuego.jpg?fit=1332%2C850&ssl=1', '/project/4'),
(2, 'Silk Song aun no tiene fecha de salida', 'No sabemos cuando podremos probar la continuación de Hollow Knight, y Team Cherry ya se lo toma a risa', 'https://imageio.forbes.com/blogs-images/davidthier/files/2019/02/Capture-19-1200x664.jpg?format=jpg&width=1200', '/project/5'),
(3, 'Lost Ark Actualizado', 'El famoso mmo action rpg recibe la actualización más ambiciosa hasta la fecha', 'https://cdn.akamai.steamstatic.com/steam/apps/1599340/ss_f86c68e6fe904392d8a08231121f860814125f62.1920x1080.jpg?t=1651157265', '/game/9'),
(4, 'Sifu aumenta su dificultad', 'Tras la última actualización podremos elegir entre nuevos niveles de dificultad, con desafiantes nuevos retos', 'https://www.pcmgames.com/wp-content/uploads/2022/02/SIFU-Live.jpg', '/game/8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('alderan133@gmail.com', '$2y$10$0aqY8T1WmZuFhT6Z2caqaOD4uQqC3rhqeLuvJmjWZzvwm8ahRDlB6', '2022-05-26 15:26:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `type` bigint(20) UNSIGNED NOT NULL,
  `role` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `plans`
--

INSERT INTO `plans` (`id`, `name`, `price`, `description`, `type`, `role`) VALUES
(1, 'Gratuito', '0.00', 'El usuario solo tiene acceso a las demos y los juegos gratuitos', 1, 1),
(2, 'Cinco', '9.99', 'El creador puede realizar hasta 5 proyectos.', 2, 2),
(4, 'Novedades', '9.99', 'El usuario puede jugar a las novedades mensuales que se activen', 1, 4),
(5, 'Catálogo', '29.99', 'El usuario tiene acceso a todo el catálogo de juegos.', 1, 5),
(6, 'Diez', '29.99', 'El creador tendrá espacio de almacenamiento para diez proyectos.', 2, 6),
(7, 'Ilimitado', '59.99', 'El usuario puede albergar todos los proyectos que realice.', 2, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `portfolio`
--

CREATE TABLE `portfolio` (
  `id_project` bigint(20) UNSIGNED NOT NULL,
  `id_creator` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `portfolio`
--

INSERT INTO `portfolio` (`id_project`, `id_creator`) VALUES
(1, 2),
(3, 2),
(4, 2),
(5, 2),
(10, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `genre` bigint(20) UNSIGNED NOT NULL,
  `cover` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `text1` longtext COLLATE utf8_spanish_ci NOT NULL,
  `text2` longtext COLLATE utf8_spanish_ci DEFAULT NULL,
  `text3` longtext COLLATE utf8_spanish_ci DEFAULT NULL,
  `pledge1` decimal(10,2) NOT NULL,
  `pledge2` decimal(10,2) NOT NULL,
  `pledge3` decimal(10,2) NOT NULL,
  `image` varchar(500) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `projects`
--

INSERT INTO `projects` (`id`, `name`, `genre`, `cover`, `text1`, `text2`, `text3`, `pledge1`, `pledge2`, `pledge3`, `image`) VALUES
(1, 'Bullet Storm', 1, 'https://cdn-products.eneba.com/resized-products/ozqurvvpmi66u3xdgzuz_350x200_1x-0.jpg', 'Bulletstorm es un videojuego de acción en primera persona de 2011 creado por People Can Fly y Epic Games y publicado por Electronic Arts (EA). El juego se distingue por su sistema de recompensa a los jugadores con \"puntos de habilidad\" para realizar eliminaciones cada vez más creativas. Bulletstorm no tiene ningún modo multijugador competitivo, prefiere incluir modos de juego cooperativo en línea y ataque de puntuación. Ambientada en el siglo xxvi la historia del juego se centra en Grayson Hunt, un pirata espacial y ex-operaciones negras que es abatido en un planeta devastado por la guerra mientras intenta vengarse del general Sarrano, su antiguo comandante que engaña a él y sus hombres para cometer crímenes de guerra y asesinar inocentes.El desarrollo del juego comenzó en junio de 2007. Adrian Chmielarz y Cliff Bleszinski fueron el director y diseñador respectivamente, mientras que Rick Remender, el autor de Fear Agent, escribió la historia del juego. Originalmente se previó que fuera una versión basada en acción en tercera persona, aunque la base de combate y la perspectiva de juego pasaron por varias revisiones. La ficción Pulp, Burnout, Duke Nukem y Firefly inspiraron el equipo durante el desarrollo del juego. El equipo experimentó con los modos multijugador competitivos y el modo multijugador cooperativo de campaña durante la producción, pero se decidió eliminarlos debido a las limitaciones tecnológicas.', NULL, NULL, '1.00', '20.00', '50.50', 'https://i.blogs.es/26f704/bullet01/1366_2000.jpg'),
(2, 'Runes Of Magic', 3, 'https://static.tvtropes.org/pmwiki/pub/images/runes_of_magic_box.png', 'Runes of Magic es un videojuego de rol multijugador masivo en línea (MMORPG) gratuito desarrollado por el estudio taiwanés Runewaker Entertainment y adaptado a varios mercados europeos y americanos por la empresa alemana Frogster Interactive. Después de haber pasado por una fase de beta pública, el videojuego fue lanzado oficialmente el 19 de marzo de 2009. Posteriormente, el Capítulo II - The Elven Prophecy, una importante actualización del juego, fue lanzado el 15 de septiembre de 2009, tanto por descarga directa como en tiendas especializadas,3​ y varios meses después, el 18 de mayo de 2010, se publicó oficialmente un nuevo capítulo del juego, el Capítulo III - The Elder Kingdoms, de la misma forma que el anterior.4​ El 16 de agosto de 2010, Frogster anunció que se habían registrado cuatro millones de usuarios en todo el mundo.5​ El último capítulo de la saga, el Capítulo IV - Land of Despair, fue lanzado el 16 de junio de 2010.', 'El juego contiene la posibilidad de tener tres clases al mismo tiempo. Tres son las razas que se pueden escoger - Humanos, Elfos y Enanos- y diez diferentes clases, lo que da un total de 112 combinaciones diferentes. Las razas tienen restricciones de clase, lo que significa que un elfo nunca podrá ser un Caballero o un Sacerdote mientras que un humano jamás podrá elegir las clases de Alcaide o Druida. Durante el juego, los personajes pueden coger dos de las tres clases elegidas y llevarlas al mismo tiempo, eligiendo una como clase principal y otra secundaria. La combinación de las dos clases proporciona algunas habilidades únicas que ninguna otra combinación tiene.', NULL, '1.99', '10.99', '20.99', 'https://www.playonmac.com/images/apps/med/1448.jpg'),
(3, 'Republique', 6, 'https://images.launchbox-app.com/2aa62af4-5efc-46b0-8d91-3a3f5380f24a.jpg', 'République es un videojuego de terror perteneciente al género de supervivencia y sigilo, desarrollado por Camouflaj LLC y Logan Games. El juego fue anunciado originalmente para los dispositivos iOS, pero desde entonces se ha ampliado para OS X, Windows y PlayStation 4. Una campaña de Kickstarter micromecenazgo se completó con éxito el 11 de mayo de 2012, recaudando más de $550.000 dólares. El primer episodio, Exordio, fue lanzado para iOS el 19 de diciembre de 2013, y para Mac OS X y Windows el 2014. El segundo episodio, Metamorfosis, fue lanzado para iOS el 30 de abril de 2014.1​ El episodio 3 \"Unos y Ceros\" fue lanzado el 20 de octubre de 2014. La versión del episodio 3 para Microsoft Windows y OS X, fue liberada junto con los dos episodios anteriores el 26 de febrero de 2015. La versión de Linux y SteamOs ha sido cancelada.', NULL, NULL, '1.99', '10.99', '20.99', 'https://cdn.akamai.steamstatic.com/steam/apps/317100/ss_98633c5df4116662d2cfcc1b7ac7ac9cc2fcaa77.1920x1080.jpg?t=1592319703'),
(4, 'Starfield', 3, 'https://i.3djuegos.com/juegos/15956/starfield/fotos/ficha/starfield-5462900.jpg', 'Starfield es un próximo videojuego de rol de ciencia ficción desarrollado por Bethesda Game Studios. Durante la conferencia de Microsoft + Bethesda del E3 2021, se reveló que Starfield se lanzará para Xbox Series y PC el 11 de noviembre de 2022.1​  Desarrollo Según el director Todd Howard, la premisa y concepto de Starfield estaba rondando el estudio antes de septiembre de 2013.2​ Después del lanzamiento de Fallout 4 en 2015, la desarrolladora se encontraba empezando preproducción del videojuego, y no fue hasta mediados de 2018 cuando el juego estaba en un estado considerado \"jugable\".3​  El videojuego se anunció en la conferencia de E3 2018 por el director de Bethesda, Todd Howard.4​5​ El 11 de junio de 2018 la desarrolladora publicó un teaser que informó que era la primera licencia nueva de la compañía en 25 años.6​ La empresa también anunció que el videojuego usará el motor gráfico Creation Engine, empleado por otros de sus juegos como The Elder Scrolls V: Skyrim.7​  En la conferencia de Microsoft + Bethesda de junio de 2021, Starfield fue oficialmente fijado para su lanzamiento el 11 de noviembre de 2021. El teaser tráiler presentado en la conferencia confirmó la utilización de una nueva versión del motor Creation Engine, titulada Creation Engine 2.  En una entrevista con The Washington Post, Starfield ha sido descrito como \"el simulador de Han Solo\" por el director gerente de Bethesda Ashley Cheng.8​ Howard comentó en la fecha de lanzamiento, añadiendo: \"Tenemos confianza en esta fecha. Si no, no la habríamos anunciado.\"9', NULL, NULL, '1.99', '10.99', '20.99', 'https://sm.ign.com/ign_es/gallery/s/starfield-/starfield-concept-art_xcvx.jpg'),
(5, 'Silk Song', 1, 'https://www.ultimagame.es/hollow-knight-silksong/imagen-i16828-pge.jpg', 'Hollow Knight: Silksong es un Metroidvania de acción y aventura en dos dimensiones y tiene lugar en un reino mordaz habitado por bichos.  Su jugabilidad es extensamente parecida a la de su predecesor. El jugador controla a Hornet, una criatura insectoide quién empuña una aguja para combatir enemigos. Durante su aventura, Hornet se encuentra con muchas criaturas hostiles.  Se espera que el juego contenga más de 165 enemigos diferentes.1​ Hornet también encontrará muchos aliados en calidad de Personaje no jugador.  Silksong contará con misiones, en donde distintos personajes le pedirán ayuda a la protagonista. Estas se pueden clasificar en cuatro categorías: de caza, de acumular, de explorar y de la gran caza. Hornet será capaz de forjar armas y herramientas a partir de materiales, los cuales pueden ser un sustituto del sistema de amuletos en Hollow Knight.  El sistema de punto de control del primer juego regresará en Silksong.  En vez de utilizar alma para curarse como lo hace el Caballero de Hollow Knight, Hornet utiliza seda. Puede curarse casi instantáneamente tres máscaras de daño, estando en movimiento, en vez de necesitar estar estático para curar una sola máscara a la vez, como en el caso del Caballero de la primera entrega, lo cual lo ponía en peligro de recibir más daño del que podía curar. Sin embargo, la desventaja que tiene Hornet es que esta acción le agota su barra entera de seda. Cuando muere, en vez de dejar una Sombra como lo hace el Caballero , Hornet deja un haz de seda.', 'Hornet se encuentra cautiva en el reino desconocido y mordaz de Pharloom, del cual se dice que está \"gobernado por Silk and Song\".2​ Hornet debe subir hasta la superficie, una ciudadela brillante, para descubrir por qué fue llevada a ese misterioso lugar. Esto contrasta con la progresión de Hollow Knight, en donde se debe descender a las profundidades de Hallownest con la intención de detener la infección que asola el reino. A lo largo de la aventura, se enfrenta a diversos adversarios los cuales incluyen caballeros, guerreros y asesinos.', NULL, '1.99', '10.99', '20.99', 'https://as01.epimg.net/meristation/imagenes/2019/12/14/noticias/1576341361_005563_1576341527_noticia_normal.jpg'),
(6, 'Loop Hero', 2, 'https://cdn1.epicgames.com/ff50f85ed609454e80ac46d9496da34d/offer/EGS_TheLichhasthrowntheworldintoatimelessloop_FourQuarters_S2-1200x1600-9ce7ff725ffafa800300b644df5936cd.jpg', 'El juego empieza tras acabar el mundo, con un diálogo introductor explicando que un malvado liche destruyó la realidad y todas las cosas en ella. El héroe despierta en un pequeño campamento en un camino y trata de reconstruir su mundo. Por el camino, se encuentra a otros supervivientes que, o bien tratan de ayudarle a reconstruir el mundo, o por el contrario, desesperados, consideran que el mundo está perdido y lo atacan en un esfuerzo por alargar su propia supervivencia.', 'Cada expedición comienza con el héroe siguiendo un camino pre-generado en un paisaje vacío. Babosas aparecen periódicamente a lo largo del camino que, cuando se encuentran, el héroe lucha con ellas y las mata. A medida que el héroe mata a los enemigos, el jugador recibe cartas de paisaje. Las cartas de paisaje permiten al jugador colocar varias características del terreno alrededor del camino del héroe, como montañas, prados, bosques y edificios. Cada característica del terreno resulta en un efecto diferente, como restaurar la salud del jugador al final de cada día, aumentar la velocidad del movimiento del jugador, o generar enemigos periódicamente. Colocar las características del terreno una al lado de la otra también puede modificar su efecto. Por ejemplo, si se juntan suficientes montañas, se combinan y proporcionan salud adicional, mientras que también engendran un nuevo tipo de enemigo que luchará contra el héroe.', NULL, '1.99', '10.99', '20.99', 'http://127.0.0.1/public/images/PORTADA_62697d5bd53e1.jpg'),
(7, 'Cris Tales', 3, 'http://127.0.0.1/public/images/871061921599550251_62698468697a1.jpg', 'Crisbell es una chica huérfana que vive en el orfanato de Narim. Mientras recogía una rosa para la madre superiora, Matias, una rana parlante, se la arrebata. Matias dirige a Crisbell a la catedral de Narim, con tal de desatar sus poderes. Tras los hechos, Matias le pide a Crisbell que lo acompañe donde su amigo Willhelm, un mago del tiempo, quien le explica más sobre sus poderes.  Posteriormente, Crisbell es encomendada en una serie de misiones ayudando a sus vecinos, hasta que se encuentra con la granja del pueblo en llamas e invadida por los duendes de la Emperatriz de las Eras, cuyo objetivo es destruir el reino de Crystallis. Para evitar un futuro desastroso, Crisbell regresa donde Willhelm a pedir ayuda, y este le habla sobre la \"Espada\". Matias se rehúsa por miedo a que los poderes de la espada sean demasiados para Crisbell; esta sin embargo, está determinada a coger la espada, pasando a ser una guerrera.  Con la espada en mano, Crisbell regresa a la granja a batallar contra los duendes. Durante la batalla, se le une Cristopher, un guerrero que estuvo luchando contra los duendes. Tras un par de batallas, se les enfrentan las hermanas Volcano, esbirras de la Emperatriz de las Eras, en el que Crisbell debe usar los poderes del cristal para debilitar su escudo en el futuro. Después de algunos turnos, las hermanas se retiran.  Crisbell es entonces acusada de provocar los ataques y debe exiliarse con tal de entrenar y luchar contra los verdaderos enemigos.', 'El juego consiste en un RPG por turnos, junto con la habilidad de saltar en el tiempo tanto en el mapa como en batalla, afectando a la jugabilidad. Cada personaje jugable presenta sus propios ataques y habilidades.\r\n\r\nLa mecánica más atractiva del título consiste en la manipulación del tiempo por parte de Crisbell, con la ayuda del cristal del tiempo. La pantalla está dividida en tres secciones, mostrando el presente en el centro, el pasado a la izquierda y el futuro a la derecha. Durante la historia, Crisbell debe completar una serie de misiones con la ayuda de Matias, donde la mecánica de saltos en el tiempo es primordial.\r\n\r\nEn batalla, Crisbell puede invocar el cristal para enviar a los enemigos al pasado o al futuro, alterando sus características a favor del jugador. Las batallas se llevan a cabo mediante comandos de selección de ataques, habilidades, o ítemes, además de hacer que la pulsación precisa de botones durante los ataques, permita hacer más daño a los enemigos o recibir menos daño.\r\n\r\nAdemás del avance de la historia principal, la demo incluye un modo Coliseo, en el que el jugador se enfrenta a una horda de enemigos, con tal de probar sus habilidades.', NULL, '1.99', '10.99', '20.99', 'http://127.0.0.1/public/images/00_xxl_6269846863c2d.jpg'),
(10, 'Call of Cthulhu', 6, 'http://127.0.0.1/public/images/call-of-cthulhu_628536d263e75.jpg', 'Call of Cthulhu: The Official Video Game es un videojuego de género horror de supervivencia y rol desarrollado por Cyanide y publicado por Focus Home Interactive para Microsoft Windows, PlayStation 4 y Xbox One. Su fecha de lanzamiento fue el 30 de octubre de 2018. El videojuego presenta entornos semi-abiertos e incorpora temáticas del terror de Lovecraft y terror psicológico en una historia qué además incluye elementos de investigación y sigilo. Está basado en el relato corto La llamada de Cthulhu del escritor H. P. Lovecraft, mientras que también es principalmente una adaptación del juego de rol del mismo nombre creado en 1981.', 'El videojuego sigue al investigador Edward Pierce, detective privado que atraviesa una crisis existencial. Debido a que el Boston de 1924 no le proporciona casi ningún caso, este veterano de guerra rehúye consumiendo alcohol y pastillas de narcóticos. Sin embargo, surge un rayo de esperanza cuando un misterioso caso cae un día sobre su escritorio. Se le pide al detective que resuelva la muerte de la familia Hawkins, quienes murieron misteriosamente en un incendio. Como la única pista es una imagen extraña pintada por la madre supuestamente enloquecida poco antes de su muerte, Edward tiene que dirigirse a la isla de Darkwater cerca de Boston, Massachusetts para averiguar más sobre el asunto y es entonces cuando descubre el inminente renacimiento del Primigenio Cthulhu.', NULL, '1.00', '10.00', '20.00', 'http://127.0.0.1/public/images/call_of_cthulhu-3594404_628536d266356.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_commentaries`
--

CREATE TABLE `project_commentaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_project` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `commentary` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `project_commentaries`
--

INSERT INTO `project_commentaries` (`id`, `id_project`, `id_user`, `commentary`, `created_at`, `updated_at`) VALUES
(5, 1, 1, 'Esto es un comentario de un administrador en Bulletstorm', '2022-05-18 15:20:23', '2022-05-18 15:20:23'),
(6, 1, 2, 'Esto es un comentario del usuario Rosa', '2022-05-22 08:08:12', '2022-05-22 08:08:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'user', 'Usuario básico', NULL, NULL),
(2, 'creator', 'Creador de contenido', NULL, NULL),
(3, 'administrator', 'Administrador de las bases de datos', NULL, NULL),
(4, 'user-mid', 'Usuario con acceso a novedades', NULL, NULL),
(5, 'user-all', 'Usuario con acceso completo', NULL, NULL),
(6, 'creator-mid', 'Creador medio', NULL, NULL),
(7, 'creator-all', 'Creador con acceso completo', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, NULL, NULL),
(33, 5, 6, '2022-05-16 16:32:25', '2022-05-16 16:32:25'),
(75, 7, 7, '2022-05-22 14:55:59', '2022-05-22 14:55:59'),
(80, 2, 11, '2022-05-27 15:25:50', '2022-05-27 15:25:50'),
(90, 1, 2, '2022-05-27 16:57:44', '2022-05-27 16:57:44'),
(95, 4, 3, '2022-05-28 06:42:39', '2022-05-28 06:42:39'),
(98, 4, 12, '2022-05-28 09:58:37', '2022-05-28 09:58:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `avatar`) VALUES
(1, 'Andrés', 'alderan133@gmail.com', NULL, '$2y$10$jRakIiIM.oqIYPtrz4UMA.pRkjHbmLTf6YjB8KARPC.vb8BJP50FG', NULL, '2022-05-08 07:39:19', '2022-05-26 15:28:36', 'perfil-avatar-hombre-icono-redondo_628fb0578fd56.jpg'),
(2, 'Rosa', 'inventada@inventada.com', NULL, '$2y$10$VWvHle4i/g9g64tXyGlXMu2vKGdwjDkR9g2kQcB7To1jHZ2h4aZq.', 'OI1gi8gIoaQlcCcCHn5WxcAlYj075IieZ8eUqhU5wKTtDNylyFWu9o3JWtef', '2022-05-08 14:19:55', '2022-05-24 15:55:23', NULL),
(3, 'Alicia', 'invento@invento.com', NULL, '$2y$10$x/UzMnK0jYY9inI8jK8OUev7atdpAe1e5vVjyKI3h82hZ7qAUnrda', NULL, '2022-05-08 14:20:12', '2022-05-08 14:20:12', NULL),
(4, 'Pedro', 'pedro@noexiste.com', NULL, '$2y$10$FkTdme5xzWKVp7GSRD6F0OUmqzRFfE8ZirLj0uE1i/ejEC9ts55QW', NULL, '2022-05-14 06:27:34', '2022-05-14 06:27:34', NULL),
(5, 'Maria', 'maria@maria.com', NULL, '$2y$10$CzE4x/Oh1dM5YhFpyPzx8OfUGmx/Hn0R3nVk5RY.NpCgFTaZf2Og6', NULL, '2022-05-15 14:31:46', '2022-05-15 14:31:46', NULL),
(6, 'Jacinta', 'jacinta@jacinta.com', NULL, '$2y$10$vApH9/LiTNe7DZJS4HRNRO5XwVzAbs3sne8mq5kwfXnObpv35h5Oe', NULL, '2022-05-15 14:33:15', '2022-05-15 14:33:15', NULL),
(7, 'Luna', 'luna@luna.com', NULL, '$2y$10$EqtlqCu1chu8iSkChynenOp6GRVMdODNN2S28btmzQ..HpQHkt.Wq', NULL, '2022-05-16 16:33:11', '2022-05-26 15:01:41', 'perfil-avatar-mujer-icono-redondo_6283e1b97e3ee.jpg'),
(11, 'Pablo', 'pablo@pablo.com', NULL, '$2y$10$bGNJGVoZQXJK1g5GKn/nSOCJbWUPCIHNL1w1z/jFGgCR1ZG/j6mgi', NULL, '2022-05-27 13:41:41', '2022-05-27 13:41:41', NULL),
(12, 'Keroro', 'keroro@keroro.com', NULL, '$2y$10$aMU2DUsFVWdc1XrAvv.EXOg/I.NZTZe66MiL9vlwCckpeRGjqhzea', 'DIQS0EXbaGfe8xavN29KGlW0uoBt60QnJrCoAeuiez7i0d3oyHaJEo6zddue', '2022-05-27 16:40:35', '2022-05-28 07:38:11', 'Darth-Vader_6291ed8383fbc.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genre` (`genre`);

--
-- Indices de la tabla `game_commentaries`
--
ALTER TABLE `game_commentaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_game` (`id_game`),
  ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`id_game`,`id_player`),
  ADD KEY `id_player` (`id_player`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`);

--
-- Indices de la tabla `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id_project`,`id_creator`),
  ADD KEY `id_creator` (`id_creator`);

--
-- Indices de la tabla `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genre` (`genre`);

--
-- Indices de la tabla `project_commentaries`
--
ALTER TABLE `project_commentaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_project` (`id_project`),
  ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `game_commentaries`
--
ALTER TABLE `game_commentaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `project_commentaries`
--
ALTER TABLE `project_commentaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `games_ibfk_1` FOREIGN KEY (`genre`) REFERENCES `genres` (`id`);

--
-- Filtros para la tabla `game_commentaries`
--
ALTER TABLE `game_commentaries`
  ADD CONSTRAINT `game_commentaries_ibfk_1` FOREIGN KEY (`id_game`) REFERENCES `games` (`id`),
  ADD CONSTRAINT `game_commentaries_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `library`
--
ALTER TABLE `library`
  ADD CONSTRAINT `library_ibfk_2` FOREIGN KEY (`id_player`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `library_ibfk_3` FOREIGN KEY (`id_game`) REFERENCES `games` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `plans`
--
ALTER TABLE `plans`
  ADD CONSTRAINT `plans_ibfk_1` FOREIGN KEY (`role`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `portfolio`
--
ALTER TABLE `portfolio`
  ADD CONSTRAINT `portfolio_ibfk_1` FOREIGN KEY (`id_creator`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `portfolio_ibfk_2` FOREIGN KEY (`id_project`) REFERENCES `projects` (`id`);

--
-- Filtros para la tabla `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`genre`) REFERENCES `genres` (`id`);

--
-- Filtros para la tabla `project_commentaries`
--
ALTER TABLE `project_commentaries`
  ADD CONSTRAINT `project_commentaries_ibfk_1` FOREIGN KEY (`id_project`) REFERENCES `projects` (`id`),
  ADD CONSTRAINT `project_commentaries_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
