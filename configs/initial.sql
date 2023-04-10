DROP TABLE IF EXISTS `post`;
CREATE TABLE `post`
(
    `id`        bigint unsigned NOT NULL AUTO_INCREMENT,
    `username`  varchar(16) NOT NULL,
    `postID`    varchar(32) NOT NULL,
    `title`     varchar(64) NOT NULL,
    `content`   longtext     NOT NULL,
    `createdAt` timestamp    NOT NULL DEFAULT current_timestamp(),
    `updatedAt` timestamp    NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp (),
    PRIMARY KEY (`id`),
    UNIQUE KEY `postID` (`postID`),
    KEY         `idx_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`
(
    `id`        bigint unsigned NOT NULL AUTO_INCREMENT,
    `username`  varchar(16) NOT NULL,
    `password`  varchar(32) NOT NULL,
    `nickname`  varchar(16)  NOT NULL,
    `email`     varchar(32) NOT NULL,
    `phone`     varchar(16)  NOT NULL,
    `createdAt` timestamp    NOT NULL DEFAULT current_timestamp(),
    `updatedAt` timestamp    NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp (),
    PRIMARY KEY (`id`),
    UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;