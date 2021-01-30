INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('computing', 'Informatico', 0);

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('computing', 1, 'IF', 'Reparador', 600, '{"tshirt_1":15,"torso_1":123,"arms":85,"pants_1":9,"glasses_1":0,"decals_2":0,"hair_color_2":0,"helmet_2":0,"hair_color_1":0,"face":2,"glasses_2":0,"torso_2":2,"shoes":25,"hair_1":0,"skin":0,"sex":0,"glasses_1":0,"pants_2":7,"hair_2":0,"decals_1":0,"tshirt_2":0,"helmet_1":65}', '{"tshirt_1":15,"torso_1":123,"arms":85,"pants_1":9,"glasses_1":0,"decals_2":0,"hair_color_2":0,"helmet_2":0,"hair_color_1":0,"face":2,"glasses_2":0,"torso_2":2,"shoes":25,"hair_1":0,"skin":0,"sex":0,"glasses_1":0,"pants_2":7,"hair_2":0,"decals_1":0,"tshirt_2":0,"helmet_1":65}')

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`,`weight`) VALUES
    ('herramientas', 'Herramientas', 1, 0, 0,1),
	('computer', 'Equipo estropeado', 1, 0, 0,1),
	('equipo', 'Equipo reparado', 1, 0, 0,1),
    ('factura', 'Factura', 1, 0, 0,1);