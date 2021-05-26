var db = require("../models");
const path = require("path");

module.exports = function (app) {
  // Load index page
  app.get("/", function (req, res) {
    //this eventually be a login page with a monthly newsletter
    //so it should only need to return a static homepage
    db.Resident.findAll({}).then(function (dbResidents) {
      res.render("index", {
        msg: "Welcome!",
        dbResidents,
      });
    });
  });

  app.get("/depts", function (req, res) {
    res.sendFile(path.join(__dirname, "../public/depts.html"));
  });

  app.get("/transact", function (req, res) {
    res.sendFile(path.join(__dirname, "../public/transact.html"));
  });

  // Load example page and pass in an example by id
  app.get("/example/:id", function (req, res) {
    db.Example.findOne({ where: { id: req.params.id } }).then(function (
      dbExample
    ) {
      res.render("example", {
        example: dbExample,
      });
    });
  });

  // Render 404 page for any unmatched routes
  app.get("*", function (req, res) {
    res.render("404");
  });
};
