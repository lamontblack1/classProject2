var db = require("../models");

module.exports = function (app) {
  // Get all residents
  app.get("/api/residents", function (req, res) {
    db.Resident.findAll({}).then(function (dbResidents) {
      res.render("residentList", {
        dbResidents,
      });
    });
  });

  // Get all Depts
  app.get("/api/depts", function (req, res) {
    db.Dept.findAll({ order: [["dept", "ASC"]] }).then(function (dbDepts) {
      res.json(dbDepts);
    });
  });

  //create a new Dept
  app.post("/api/depts", function (req, res) {
    db.Dept.create(req.body).then(function (dbDepts) {
      res.json(dbDepts);
    });
  });

  //delete a dept
  app.delete("/api/depts/:id", function (req, res) {
    db.Dept.destroy({ where: { id: req.params.id } }).then(function (dbDepts) {
      res.json(dbDepts);
    });
  });

  //update a dept

  //create a new subDept
  app.post("/api/subdepts", function (req, res) {
    db.SubDept.create(req.body).then(function (dbSubDepts) {
      res.json(dbSubDepts);
    });
  });

  // Get all subDepts
  app.get("/api/subdepts", function (req, res) {
    db.SubDept.findAll({}).then(function (dbSubDepts) {
      res.json(dbSubDepts);
    });
  });

  // Get all examples
  app.get("/api/examples", function (req, res) {
    db.Example.findAll({}).then(function (dbExamples) {
      res.json(dbExamples);
    });
  });

  // Create a new example
  app.post("/api/examples", function (req, res) {
    db.Example.create(req.body).then(function (dbExample) {
      res.json(dbExample);
    });
  });

  // Delete an example by id
  app.delete("/api/examples/:id", function (req, res) {
    db.Example.destroy({ where: { id: req.params.id } }).then(function (
      dbExample
    ) {
      res.json(dbExample);
    });
  });
};
