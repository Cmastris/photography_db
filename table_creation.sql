CREATE TABLE IF NOT EXISTS photographers (
  id integer PRIMARY KEY,
  first_name varchar(50),
  last_name varchar(50),
  bio varchar(255)
);

CREATE TABLE IF NOT EXISTS photos (
  id integer PRIMARY KEY,
  title varchar(255),
  description varchar(255),
  date_taken date,
  photographer_id integer REFERENCES photographers(id)
);

CREATE TABLE IF NOT EXISTS categories (
  id integer PRIMARY KEY,
  name varchar(50) NOT NULL,
  description varchar(255)
);

CREATE TABLE IF NOT EXISTS photo_category (
  photo_id integer REFERENCES photos(id),
  category_id integer REFERENCES categories(id),
  PRIMARY KEY (photo_id, category_id)
);
