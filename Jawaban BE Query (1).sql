CREATE SCHEMA Assessment ;

USE Assessment;
CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(30),
    gender CHAR(1),
    status VARCHAR(15)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO users VALUE (1, 'Frash', 'F', 'active');
INSERT INTO users VALUE (2, 'Garmuth', 'M', 'active');
INSERT INTO users VALUE (3, 'Goliath', 'M', 'active');
INSERT INTO users VALUE (4, 'Luna', 'F', 'active');
INSERT INTO users VALUE (5, 'Zeus', 'M', 'active');
INSERT INTO users VALUE (6, 'Aphrodite', 'F', 'active');
INSERT INTO users VALUE (7, 'Ares', 'M', 'active');
INSERT INTO users VALUE (8, 'Frash', 'F', 'active');
INSERT INTO users VALUE (9, 'Lanaya', 'F', 'active');
INSERT INTO users VALUE (10, 'Hades', 'M', 'active');


CREATE TABLE hobbies (
    id INT PRIMARY KEY,
    name VARCHAR(30),
    level INT
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO hobbies VALUE (1, 'Running',8);
INSERT INTO hobbies VALUE (2, 'Skipping',5);
INSERT INTO hobbies VALUE (3, 'Push Up',10);

CREATE TABLE map_user_hobby (
    id INT PRIMARY KEY,
    id_user INT,
    id_hobby INT,
    status VARCHAR(30),
    FOREIGN KEY (id_user) REFERENCES users(id),
    FOREIGN KEY (id_hobby) REFERENCES hobbies(id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO map_user_hobby VALUE (1,1,1,'active');
INSERT INTO map_user_hobby VALUE (2,3,1,'active');
INSERT INTO map_user_hobby VALUE (3,8,3,'deleted');
INSERT INTO map_user_hobby VALUE (4,2,2,'active');
INSERT INTO map_user_hobby VALUE (5,4,1,'deleted');
INSERT INTO map_user_hobby VALUE (6,6,2,'active');
INSERT INTO map_user_hobby VALUE (7,5,3,'active');
INSERT INTO map_user_hobby VALUE (8,8,1,'active');
INSERT INTO map_user_hobby VALUE (9,7,2,'active');
INSERT INTO map_user_hobby VALUE (10,4,2,'active');
INSERT INTO map_user_hobby VALUE (11,9,3,'deleted');
INSERT INTO map_user_hobby VALUE (12,10,2,'deleted');
INSERT INTO map_user_hobby VALUE (13,3,2,'active');
INSERT INTO map_user_hobby VALUE (14,2,3,'active');
INSERT INTO map_user_hobby VALUE (15,10,2,'active');

CREATE INDEX user_status_index ON users (status);
CREATE INDEX hobby_user_index ON map_user_hobby (id_user);
CREATE INDEX map_user_hobby_status_index ON map_user_hobby (status);
