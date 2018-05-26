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

-- Dumping data for table home.memo: ~0 rows (approximately)
/*!40000 ALTER TABLE `memo` DISABLE KEYS */;
REPLACE INTO `memo` (`m_id`, `m_detail`, `m_date`, `s_code`) VALUES
	(1, 'ช่วยพ่อแม่ทำงานบ้านดีมาก', '2018-05-27', '6132041001'),
	(2, 'ช่วยพ่อแม่ทำงานบ้านดี', '2018-05-27', '6132041002'),
	(3, 'ทางบ้านฐานะยากจน', '2018-05-27', '6132041003'),
	(4, 'รับผิดชอบดูแลน้อง', '2018-05-27', '6132041004'),
	(5, 'ไม่ค่อยช่วยงานบ้าน', '2018-05-27', '6132041005');
/*!40000 ALTER TABLE `memo` ENABLE KEYS */;

-- Dumping data for table home.student: ~0 rows (approximately)
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
REPLACE INTO `student` (`s_id`, `s_code`, `s_name`, `s_class`, `s_tel`) VALUES
	(1, '6132041001', 'ddd', '1', '123456789'),
	(2, '6132041002', 'ddd', '1', '123456789'),
	(3, '6132041003', 'ddd', '1', '123456789'),
	(4, '6132041004', 'ddd', '2', '123456789'),
	(5, '6132041005', 'ddd', '2', '123456789');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;

-- Dumping data for table home.teacher: ~0 rows (approximately)
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
REPLACE INTO `teacher` (`t_id`, `t_username`, `t_password`, `t_name`) VALUES
	(1, 'mana', '1234', 'mana jaidee'),
	(2, 'manee', '1234', 'manee deee');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
