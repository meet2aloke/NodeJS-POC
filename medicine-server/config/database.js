function executeQuery(sqlQuery, callback) {

	const sql = require('mssql');

	const config = {
		user: 'SA',
		password: 'Krishna@123',
		server: 'localhost', 
		database: 'medicine',
	}

	// connect to your database
	sql.connect(config, function (err) {

		if (err) console.log(err);

		// create Request object
		var request = new sql.Request();
			
		// query to the database and get the records
		request.query(sqlQuery, function (err, recordset) {
			
			if (err) console.log(err)

			// send records as a response

			return callback(null, recordset);
			
		});
	});






















		// sql.on('error', err => {
		// 	return callback(err, null);
		// })
		

		// sql.connect(config).then(pool => {
		// 	// Query
			
		// return pool.request()
		// 		.input('input_parameter', sql.Int, value)
		// 		.query(sqlQuery)
		// }).then(result => {
		// 	return callback(null, result);
		// }).catch(err => {
		//     return callback(error, null);
		// });




	}
 
function query(sql, callback) {    
    executeQuery(sql,function(err, data) {
        if(err) {
            return callback(err);
        }       
        callback(null, data);
    });
}
 
module.exports = {
    query: query
}
