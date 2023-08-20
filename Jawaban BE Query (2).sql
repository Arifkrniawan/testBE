USE assessment;
SELECT users.gender, COUNT(*) AS total_users
FROM map_user_hobby
INNER JOIN hobbies ON map_user_hobby.id_hobby = hobbies.id  
INNER JOIN users ON map_user_hobby.id_user = users.id  
WHERE hobbies.name = 'Skipping'
GROUP BY users.gender;