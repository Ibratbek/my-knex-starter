CREATE TABLE users(
  id SERIAL PRIMARY KEY NOT NULL,
  login VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE porfolios(
  id SERIAL PRIMARY KEY NOT NULL,
  link VARCHAR(2048) NOT NULL,
  image VARCHAR(255) NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE blog(
  id SERIAL PRIMARY KEY NOT NULL,
  titles VARCHAR(512) NOT NULL,
  summary VARCHAR(255) NOT NULL,
  body json NOT NULL,
  tags VARCHAR(255) NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE briefs(
  id SERIAL PRIMARY KEY NOT NULL,
  filename VARCHAR(255) NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE contact(
  id SERIAL PRIMARY KEY NOT NULL,
  titles VARCHAR(255) NOT NULL,
  link VARCHAR(2048) NOT NULL
);