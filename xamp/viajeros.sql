-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-11-2022 a las 20:08:55
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `viajeros`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destiny`
--

CREATE TABLE `destiny` (
  `ID` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `detail` text NOT NULL,
  `destiny_category_id` int(10) NOT NULL,
  `img` text NOT NULL,
  `status_id` int(10) NOT NULL,
  `extras` int(10) NOT NULL,
  `transport_id` int(10) NOT NULL,
  `group_id` int(10) NOT NULL,
  `meals_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `destiny`
--

INSERT INTO `destiny` (`ID`, `name`, `date`, `price`, `detail`, `destiny_category_id`, `img`, `status_id`, `extras`, `transport_id`, `group_id`, `meals_id`) VALUES
(1, 'Brasil', '2020-05-20', '3000', 'Brasilia cap', 2, 'img-1667505912053.jpg', 2, 3, 3, 2, 3),
(2, 'Sweden', '0000-00-00', '3169', 'varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi', 2, '1663087181395_img_.jpg', 1, 1, 2, 1, 3),
(3, 'Brazil', '0000-00-00', '1968', 'magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet', 2, 'https://robohash.org/quidemexplicabosuscipit.png?size=50x50&set=set1', 1, 3, 1, 2, 1),
(4, 'France', '0000-00-00', '5001', 'et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae', 2, 'https://robohash.org/solutaeaprovident.png?size=50x50&set=set1', 1, 1, 1, 2, 1),
(5, 'Uganda', '0000-00-00', '4948', 'erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis', 2, 'https://robohash.org/perspiciatismaioresexcepturi.png?size=50x50&set=set1', 1, 3, 3, 1, 2),
(6, 'China', '0000-00-00', '2332', 'id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in', 2, 'https://robohash.org/sequifacilisdoloribus.png?size=50x50&set=set1', 1, 1, 1, 2, 2),
(7, 'Haiti', '0000-00-00', '2307', 'montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim', 2, 'https://robohash.org/errorconsequaturmolestiae.png?size=50x50&set=set1', 1, 4, 3, 2, 2),
(8, 'Cordoba', '2024-08-08', '4500', 'Cordoba!', 1, 'img-1667508650263.jpg', 1, 1, 2, 2, 4),
(9, 'Russia', '0000-00-00', '4779', 'in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem', 2, 'https://robohash.org/utadminus.png?size=50x50&set=set1', 1, 1, 3, 1, 1),
(10, 'Philippines', '0000-00-00', '131', 'condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue', 2, 'https://robohash.org/quiaaccusamuscorporis.png?size=50x50&set=set1', 2, 2, 1, 1, 4),
(11, 'Indonesia', '0000-00-00', '9702', 'mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis', 1, 'img-1667586174541.jpg', 2, 1, 3, 2, 4),
(12, 'Thailand', '0000-00-00', '4137', 'lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit', 1, 'https://robohash.org/easitaccusamus.png?size=50x50&set=set1', 1, 4, 1, 1, 2),
(13, 'Poland', '0000-00-00', '3425', 'pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit', 1, 'https://robohash.org/erroroccaecatiunde.png?size=50x50&set=set1', 1, 4, 2, 2, 2),
(14, 'Philippines', '0000-00-00', '5078', 'mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in', 2, 'https://robohash.org/errorestrepudiandae.png?size=50x50&set=set1', 2, 3, 3, 1, 3),
(15, 'China', '0000-00-00', '4809', 'rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio', 2, 'https://robohash.org/itaqueprovidentcumque.png?size=50x50&set=set1', 2, 3, 1, 2, 3),
(16, 'Indonesia', '0000-00-00', '7242', 'magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis', 1, 'https://robohash.org/doloremaliasquo.png?size=50x50&set=set1', 2, 4, 3, 2, 3),
(17, 'Indonesia', '0000-00-00', '6372', 'nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in', 1, 'https://robohash.org/estodioveniam.png?size=50x50&set=set1', 2, 3, 3, 1, 2),
(18, 'Mexico', '0000-00-00', '9326', 'cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae', 1, 'https://robohash.org/quiquiaiste.png?size=50x50&set=set1', 2, 2, 2, 2, 3),
(19, 'Indonesia', '0000-00-00', '6903', 'fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget', 2, 'https://robohash.org/quimolestiaeea.png?size=50x50&set=set1', 1, 1, 1, 1, 1),
(20, 'China', '0000-00-00', '610', 'velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus', 1, 'https://robohash.org/consequaturaliquideum.png?size=50x50&set=set1', 2, 2, 3, 1, 4),
(21, 'Mongolia', '0000-00-00', '1564', 'laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus', 1, 'https://robohash.org/enimnamut.png?size=50x50&set=set1', 2, 2, 2, 1, 2),
(22, 'China', '0000-00-00', '6198', 'platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed', 1, 'https://robohash.org/earumofficiisprovident.png?size=50x50&set=set1', 1, 2, 1, 2, 2),
(23, 'Argentina', '0000-00-00', '7201', 'nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus', 2, 'https://robohash.org/etlaborequisquam.png?size=50x50&set=set1', 2, 4, 3, 1, 4),
(24, 'Greece', '0000-00-00', '7642', 'pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate', 2, 'https://robohash.org/delectusvelitnemo.png?size=50x50&set=set1', 2, 2, 2, 2, 3),
(25, 'Portugal', '0000-00-00', '2975', 'est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus', 2, 'https://robohash.org/etofficiisminima.png?size=50x50&set=set1', 2, 4, 2, 1, 1),
(26, 'Greece', '0000-00-00', '6875', 'non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros', 2, 'https://robohash.org/omnisetneque.png?size=50x50&set=set1', 1, 2, 3, 2, 2),
(27, 'Burkina Faso', '0000-00-00', '990', 'a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien', 2, 'https://robohash.org/exvoluptatemab.png?size=50x50&set=set1', 1, 2, 1, 1, 4),
(28, 'Spain', '0000-00-00', '339', 'eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor', 2, 'https://robohash.org/repellatutmolestiae.png?size=50x50&set=set1', 1, 3, 2, 1, 3),
(29, 'Ireland', '0000-00-00', '9538', 'quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi', 2, 'https://robohash.org/nesciuntsapienteipsam.png?size=50x50&set=set1', 2, 4, 2, 2, 2),
(30, 'China', '0000-00-00', '9954', 'amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer', 1, 'https://robohash.org/ipsamdolorvoluptates.png?size=50x50&set=set1', 1, 2, 1, 1, 4),
(31, 'Macedonia', '0000-00-00', '7673', 'lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam', 1, 'https://robohash.org/rerumetnon.png?size=50x50&set=set1', 2, 4, 3, 2, 1),
(32, 'Indonesia', '0000-00-00', '577', 'praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor', 1, 'https://robohash.org/etquisaspernatur.png?size=50x50&set=set1', 1, 2, 1, 1, 4),
(33, 'Canada', '0000-00-00', '5819', 'pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui', 1, 'https://robohash.org/sequivelitnecessitatibus.png?size=50x50&set=set1', 1, 1, 1, 1, 1),
(34, 'Norway', '0000-00-00', '1321', 'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem', 2, 'https://robohash.org/quidebitisvelit.png?size=50x50&set=set1', 2, 2, 3, 2, 1),
(35, 'South Korea', '0000-00-00', '5777', 'nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero', 1, 'https://robohash.org/doloremqueidlabore.png?size=50x50&set=set1', 1, 4, 1, 2, 2),
(36, 'Portugal', '0000-00-00', '5878', 'aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea', 1, 'https://robohash.org/consequunturquiab.png?size=50x50&set=set1', 1, 4, 1, 1, 3),
(37, 'Uganda', '0000-00-00', '8796', 'congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel', 2, 'https://robohash.org/nemopossimusaliquam.png?size=50x50&set=set1', 2, 4, 2, 2, 3),
(38, 'Peru', '0000-00-00', '2332', 'quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum', 2, 'https://robohash.org/quilaboriosamoptio.png?size=50x50&set=set1', 2, 4, 3, 2, 3),
(39, 'Japan', '0000-00-00', '5767', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien', 2, 'https://robohash.org/adisteet.png?size=50x50&set=set1', 2, 2, 3, 2, 4),
(40, 'China', '0000-00-00', '5627', 'posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris', 1, 'https://robohash.org/quomolestiaefuga.png?size=50x50&set=set1', 2, 4, 2, 2, 2),
(41, 'France', '0000-00-00', '3520', 'amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at', 2, 'https://robohash.org/laborumautnemo.png?size=50x50&set=set1', 2, 2, 3, 2, 3),
(42, 'China', '0000-00-00', '3146', 'nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien', 1, 'https://robohash.org/adipiscivoluptateset.png?size=50x50&set=set1', 1, 1, 3, 1, 1),
(43, 'Philippines', '0000-00-00', '9572', 'tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac', 2, 'https://robohash.org/doloremetaut.png?size=50x50&set=set1', 2, 2, 1, 1, 2),
(44, 'Russia', '0000-00-00', '1502', 'vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit', 1, 'https://robohash.org/rerumilloplaceat.png?size=50x50&set=set1', 1, 3, 1, 2, 4),
(45, 'Serbia', '0000-00-00', '7275', 'et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec', 2, 'https://robohash.org/praesentiumadolor.png?size=50x50&set=set1', 2, 2, 2, 1, 1),
(46, 'Albania', '0000-00-00', '571', 'luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed', 2, 'https://robohash.org/delenitivoluptatequo.png?size=50x50&set=set1', 2, 1, 1, 2, 1),
(47, 'Argentina', '0000-00-00', '934', 'lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in', 2, 'https://robohash.org/errordoloreveniet.png?size=50x50&set=set1', 2, 1, 1, 2, 4),
(48, 'Thailand', '0000-00-00', '840', 'est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed', 2, 'https://robohash.org/facilisconsequaturqui.png?size=50x50&set=set1', 1, 1, 3, 1, 3),
(49, 'Philippines', '0000-00-00', '7953', 'lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas', 1, 'https://robohash.org/hicsitdoloribus.png?size=50x50&set=set1', 2, 4, 1, 1, 2),
(50, 'China', '0000-00-00', '4134', 'tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat', 2, 'https://robohash.org/distinctioeteveniet.png?size=50x50&set=set1', 2, 3, 3, 1, 4),
(51, 'United States', '0000-00-00', '8521', 'et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien', 1, 'https://robohash.org/quassintrepellendus.png?size=50x50&set=set1', 2, 4, 3, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destiny_category`
--

CREATE TABLE `destiny_category` (
  `ID` int(10) NOT NULL,
  `categoria` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `destiny_category`
--

INSERT INTO `destiny_category` (`ID`, `categoria`) VALUES
(1, 'Nacional'),
(2, 'Internacional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destiny_user`
--

CREATE TABLE `destiny_user` (
  `ID` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `destiny_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups`
--

CREATE TABLE `groups` (
  `ID` int(10) NOT NULL,
  `group` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `groups`
--

INSERT INTO `groups` (`ID`, `group`) VALUES
(1, 'Single'),
(2, 'Grouping');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meals_id`
--

CREATE TABLE `meals_id` (
  `ID` int(10) NOT NULL,
  `meals` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `meals_id`
--

INSERT INTO `meals_id` (`ID`, `meals`) VALUES
(1, 'all inclusive'),
(2, 'half board included'),
(3, 'full board'),
(4, 'not include meals');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_id`
--

CREATE TABLE `status_id` (
  `ID` int(10) NOT NULL,
  `status` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `status_id`
--

INSERT INTO `status_id` (`ID`, `status`) VALUES
(1, 'outstanding'),
(2, 'offer');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transport_id`
--

CREATE TABLE `transport_id` (
  `ID` int(10) NOT NULL,
  `transport` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `transport_id`
--

INSERT INTO `transport_id` (`ID`, `transport`) VALUES
(1, 'plane'),
(2, 'bus'),
(3, 'boat');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `ID` int(10) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `user` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_category_id` int(10) NOT NULL,
  `img` text NOT NULL,
  `phone_number` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`ID`, `first_name`, `last_name`, `email`, `user`, `password`, `user_category_id`, `img`, `phone_number`) VALUES
(1, 'Jaquenette', 'Viollet', 'jviollet0@time.com', 'jviollet0', 'GVkPJ3eR', 2, '', 519),
(2, 'Myles', 'Bloor', 'mbloor1@themeforest.net', 'mbloor1', 'zaa4X6aOzk', 2, '', 476),
(3, 'Vite', 'Jorry', 'vjorry2@amazon.co.jp', 'vjorry2', 'ONzZyadNb1X', 1, '', 917),
(4, 'Mirabel', 'Lindwasser', 'mlindwasser3@mail.ru', 'mlindwasser3', 'ZxdmTxDmE', 1, '', 527),
(5, 'Helenelizabeth', 'Kennaway', 'hkennaway4@dailymotion.com', 'hkennaway4', 'OuLXCUM12aGw', 1, '', 913),
(6, 'Jennie', 'Brownbill', 'jbrownbill5@1und1.de', 'jbrownbill5', '2c34V94vX', 2, '', 168),
(7, 'Deni', 'Broxton', 'dbroxton6@ifeng.com', 'dbroxton6', 'WmnzIoYJ', 1, '', 486),
(8, 'Ode', 'Gowan', 'ogowan7@altervista.org', 'ogowan7', 'qdVWZnWUtu7t', 1, '', 374),
(9, 'Rouvin', 'Coster', 'rcoster8@harvard.edu', 'rcoster8', 'pxHhqlUw', 2, '', 976),
(10, 'Orv', 'Axby', 'oaxby9@sakura.ne.jp', 'oaxby9', 'KS4SfqoQZxN', 1, '', 110),
(11, 'Darya', 'Lyddy', 'dlyddya@imageshack.us', 'dlyddya', 'PXx6aPLsLn', 2, '', 119),
(12, 'Lin', 'Kos', 'lkosb@facebook.com', 'lkosb', '74j9PMJI4cN2', 1, '', 792),
(13, 'Geraldine', 'Tabbitt', 'gtabbittc@symantec.com', 'gtabbittc', 'e9RYGyLXXmE', 1, '', 191),
(14, 'Karl', 'Ridd', 'kriddd@usda.gov', 'kriddd', 'ktoydnXs7K', 1, '', 374),
(15, 'Isidor', 'Chalk', 'ichalke@netscape.com', 'ichalke', 'PkSj5AuoYkS', 2, '', 118),
(16, 'Doris', 'Beacon', 'dbeaconf@fema.gov', 'dbeaconf', '9h9ds3jjq', 1, '', 518),
(17, 'Anallise', 'McParland', 'amcparlandg@i2i.jp', 'amcparlandg', 'CziuQ35', 1, '', 678),
(18, 'Ardyce', 'Samuel', 'asamuelh@msu.edu', 'asamuelh', '4HsauEBCA', 1, '', 946),
(19, 'Inesita', 'Bettison', 'ibettisoni@ezinearticles.com', 'ibettisoni', 'YSc1dzmdQUs', 2, '', 859),
(20, 'Tani', 'Curnnok', 'tcurnnokj@macromedia.com', 'tcurnnokj', 'C3nGxaz0', 2, '', 626);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_category`
--

CREATE TABLE `user_category` (
  `ID` int(10) NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user_category`
--

INSERT INTO `user_category` (`ID`, `category`) VALUES
(1, 'user'),
(2, 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `destiny`
--
ALTER TABLE `destiny`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `destiny_category`
--
ALTER TABLE `destiny_category`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `destiny_user`
--
ALTER TABLE `destiny_user`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `destiny_user_user_id_foreignkey` (`user_id`),
  ADD KEY `destiny_user_destiny_id_foreignkey` (`destiny_id`);

--
-- Indices de la tabla `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `meals_id`
--
ALTER TABLE `meals_id`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `status_id`
--
ALTER TABLE `status_id`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `transport_id`
--
ALTER TABLE `transport_id`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `user_category`
--
ALTER TABLE `user_category`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `destiny`
--
ALTER TABLE `destiny`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `destiny_category`
--
ALTER TABLE `destiny_category`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `destiny_user`
--
ALTER TABLE `destiny_user`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `groups`
--
ALTER TABLE `groups`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `meals_id`
--
ALTER TABLE `meals_id`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `status_id`
--
ALTER TABLE `status_id`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `transport_id`
--
ALTER TABLE `transport_id`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `user_category`
--
ALTER TABLE `user_category`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
