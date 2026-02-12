-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2026 a las 16:21:18
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` double NOT NULL,
  `marca` varchar(50) NOT NULL,
  `descripción` varchar(600) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `marca`, `descripción`, `cantidad`) VALUES
(1, 'Eucerin \r\nPomada Reparadora Aquaphor Piel Extra Seca 55Ml', 290, 'Eucerin', 'Crema reparadora para cualquier momento del día\r\nAyuda a acelerar la reparación de la piel\r\nSuaviza la piel seca y agrietada\r\nSin fragancia\r\nSin conservadores\r\nPara bebés, niños y adultos\r\n', 1),
(2, 'Luuna Colchón en Caja Matrimonial Blue – Memory Foam Adaptable de 3 Capas con espumas certificadas, tecnología AirCell, firmeza Media, Confort Duradero y Descanso Profundo', 5999, 'Luuna', 'SOPORTE ERGONÓMICO CON MEMORY FOAM – Su diseño de 3 capas con espuma viscoelástica se adapta al cuerpo para ofrecer alivio de presión, soporte firme y máximo confort.\r\nTECNOLOGÍA AIRCELL PARA MAYOR FRESCURA – La capa superior con celdas abiertas mejora la ventilación y regula la temperatura para un descanso más fresco y profundo.\r\nESPUMAS CERTIFICADAS DE ALTA CALIDAD – Fabricado con materiales seguros y duraderos, libres de sustancias tóxicas, que garantizan bienestar y larga vida útil.\r\nCOLCHÓN EN CAJA FÁCIL DE RECIBIR E INSTALAR – Llega comprimido y enrollado para una entrega práctica; solo ', 1),
(3, 'CeraVe Gel Limpiador Espumoso Facial para Piel Mixta a Grasa con Ceramidas Esenciales, Niacinamida y Ácido Hialurónico, 473 ml, 1 Unidad', 302, 'CeraVe', 'Limpieza profunda diaria: elimina eficazmente el exceso de grasa, las impurezas del ambiente y el maquillaje, siendo apto para uso diario mañana y noche.\r\nRestauración de la barrera: su fórmula con tres ceramidas esenciales ayuda a reparar y mantener la barrera protectora natural de la piel facial.\r\nHidratación y calma: incluye ácido hialurónico para retener la humedad natural y niacinamida para calmar la piel sin generar sensaciones de tirantez.\r\nTextura espumosa refrescante: el gel se transforma en una espuma suave que refresca el rostro mientras limpia profundamente los poros obstruidos.\r\nF', 1),
(4, 'The Ordinary Hyaluronic Acid 2% + B5, Suero Hidrante con Ácido Hialurónico y Ceramidas — Suero de hidratación multiprofunda para piel más suave y con volumen, 30ml', 230, 'The Ordinary', 'The Ordinary Hyaluronic Acid 2% + B5 es nuestro suero más amado que hidrata y llena la piel al instante, mientras suaviza la textura y las arrugas.', 1),
(5, 'Chocolate Ferrero galleta cubierta con trocitos de avellanas y relleno cremoso 16 pzas - 200 g', 139, 'Ferrero Rocher', 'Increíble detalle , ideal para compartir\r\nRico sabor\r\nRellenos de su original y deliciosa crema de avellanas', 16),
(6, 'Maybelline Tinta para labios Super Stay Teddy Tint Tono Mascara Tear, 4.2ml ', 173, 'Maybelline', 'Tinta multiusos de larga duración, efecto mate difuminado hasta por 12H, textura suave a los labios, sin transferencias', 1),
(7, 'Barcel Surtido De Botanas - 25 Pack', 300, 'Barcel', 'Surtido de botanas variadas, takis, chips, runners, pop.', 25),
(8, 'Acqua Di Gio by Giorgio Armani for Men - 3.3 oz Parfum Spray (Refillable)\r\n', 3185, 'Armani Beauty', 'Iconic aquatic fragrance\r\nSophisticated & fresh\r\nLong-lasting\r\nRefillable bottle\r\nPerfect for everyday use', 1),
(9, 'Corrector de camuflaje hidratante, Ligero, Cobertura completa, Larga duración, Oculta, Corrige, Cubre, Hidrata, Destaca, Melocotón claro, Acabado satinado, 25 tonos, Uso durante todo el día, 0.2', 217, 'Elf', 'Cobertura duradera: esta fórmula ligera y de cobertura completa no se descascarilla y deja un acabado satinado. Camuflaje imperfecciones, ojeras debajo de los ojos, enrojecimiento y más con este corrector hidratante y duradero', 1),
(10, 'Garnier Fructis Hair Food Cacao Kit Restauracion Rizos: Shampoo, Acondicionador, Crema Peinar, Mascarilla', 234, 'Garnier', 'Rutina completa Hairfood Manteca de Cacao para cabello Rizado 300 ml', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
