	class Finance {
	    
	    constructor() { }
	 
	    static addUser(objData) {
			console.log('objData ========', objData);
		
			// let sql = `INSERT INTO master_user(firstName,lastName,email,password,imageURL,age) \
		    //        VALUES('${this.user_fname}','${this.user_lname}','${this.user_email}','${this.user_password}','${this.user_image}','${this.user_age}')`;
	        //        return sql;           
	    }

		static getDepartment() {
			let sql = `SELECT * FROM Z_Department`;
			return sql;           
		} 

		static getDivision() {
			let sql = `SELECT * FROM Z_Division`;
			return sql;           
		} 	
	}
	 
	module.exports = Finance;

