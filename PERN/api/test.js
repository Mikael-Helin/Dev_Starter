const { Client } = require("pg");

const client = new Client({
  user: "postgres",
  password: "postgres.2022",
  host: "192.168.0.20",
  port: 5432,
  database: "perntodo",
});

client.connect();

client.query(`SELECT * FROM "public"."todo";`, (err, resp) => {
	if(!err){
		console.log(resp.rows);
	} else {
		console.log("Error: " + err.message);
	}
	client.end()
});
