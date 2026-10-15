SELECT d.name, e.event_time, e.event_type, e.value
FROM events e
JOIN devices d ON e.device_id=d.device_id
WHERE d.name='Термостат-01'
ORDER BY e.event_time;

SELECT event_type, COUNT(*) as count
FROM events
GROUP BY event_type;

SELECT d.name, COUNT(e.event_id) as error_count
FROM events e
JOIN devices d ON e.device_id=d.device_id
WHERE e.event_type='ошибка'
GROUP BY d.name
HAVING COUNT(e.event_id) > 1;

SELECT d.name, MAX(e.event_time) as last_event_time
FROM events e
JOIN devices d ON e.device_id=d.device_id
GROUP BY d.name;

SELECT d.name
FROM devices d
LEFT JOIN events e ON d.device_id=e.device_id AND e.event_type='ошибка'
WHERE e.event_id IS NULL;
