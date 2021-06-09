CREATE TABLE person (
  person_id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  age INTEGER,
  location VARCHAR(100)
  );
  
  CREATE TABLE auth (
  auth_id SERIAL PRIMARY KEY,
  person_id INTEGER NOT NULL REFERENCES person(person_id),
	email VARCHAR(225),
  password text
  );
  
  CREATE TABLE occassion (
  occassion_id SERIAL PRIMARY KEY,
  person_id INTEGER NOT NULL REFERENCES person(person_id),
  name VARCHAR(50)
  );
  
  CREATE TABLE recipe (
  recipe_id SERIAL PRIMARY KEY,
  person_id INTEGER NOT NULL REFERENCES person(person_id),
  occassion_id INTEGER NOT NULL REFERENCES occassion(occassion_id),
  instructions VARCHAR(500),
  img_URL VARCHAR(500)
  );

  CREATE TABLE ingredient (
  ingredient_id SERIAL PRIMARY KEY,
  recipe_id INTEGER NOT NULL REFERENCES recipe(recipe_id),
  name TEXT,
  img_URL VARCHAR(500)
  );
  
  CREATE TABLE comment (
  comment_id SERIAL PRIMARY KEY,
  person_id INTEGER NOT NULL REFERENCES person(person_id),
  occassion_id INTEGER NOT NULL REFERENCES occassion(occassion_id),
  recipe_id INTEGER NOT NULL REFERENCES recipe(recipe_id),
  comment VARCHAR(255),
  today_date TIMESTAMP
  );