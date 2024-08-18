var express = require('express');
var router = express.Router();
const db = require("../model/helper");

// SHOWS

// Show all shows: http://localhost:4000/api/shows/
router.get('/', async function(req, res, next) {
    const result = await db("SELECT * FROM shows;")
  res.send(result.data);
});

// Show one show based on id: http://localhost:4000/api/shows/1 (1 is an example id)
router.get("/:id", async function(req, res, next) {
    let showId = req.params.id;
    try {
      let result = await db(`SELECT * FROM shows WHERE id = ${showId}`);
      if (result.data.length === 1) {
        res.send(result.data[0]);
      } else {
        res.status(404).send({ error: "Show not found" });
      }
    } catch (err) {
      res.status(500).send({ error: err.message });
    }
  });

// Add a new show to the db: http://localhost:4000/api/shows/
router.post("/", async function(req, res, next) {
    let { collection, year, vid_url, creative_dir, prod_amount, location } = req.body; 
  
    try {
      let sql = `
        INSERT INTO shows (collection, year, vid_url, creative_dir, prod_amount, location, about)
        VALUES ('${collection}', '${year}', '${vid_url}', '${creative_dir}', ${prod_amount}, '${location}', '${about}');
      `;
      await db(sql);
      let result = await db("SELECT * FROM shows");
      res.status(201).send(result.data);
    } catch (err) {
      res.status(500).send({ error: err.message });
    }
  });

// Delete a show from the db: http://localhost:4000/api/shows/3 (3 is an example id)
router.delete("/:id", async function(req, res, next) {
    let showId = req.params.id;
  
    try {
      let result = await db(`SELECT * FROM shows WHERE id = ${showId}`);
      if (result.data.length === 1) { 
        await db(`DELETE FROM shows WHERE id = ${showId}`);
        result = await db("SELECT * FROM shows");
        res.send(result.data);
      } else {
        res.status(404).send({ error: "Show not found" });
      }
    } catch (err) {
      res.status(500).send({ error: err.message });
    }
  });

module.exports = router;
