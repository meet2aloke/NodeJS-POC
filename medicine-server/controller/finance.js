
    var express = require('express');
    var sha1 = require('sha1');
    var db = require('../config/database');
    var Finance = require('../model/finance');
    var upload = require('../config/imageUpload');

	const router = express.Router();


	router.post("/addTransictionInfo",(req,res,next)=>{
		upload(req, res, function (err) {

			console.log('req =================== ', req.body);

			// db.query(Finance.addUser(req.body.fname,req.body.lname,req.body.email,sha1(req.body.pass),req.file.filename,req.body.age),(err,data)=>{
			// 	if(!err){
			// 		res.json({
			// 			status:200,
			// 			message:"user add successfully",
			// 			userData:data   
			// 		});
			// 	}else{
			// 		res.json({
			// 			status:000,
			// 			message:"something wents wronge",
			// 		});
			// 	}
			// });

		})
	});
	

	router.get("/getDepartment", (req, res, next) => {
	    db.query(Finance.getDepartment(), (err, data)=> {
			const {recordsets} = data;
			if(!err) {
				res.json({
					status:200,
					data:recordsets 
				});
			}
	    });    
	});

	router.get("/getDivision", (req, res, next) => {
	    db.query(Finance.getDivision(), (err, data)=> {
			const {recordsets} = data;
			if(!err) {
				res.json({
					status:200,
					data:recordsets 
				});
			}
	    });    
	});


	module.exports = router;
