CREATE TABLE `config_history` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `config_id` BIGINT NOT NULL,
  `old_value` LONGTEXT NOT NULL,
  `new_value` LONGTEXT NOT NULL,
  `create_time` VARCHAR(14) NOT NULL DEFAULT '99991231235959',
  PRIMARY KEY (`id`)
)COLLATE='utf8mb4_general_ci' ENGINE=InnoDB;

ALTER TABLE `config`
	ADD COLUMN `status` TINYINT(4) NOT NULL DEFAULT '1' COMMENT '状态：1是正常 0是删除' AFTER `type`;