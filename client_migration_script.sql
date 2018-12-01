SQL_UP = """
CREATE TABLE `sample_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `author` varchar(40) NOT NULL,
  `submission_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
);
"""

SQL_DOWN = """
DROP TABLE sample_table;
"""
