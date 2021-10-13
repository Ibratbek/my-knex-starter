"use strict";

const express = require("express");

const app = express();

app.use(express.json());
app.disable("x-powered-by");

app.use("/", [
  require("./routes/auth_routes"),
  require("./routes/user_routes"),
]);

app.use(require("./middleware/error_middleware").all);

module.exports = app;