SQL_UP = """
CREATE TABLE `demo_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `author` varchar(40) NOT NULL,
  `submission_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
);
"""

SQL_DOWN = """
DROP TABLE demo_table;
"""
