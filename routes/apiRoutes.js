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

  // Get all subDepts with dept name included
  app.get("/api/subdepts", function (req, res) {
    db.SubDept.findAll({ include: [db.dept] }).then(function (dbSubDepts) {
      res.json(dbSubDepts);
    });
  });

  // Get all subDepts with dept name included
  app.get("/api/subdeptsbydept/:deptId", function (req, res) {
    const deptId = parseInt(req.params.deptId);
    const objWhere = { deptId: deptId };
    console.log("***************************");
    console.log(objWhere);
    db.SubDept.findAll({
      where: objWhere,
      include: [db.Dept],
    }).then(function (dbSubDepts) {
      res.json(dbSubDepts);
    });
  });

  // Get all transactions (Money) with dept name included
  app.get("/api/transacts", function (req, res) {
    db.Money.findAll({
      include: [db.SubDept, db.Dept, db.ForMonth],
      order: [["itemDate", "DESC"]],
    }).then(function (dbMoney) {
      res.json(dbMoney);
    });
  });

  //create a new Money
  app.post("/api/transacts", function (req, res) {
    db.Money.create(req.body).then(function (dbSubDepts) {
      //send success message, html will location.reload
      res.json(dbSubDepts);
    });
  });

  // Delete a Money by id
  app.delete("/api/transacts/:id", function (req, res) {
    db.Money.destroy({ where: { id: req.params.id } }).then(function (dbMoney) {
      res.json(dbMoney);
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
