const express = require('express');
const router = express.Router();
const userController = require('../controllers/userController'); 

router.get('/', userController.form);
router.post('/', userController.auth);

//Can be used to access create, find, update, delete functions
//Currently we are using a view function when we land on the home page
//ADMIN
router.get('/home', userController.view);
router.post('/home', userController.find);

//ADMIN
router.get('/home/viewcustomer', userController.viewcustomer);
router.get('/home/viewtrip/:id', userController.viewtrip);

//ADMIN
router.get('/home/addtrip', userController.form2);
router.post('/home/addtrip', userController.create2);

//ADMIN
router.get('/home/addcustomer', userController.form3);
router.post('/home/addcustomer', userController.create3);

//ADMIN
router.get('/home/viewcity/:id', userController.viewall);
router.get('/home/viewtouristplace/:id', userController.viewall2);

//ADMIN
router.get('/home/edituser/:id', userController.edit);
router.post('/home/edituser/:id', userController.update);

//ADMIN
router.get('/home/:id', userController.delete);

module.exports = router; 