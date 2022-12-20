-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'animals'
-- 
-- ---

DROP TABLE IF EXISTS `animals`;
		
CREATE TABLE `animals` (
  `AnimalsId` INTEGER AUTO_INCREMENT NOT NULL,
  `Type` VARCHAR(50) NULL DEFAULT NULL,
  `Name` VARCHAR(50) NULL DEFAULT NULL,
  `Breed` VARCHAR(50) NULL DEFAULT NULL,
  'EntryDate' DATE NULL DEFAULT NULL,
  'AdoptDate' DATE NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'entry_dates'
-- 
-- ---

DROP TABLE IF EXISTS `entry_dates`;
		
-- CREATE TABLE `entry_dates` (
--   `id` INTEGER AUTO_INCREMENT NOT NULL,
--   `EnterDate` DATE NULL DEFAULT NULL,
--   `AnimalsId` INTEGER NULL DEFAULT NULL,
--   PRIMARY KEY (`id`)
-- );

-- ---
-- Table 'adopt_dates'
-- 
-- ---

DROP TABLE IF EXISTS `adopt_dates`;
		
-- CREATE TABLE `adopt_dates` (
--   `id` INTEGER AUTO_INCREMENT NOT NULL,
--   `AdoptDate` DATE NULL DEFAULT NULL,
--   `AnimalsId` INTEGER NULL DEFAULT NULL,
--   PRIMARY KEY (`id`)
-- );

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `entry_dates` ADD FOREIGN KEY (AnimalsId) REFERENCES `animals` (`id`);
ALTER TABLE `adopt_dates` ADD FOREIGN KEY (AnimalsId) REFERENCES `animals` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `animals` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `entry_dates` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `adopt_dates` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `animals` (`id`,`type`,`name`,`breed`) VALUES
-- ('','','','');
-- INSERT INTO `entry_dates` (`id`,`EnterDate`,`AnimalsId`) VALUES
-- ('','','');
-- INSERT INTO `adopt_dates` (`id`,`AdoptDate`,`AnimalsId`) VALUES
-- ('','','');