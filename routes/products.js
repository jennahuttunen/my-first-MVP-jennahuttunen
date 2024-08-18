var express = require('express');
var router = express.Router();
const db = require("../model/helper");

// PRODUCTS

// Show ALL products: http://localhost:4000/api/products/
router.get('/', async function(req, res, next) {
    const result = await db("SELECT * FROM products;")
  res.send(result.data);
});

// Show product based on its id
router.get("/:id", async function(req, res, next) {
    let prodId = req.params.id;
    try {
      let result = await db(`SELECT * FROM products WHERE id = ${prodId}`);
      if (result.data.length === 1) {
        res.send(result.data[0]);
      } else {
        res.status(404).send({ error: "Product not found" });
      }
    } catch (err) {
      res.status(500).send({ error: err.message });
    }
  });

// Add a new product to the db: http://localhost:4000/api/products/
router.post("/", async function(req, res, next) {
    let { name, descr, img_url, collection, year, creative_dir, material, show_id } = req.body; 
  
    try {
      let sql = `
        INSERT INTO products (name, descr, img_url, collection, year, creative_dir, material, show_id)
        VALUES ('${name}', '${descr}', '${img_url}', '${collection}', '${year}', '${creative_dir}', '${material}', ${show_id});
      `;
      await db(sql);
      let result = await db("SELECT * FROM products");
      res.status(201).send(result.data);
    } catch (err) {
      res.status(500).send({ error: err.message });
    }
  });

// Delete a products from the db: http://localhost:4000/api/products/32 (32 is an example id)
router.delete("/:id", async function(req, res, next) {
    let prodId = req.params.id;
  
    try {
      let result = await db(`SELECT * FROM products WHERE id = ${prodId}`);
      if (result.data.length === 1) { 
        await db(`DELETE FROM products WHERE id = ${prodId}`);
        result = await db("SELECT * FROM products");
        res.send(result.data);
      } else {
        res.status(404).send({ error: "Product not found" });
      }
    } catch (err) {
      res.status(500).send({ error: err.message });
    }
  });

// LEFT JOINED TO SHOWS

// Show selected prod+showinfo based on showid (treated data)
router.get("/shows/:showid", async function(req, res, next) {
  let showId = req.params.showid;  
  try {
      let result = await db(`
SELECT products.id, products.name, products.descr, products.img_url, products.material, shows.location, shows.collection, shows.year, shows.creative_dir, shows.vid_url, shows.house_name, shows.about FROM products LEFT JOIN shows ON products.show_id = shows.id WHERE shows.id = ${showId};
      `);

      console.log(result.data[0]);

      const productsArray = [];
      for (let product of result.data) {
        productsArray.push({
          id: product.id,
          name: product.name,
          descr: product.descr,
          img_url: product.img_url,
          material: product.material
        });
      }

      const combinedCollectionYear = `${result.data[0].collection} ${result.data[0].year}`;


      const response = {
        location: result.data[0].location,
        collectionYear: combinedCollectionYear,
        creative_dir: result.data[0].creative_dir, 
        vid_url: result.data[0].vid_url,
        house_name: result.data[0].house_name,
        about: result.data[0].about,
        products: productsArray
      };
      res.send(response);
  } catch (err) {
      res.status(500).send({ error: err.message });
  }
});

module.exports = router;