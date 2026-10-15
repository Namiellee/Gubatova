INSERT INTO devices (device_id, name, location) VALUES 
(1, 'Термостат-01', 'Офис 101'),
(2, 'Датчик-02', 'Склад А'),
(3, 'Сервер-03', 'Серверная');
INSERT INTO events (event_id, device_id, event_time, event_type, value) VALUES 
(1, 1, '2025-05-01 08:00', 'включение', NULL),
(2, 1, '2025-05-01 08:05', 'показание', 21.5),
(3, 1, '2025-05-01 09:00', 'ошибка', NULL),       -- Ошибка 1
(4, 1, '2025-05-01 10:00', 'выключение', NULL),
(5, 1, '2025-05-01 11:00', 'включение', NULL),
(6, 1, '2025-05-01 11:05', 'ошибка', NULL);       -- Ошибка 2
INSERT INTO events (event_id, device_id, event_time, event_type, value) VALUES 
(7, 2, '2025-05-01 08:00', 'включение', NULL),
(8, 2, '2025-05-01 08:10', 'показание', 18.0),
(9, 2, '2025-05-01 09:10', 'показание', 18.2),
(10, 2, '2025-05-01 10:10', 'показание', 18.5);

INSERT INTO events (event_id, device_id, event_time, event_type, value) VALUES 
(11, 3, '2025-05-01 07:00', 'включение', NULL),
(12, 3, '2025-05-01 07:05', 'ошибка', NULL);
