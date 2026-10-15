sqlite3 shop_devices.db < schema.sql
sqlite3 shop_devices.db ".tables"
git add schema.sql
git commit -m "Добавлена схема базы данных событий"
git push
