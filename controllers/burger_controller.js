var express = require("express");
// Import the model (burger.js) to use its database functions.
var burger = require("../models/burger.js");

var router = express.Router();

// Create all our routes and set up logic within those routes where required.
router.get("/", function(req, res) {
    burger.all(function(data) {
        var hbsObject = {
            burgers: data
        };
        console.log(hbsObject);
        res.render("index", hbsObject);
    });
});

router.post("/api/burgers", function(req, res) {
    burger.create([
        "burger_name",
        "ingredient_1", "ingredient_2", "ingredient_3",
        "ingredient_4", "ingredient_5",
        "burger_picture",
        "devoured"
    ], [
        req.body.burger_name,
        req.body.ingredient_1, req.body.ingredient_2, req.body.ingredient_3,
        req.body.ingredient_4, req.body.ingredient_5,
        req.body.burger_picture,
        req.body.devoured
    ], function(result) {
        // Send back the ID of the new quote
        console.log(result);

        res.json({ burger_id: result.insertId });
    });
});

router.put("/api/burgers/:burger_id", function(req, res) {
    var condition = `burger_id = ${req.params.burger_id}`;

    console.log("condition", condition);

    burger.update({
        devoured: req.body.devoured
    }, condition, function(result) {
        if (result.changedRows == 0) {
            // If no rows were changed, then the ID must not exist, so 404
            return res.status(404).end();
        } else {
            res.status(200).end();
        }
    });
});

// Export routes for server.js to use.
module.exports = router;