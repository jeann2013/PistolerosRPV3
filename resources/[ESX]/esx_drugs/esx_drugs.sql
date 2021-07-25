USE `es_extended`;

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('cannabis', 'Cannabis', 3, 0, 1),
	('marijuana', 'Marijuana', 2, 0, 1),
	('resina', 'Resina de amapola', 2, 0, 1),
	('opio_dirty', 'Opio sucio', 2, 0, 1),
	('morfina', 'Morfina', 2, 0, 1),
	('peyote', 'Resina de peyote', 3, 0, 1),
	('adormidera', 'Resina de adormidera', 3, 0, 1),
	
;

INSERT INTO `licenses` (`type`, `label`) VALUES
	('weed_processing', 'Weed Processing License'),
	('coca_processing', 'Coca Processing License'),
	('metha_processing', 'Metha Processing License'),
	('opio_processing', 'Metha Processing License')
;
