var mysql = require('mysql');
var inquirer = require('inquirer');
var require = require('require');
var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,

    user: "root",

    password: "",
    database: "bamazon"
});

connection.connect(function (err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId);
    readProducts();
    // inquirer
    //     .prompt([
    //         {
    //             type: "text",
    //             message: "What is the item ID of the product you are searching for?",
    //             name: "id"
    //         },
    //         {
    //             type: "i",
    //             message: "How many " + id.product_name  +"s would you like to purchase?",
    //             name: "quantity"

    //         }
    //     ]).then(function(answers){
    //         console.log(id.product_name);
    //         //checkStock();
    //     })
    // connection.end();
});

function readProducts() {
    console.log("Selecting all products...\n");
    connection.query("SELECT * FROM products ", function(err, res) {
      if (err) throw err;
      console.log("FOR SALE:\n");
      
      for ( var i = 0; i < res.length; i++) {
          
          console.log(res[i].item_id + " | " + res[i].product_name + " | " + res[i].price);
      }
      //Log all results of the SELECT statement
      

    });
  }