-- SEEDS

-- USERS
INSERT INTO users (user_name, password, user_avatar)
VALUES ("admin", "password", "http://d1u4oo4rb13yy8.cloudfront.net/article-ezejayecwn-1451491546.jpeg");


-- BURGERS	
INSERT INTO burgers (burger_name, ingredient_1, ingredient_2, ingredient_3, ingredient_4, ingredient_5, burger_picture, user_id)
VALUES ("Big Burger", 1, 3, 4, 5, 2, "https://via.placeholder.com/50", 1);

INSERT INTO burgers (burger_name, ingredient_1, ingredient_2, ingredient_3, ingredient_4, ingredient_5, burger_picture, user_id)
VALUES ("Bacon Burger", 1, 3, 3, 3, 2, "https://via.placeholder.com/50", 1);

INSERT INTO burgers (burger_name, ingredient_1, ingredient_2, ingredient_3, ingredient_4, ingredient_5, burger_picture, user_id)
VALUES ("Vegi Burger", 1, 6, 7, 9, 2, "https://via.placeholder.com/50", 1);


-- INGREDIENTS	
INSERT INTO ingredients (ingredient_name, ingredient_Picture, ingredient_calories)
VALUES ("top_bun", "../bun-top.png", 130);

INSERT INTO ingredients (ingredient_name, ingredient_Picture, ingredient_calories)
VALUES ("bottom_bun", "../bun-bottom.png", 130);

INSERT INTO ingredients (ingredient_name, ingredient_Picture, ingredient_calories)
VALUES ("bacon", "../bacon.png", 90);

INSERT INTO ingredients (ingredient_name, ingredient_Picture, ingredient_calories)
VALUES ("cheese", "../cheese.png", 60);

INSERT INTO ingredients (ingredient_name, ingredient_Picture, ingredient_calories)
VALUES ("chips", "../chips.png", 80);

INSERT INTO ingredients (ingredient_name, ingredient_Picture, ingredient_calories)
VALUES ("lettuce", "../lettuce.png", 4);

INSERT INTO ingredients (ingredient_name, ingredient_Picture, ingredient_calories)
VALUES ("onion", "../onion.png", 8);

INSERT INTO ingredients (ingredient_name, ingredient_Picture, ingredient_calories)
VALUES ("patty", "../patty.png", 200);

INSERT INTO ingredients (ingredient_name, ingredient_Picture, ingredient_calories)
VALUES ("pickles", "../pickles.png", 20);

INSERT INTO ingredients (ingredient_name, ingredient_Picture, ingredient_calories)
VALUES ("tomato", "../tomato.png", 4);

