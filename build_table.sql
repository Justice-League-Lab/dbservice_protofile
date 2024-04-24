-- Role data : base info
DROP TABLE IF EXISTS `role_data`;
CREATE TABLE `role_data` (
    `role_id`           bigint(20)      NOT NULL AUTO_INCREMENT,
    `player_name`       varchar(64)     NOT NULL DEFAULT '',
    `account`           varchar(128)    NOT NULL DEFAULT '',
    `equip_base_bin`    mediumblob      NOT NULL DEFAULT '',         
    `equip_ext_bin`     mediumblob      NOT NULL DEFAULT '',
    `item_bin`          mediumblob      NOT NULL DEFAULT '',
    `pet_bin`           mediumblob      NOT NULL DEFAULT '',
    `created_time`      datetime        NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_time`      datetime        NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    PRIMARY KEY(`role_id`)
) ENGINE = InnoDB AUTO_INCREMENT 10000 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- Global data : activity1
DROP TABLE IF EXISTS `activity_1`;
CREATE TABLE `activity_1` (
    `activity_data_id`  bigint(20)      NOT NULL AUTO_INCREMENT,
    `role_id`           bigint(20)      NOT NULL,
    `activity_bin`      mediumblob      NOT NULL DEFAULT '',
    `created_time`      datetime        NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_time`      datetime        NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    PRIMARY KEY(`activity_data_id`)
) ENGINE = InnoDB AUTO_INCREMENT 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;