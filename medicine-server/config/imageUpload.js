
var multer = require('multer');
var DIR = './public/documents';
// User Image Upload

let storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, DIR);
    },
    filename: function (req, file, cb) {
        console.log('req Data ===========', req);
        console.log('file Data========', file);
        var datetimestamp = Date.now();
        cb(null, file.fieldname + '-' + datetimestamp + '.' + file.originalname.split('.')[file.originalname.split('.').length - 1]);
    }
});


let upload = multer({ storage: storage }).single('imageFile');

module.exports = upload;


