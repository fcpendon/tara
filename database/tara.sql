-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 192.168.10.10    Database: tara
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,1,'Kyoto','Kyoto served as Japan\'s capital and the emperor\'s residence from 794 until 1868. It is one of the country\'s ten largest cities with a population of 1.5 million people and a modern face.\n\nOver the centuries, Kyoto was destroyed by many wars and fires, but due to its exceptional historic value, the city was dropped from the list of target cities for the atomic bomb and escaped destruction during World War II. Countless temples, shrines and other historically priceless structures survive in the city today.'),(2,1,'Nagoya','With over two million inhabitants, Nagoya is Japan\'s fourth most populated city. It is the capital of Aichi Prefecture and the principal city of the Nobi plain, one of Honshu\'s three large plains and metropolitan and industrial centers.\n\nNagoya developed as the castle town of the Owari, one of the three branches of the ruling Tokugawa family during the Edo Period. Much of the city, including most of its historic buildings, were destroyed in the air raids of 1945. The Toyota Motor Corporation maintains its headquarters just outside of Nagoya.'),(3,1,'Osaka','Osaka is Japan\'s second largest metropolitan area after Tokyo. It has been the economic powerhouse of the Kansai Region for many centuries. Osaka was formerly known as Naniwa. Before the Nara Period, when the capital used to be moved with the reign of each new emperor, Naniwa was once Japan\'s capital city, the first one ever known.\n\nIn the 16th century, Toyotomi Hideyoshi chose Osaka as the location for his castle, and the city may have become Japan\'s political capital if Tokugawa Ieyasu had not terminated the Toyotomi lineage after Hideyoshi\'s death and moved his government to distant Edo (Tokyo).'),(4,1,'Sapporo','Sapporo is the capital of Hokkaido and Japan\'s fifth largest city. Sapporo is also one of the nation\'s youngest major cities. In 1857, the city\'s population stood at just seven people.\n\nIn the beginning of the Meiji Period, when the development of Hokkaido was started on a large scale, Sapporo was chosen as the island\'s administrative center and enlarged according to the advice of foreign specialists. Consequently, Sapporo was built based on a North American style rectangular street system.\n\nSapporo became world famous in 1972 when the Olympic Winter Games were held there. Today, the city is well known for its ramen, beer, and the annual snow festival held in February.'),(5,1,'Tokyo','Tokyo is Japan\'s capital and the world\'s most populous metropolis. It is also one of Japan\'s 47 prefectures, consisting of 23 central city wards and multiple cities, towns and villages west of the city center. The Izu and Ogasawara Islands are also part of Tokyo.\n\nPrior to 1868, Tokyo was known as Edo. A small castle town in the 16th century, Edo became Japan\'s political center in 1603 when Tokugawa Ieyasu established his feudal government there. A few decades later, Edo had grown into one of the world\'s most populous cities. With the Meiji Restoration of 1868, the emperor and capital moved from Kyoto to Edo, which was renamed Tokyo (\"Eastern Capital\"). Large parts of Tokyo were destroyed in the Great Kanto Earthquake of 1923 and in the air raids of 1945.'),(6,1,'Yokohama','Yokohama is Japan\'s second largest city with a population of over three million. Yokohama is located less than half an hour south of Tokyo by train, and is the capital of Kanagawa Prefecture.\n\nTowards the end of the Edo Period (1603-1867), during which Japan maintained a policy of self-isolation, Yokohama\'s port was one of the first to be opened to foreign trade in 1859. Consequently, Yokohama quickly grew from a small fishing village into one of Japan\'s major cities.\n\nUntil today, Yokohama remains popular among expats, has one of the world\'s largest Chinatowns and preserves some former Western residences in the Yamate district.');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Japan','Japan is an island country located in East Asia. It is bordered by the Sea of Japan to the west and the Pacific Ocean to the east, and spans more than 3,000 kilometers along the coast of the continent from the Sea of Okhotsk in the north to the East China Sea and Philippine Sea in the south.');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-15  5:14:48
