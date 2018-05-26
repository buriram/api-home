-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.11 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping data for table smart_booking.tb_admin: ~0 rows (approximately)
/*!40000 ALTER TABLE `tb_admin` DISABLE KEYS */;
REPLACE INTO `tb_admin` (`a_id`, `a_user`, `a_pass`, `a_name`) VALUES
	(1, 'admin', 'admin', 'administrator');
/*!40000 ALTER TABLE `tb_admin` ENABLE KEYS */;

-- Dumping data for table smart_booking.tb_booking: ~0 rows (approximately)
/*!40000 ALTER TABLE `tb_booking` DISABLE KEYS */;
REPLACE INTO `tb_booking` (`b_id`, `b_date`, `b_timein`, `keyroom`, `user`) VALUES
	(1, '2018-05-25', '23:39:22', NULL, 'cccc'),
	(2, '2018-05-26', NULL, NULL, 'กับตันฐา'),
	(3, '2018-05-26', NULL, NULL, 'กับตันฐา'),
	(4, '2018-05-26', NULL, NULL, 'กับตันฐา'),
	(5, '2018-05-26', NULL, NULL, 'กับตันฐา'),
	(6, '2018-05-28', '8.00-9.00', NULL, 'กับตันฐา'),
	(7, '2018-05-28', '9.00-10.00', NULL, 'กับตันฐา'),
	(8, '2018-05-28', '10.00-11.00', NULL, 'กับตันฐา'),
	(9, '2018-05-28', '11.00-12.00', NULL, 'กับตันฐา'),
	(10, '2018-05-30', '8.00-9.00', NULL, 'กับตันฐา'),
	(11, '2018-05-30', '9.00-10.00', NULL, 'กับตันฐา'),
	(12, '2018-05-30', '10.00-11.00', NULL, 'กับตันฐา'),
	(13, '2018-05-30', '11.00-12.00', NULL, 'กับตันฐา'),
	(14, '2018-05-30', '13.00-14.00', NULL, 'กับตันฐา'),
	(15, '2018-05-30', '14.00-15.00', NULL, 'กับตันฐา'),
	(16, '2018-05-30', '15.00-16.00', NULL, 'กับตันฐา'),
	(17, '2018-05-30', '16.00-17.00', NULL, 'กับตันฐา'),
	(18, '2018-05-15', '8.00-9.00', NULL, 'กับตันฐา'),
	(19, '2018-05-15', '9.00-10.00', NULL, 'กับตันฐา'),
	(20, '2018-05-15', '10.00-11.00', NULL, 'กับตันฐา'),
	(21, '2018-05-29', '15.00-16.00', NULL, 'กับตันฐา'),
	(22, '2018-05-29', '16.00-17.00', NULL, 'กับตันฐา'),
	(23, '2018-05-26', '15.00-16.00', NULL, 'กับตันฐา'),
	(24, '2018-05-26', '14.00-15.00', NULL, 'กับตันฐา'),
	(25, '2018-05-14', '15.00-16.00', '323694', 'กับตันฐา'),
	(26, '2018-05-14', '14.00-15.00', '323694', 'กับตันฐา'),
	(27, '2018-05-03', '13.00-14.00', '253490', 'kutuntha'),
	(28, '2018-05-03', '11.00-12.00', '253490', 'kutuntha'),
	(29, '2018-05-03', '10.00-11.00', '253490', 'kutuntha'),
	(30, '2018-05-03', '9.00-10.00', '253490', 'kutuntha'),
	(31, '2018-05-03', '8.00-9.00', '253490', 'kutuntha'),
	(32, '2018-05-31', '11.00-12.00', '947358', 'kutuntha'),
	(33, '2018-05-31', '9.00-10.00', '947358', 'kutuntha'),
	(34, '2018-05-31', '10.00-11.00', '947358', 'kutuntha');
/*!40000 ALTER TABLE `tb_booking` ENABLE KEYS */;

-- Dumping data for table smart_booking.tb_teacher: ~0 rows (approximately)
/*!40000 ALTER TABLE `tb_teacher` DISABLE KEYS */;
REPLACE INTO `tb_teacher` (`t_id`, `t_email`, `t_pass`, `t_firstname`, `t_lastname`) VALUES
	(1, 'aaaa@a.com', 'aaaa', 'kutuntha', 'บุรีรัมย์'),
	(2, 'bbbb', 'bbbb', 'bbbb', 'bbbb'),
	(3, 'cccc', 'cccc', 'cccc', 'cccc'),
	(4, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `tb_teacher` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
