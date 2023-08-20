USE Assessment;

SELECT users.name AS nama_user, COUNT(*) AS total
FROM map_user_hobby
INNER JOIN users ON map_user_hobby.id_user = users.id
WHERE users.status = 'active'
GROUP BY nama_user