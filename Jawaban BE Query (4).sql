USE assessment;

SELECT users.name, AVG(hobbies.level) AS level_AVG
FROM map_user_hobby
INNER JOIN users ON map_user_hobby.id_user = users.id
INNER JOIN hobbies ON map_user_hobby.id_hobby = hobbies.id
GROUP BY name
HAVING COUNT(users.name)>1;