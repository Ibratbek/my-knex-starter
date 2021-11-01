"use strict";

module.exports = {
  development: {
    client: "postgresql",
    connection: {
      database: process.env.DB_NAME | "postgres",
      user: process.env.DB_USER | "postgres",
      password: process.env.DB_PASSWORD | "pgpwd4565",
    },
    migrations: {
      tableName: "migrations",
      directory: `${__dirname}/db/migrations`,
    },
    seeds: {
      directory: `${__dirname}/db/seeds`,
    },
  },
  staging: {
    client: "postgresql",
    connection: {
      database: "postgres",
      user: "postgres",
      password: "pswd",
    },
    pool: {
      min: 2,
      max: 10,
    },
    migrations: {
      tableName: "migrations",
    },
  },
  production: {
    client: "postgresql",
    connection: {
      database: "my_db",
      user: "username",
      password: "pswd",
    },
    pool: {
      min: 2,
      max: 10,
    },
    migrations: {
      tableName: "knex_migrations",
    },
  },
};
