CREATE TABLE `parcial1`.`facultad` ( 
    `cod_facultad` INT UNSIGNED NOT NULL AUTO_INCREMENT , 
    `nombre` VARCHAR(250) NOT NULL , 
    PRIMARY KEY (`cod_facultad`), 
    UNIQUE `uk_facultad` (`nombre`)
    ) ENGINE = InnoDB;

CREATE TABLE `parcial1`.`investigador` ( 
    `cod_investigador` INT UNSIGNED NOT NULL AUTO_INCREMENT , 
    `nombre` VARCHAR(250) NOT NULL , 
    `apellido` VARCHAR(250) NOT NULL , 
    `cod_facultad` INT UNSIGNED NOT NULL , 
    PRIMARY KEY (`cod_investigador`), INDEX `fk_facultad` (`cod_facultad`)
    ) ENGINE = InnoDB;

CREATE TABLE `parcial1`.`reserva` ( 
    `cod_reserva` INT UNSIGNED NOT NULL AUTO_INCREMENT , 
    `cod_investigador` INT UNSIGNED NOT NULL , 
    `inicio` DATE NOT NULL , 
    `fin` DATE NOT NULL , 
    PRIMARY KEY (`cod_reserva`), 
    INDEX `fk_investigador` (`cod_investigador`)
    ) ENGINE = InnoDB;

CREATE TABLE `parcial1`.`detalle_reserva` ( 
    `cod_reserva` INT UNSIGNED NOT NULL , 
    `num_serie` INT UNSIGNED NOT NULL , 
    UNIQUE `uk_detalle_reserva` (`cod_reserva`, `num_serie`)
    ) ENGINE = InnoDB;

CREATE TABLE `parcial1`.`equipo` ( 
    `cod_equipo` INT UNSIGNED NOT NULL AUTO_INCREMENT , 
    `num_serie` INT UNSIGNED NOT NULL , 
    `descripcion` VARCHAR(250) NOT NULL , 
    `cod_facultad` INT UNSIGNED NOT NULL , 
    PRIMARY KEY (`cod_equipo`), 
    INDEX `fk_facultad` (`cod_facultad`), 
    UNIQUE `uk_equipo` (`descripcion`)
    ) ENGINE = InnoDB;
