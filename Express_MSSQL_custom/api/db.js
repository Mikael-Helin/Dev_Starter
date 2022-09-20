const sql = require("mssql");

const sql_cmd () => {

const config = {
	user: "SA",
	password: "Str9ng_Pwd",
	host: "localhost",
	database: "Bookmarks"
};

sql.connect(config, function (err) {
	sql.connect(config, function (err) {
    
        if (err) console.log(err);

        // create Request object
        var request = new sql.Request();
           
        // query to the database and get the records
        request.query('select * from Student', function (err, recordset) {
            
            if (err) console.log(err)

            // send records as a response
            res.send(recordset);
            
        });
    });
}

}

module.exports = pool;