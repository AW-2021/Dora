const mysql = require('mysql');
var path = require('path');

//Connection Pool
const pool = mysql.createPool({
    connectionLimit : 100,
    host            : process.env.DB_HOST,
    user            : process.env.DB_USER,
    password        : process.env.DB_PASSWORD,
    database        : process.env.DB_NAME

});

//display login page
exports.form = (req, res, next)=> {   
    // render to views/user/add.ejs
    res.render('login-user');
}

//authenticate user
exports.auth = (req, res, next) => {

    const { username, password, role } = req.body;

    //Connecting to Database
    pool.getConnection((err, connection)=> {
        if(err) throw err;
        console.log('Connected as ID ' + connection.threadId);
        
        connection.query('SELECT * FROM user WHERE username = ? AND password = ? AND role = ?', [ username, password, role], function(err, rows, fields) {

            connection.release();

            if(err) throw err;
            // if user not found
            if (rows.length <= 0 || req.body.role != "admin") {
                res.render('login-user', { alert: `Invalid Login Info! Try Again.` });
            //res.redirect('/');
            }
            else{// if admin user found
                res.redirect('/home');                
            }
        });
    });  
}

//View Cities
exports.view = (req, res)=> {
    
    //Connecting to Database
    pool.getConnection((err, connection)=> {
    if(err) throw err;
    console.log('Connected as ID ' + connection.threadId);
    
    //User the connection
    connection.query('SELECT * FROM city', (err, rows) => {
        //When done with connection release it
        connection.release();

        if(!err) {
            let removedUser = req.query.removed;
            res.render('home', { rows, removedUser });
        }
        else {
            console.log(err);
        }

        console.log('The data from city table:\n', rows);
    });
});
}

//Find User by Search
exports.find = (req, res) => {
    
        //Connecting to Database
        pool.getConnection((err, connection)=> {
        if(err) throw err;
        console.log('Connected as ID ' + connection.threadId);
        
        let searchTerm = req.body.search;
        //User the connection
        connection.query('SELECT TP.id, TP.name, A.duration, A.about FROM attraction A JOIN tourist_places TP ON A.id = TP.id WHERE TP.name LIKE ?', ['%' + searchTerm + '%'], (err, rows) => {
            //When done with connection release it
            connection.release();
            if(!err) {
                res.render('search-attraction', { rows });
            }
            else {
                console.log(err);
            }
    
            console.log('The data from attraction table:\n', rows);
        });
    });
}

exports.viewcustomer = (req, res) =>
{
    pool.getConnection((err, connection)=> {
        if(err) throw err;
        console.log('Connected as ID ' + connection.threadId);
        
        //User the connection
        connection.query('SELECT id, username, join_date FROM user WHERE role = "customer"' ,(err, rows) => {
            //When done with connection release it
            connection.release();
    
            if(!err) {
                res.render('view-customer', { rows });
            }
            else {
                console.log(err);
            }
    
            console.log('The data from customer table:\n', rows);
        });
    });
}

exports.viewtrip = (req, res) => {
    
        //Connecting to Database
        pool.getConnection((err, connection)=> {
        if(err) throw err;
        console.log('Connected as ID ' + connection.threadId);
        
        //User the connection
        connection.query('SELECT * FROM (SELECT registration.id AS RegID, registration.city_id, registration.customer_id, registration.start_date, registration.end_date, registration.preferred_stars, tourist_places.id AS "tourist_placesID", tourist_places.city_id AS tourist_placesCityID, tourist_places.name, tourist_places.stars, tourist_places.tripdate FROM registration INNER JOIN tourist_places ON registration.city_id = tourist_places.city_id WHERE tourist_places.tripdate BETWEEN registration.start_date AND registration.end_date ORDER BY registration.customer_id ASC) AS X WHERE X.customer_id = ?', [req.params.id],(err, rows) => {
            //When done with connection release it
            connection.release();
    
            if(!err) {
                res.render('view-trip', { rows });
            }
            else {
                console.log(err);
            }
    
            console.log('The data from trip table:\n', rows);
        });
    });
}

exports.form2 = (req, res) => {
    res.render('add-trip');
}

//Add a new registration
exports.create2 = (req, res) => {

    const { city_id, customer_id, start_date, preferred_stars, end_date } = req.body;
    pool.getConnection((err, connection)=> {
        if(err) throw err;
        console.log('Connected as ID ' + connection.threadId);
        
        //User the connection
        connection.query('INSERT INTO registration SET city_id = ?, customer_id = ?, start_date = ?, preferred_stars = ?, end_date = ?', [city_id, customer_id, start_date, preferred_stars, end_date], (err, rows) => {
            if(!err) {
                res.render('add-trip', { alert: 'New trip added successfully!' });
            }
            else {
                console.log(err);
            }
    
            console.log('The data from registration table:\n', rows);
        });
    });
}


exports.form3 = (req, res) => {
    res.render('add-customer');
}

//Add a new customer
exports.create3 = (req, res) => {

    const { username, password, phone, email, first_name, last_name } = req.body;
    pool.getConnection((err, connection)=> {
        if(err) throw err;
        console.log('Connected as ID ' + connection.threadId);
        
        //User the connection
        connection.query('INSERT INTO user SET username = ?, password = ?, phone = ?, email = ?, first_name = ?, last_name = ?', [username, password, phone, email, first_name, last_name], (err, rows) => {
            if(!err) {
                res.render('add-customer', { alert: 'New customer added successfully!' });
            }
            else {
                console.log(err);
            }
    
            console.log('The data from customer table:\n', rows);
        });
    });
}

//Edit user
exports.edit = (req,res) => {
    pool.getConnection((err, connection)=> {
        if(err) throw err;
        console.log('Connected as ID ' + connection.threadId);
        
        //User the connection
        connection.query('SELECT * FROM user WHERE id = ?',[req.params.id], (err, rows) => {
            //When done with connection release it
            connection.release();
            if(!err) {
                res.render('edit-user', { rows });
            }
            else {
                console.log(err);
            }
    
            console.log('The data from user table:\n', rows);
        });
    }); 
}

exports.update = (req,res) => {

    const { username, password, first_name, last_name, email, phone } = req.body;
    pool.getConnection((err, connection)=> {
        if(err) throw err;
        console.log('Connected as ID ' + connection.threadId);
        
        //User the connection
        connection.query('UPDATE user SET username = ?, password = ?, first_name = ?, last_name = ?, email = ?, phone = ? WHERE id = ?', [username, password, first_name, last_name, email, phone, req.params.id], (err, rows) => {
            //When done with connection release it
            connection.release();
            if(!err) {
                pool.getConnection((err, connection)=> {
                    if(err) throw err;
                    console.log('Connected as ID ' + connection.threadId);
                    
                    //User the connection
                    connection.query('SELECT * FROM user WHERE id = ?',[req.params.id], (err, rows) => {
                        //When done with connection release it
                        connection.release();
                        if(!err) {
                            res.render('edit-user', { rows, alert: `${username} has been updated!` });
                        }
                        else {
                            console.log(err);
                        }
                
                        console.log('The data from user table:\n', rows);
                    });
                });
            }
            else {
                console.log(err);
            }
            console.log('The data from user table:\n', rows);
        });
    }); 
}

//Delete a user
exports.delete = (req,res) => {
    
        //User the connection
        /*connection.query('DELETE FROM user WHERE id = ?',[req.params.id], (err, rows) => {
            //When done with connection release it
            connection.release();
            if(!err) {
                res.redirect('/');
            }
            else {
                console.log(err);
            }
    
            console.log('The data from user table:\n', rows);
        });*/
        
        pool.getConnection((err, connection)=> {
            if(err) throw err;
            console.log('Connected as ID ' + connection.threadId);
        
            // Hide a record
            connection.query('UPDATE user SET status = ? WHERE id = ?', ['removed', req.params.id], (err, rows) => {
            if (!err) {
                let removedUser = encodeURIComponent('User successfully removed.');
                res.redirect('/?removed=' + removedUser);
            } 
            else {
            console.log(err);
            }
            console.log('The data from user table are: \n', rows);
        });  
    }); 
}

//View Users
exports.viewall = (req, res)=> {
    
    //Connecting to Database
    pool.getConnection((err, connection)=> {
    if(err) throw err;
    console.log('Connected as ID ' + connection.threadId);
    
    //User the connection
    connection.query('SELECT * FROM tourist_places WHERE city_id = ?', [req.params.id],(err, rows) => {
        //When done with connection release it
        connection.release();

        if(!err) {
            res.render('view-city', { rows });
        }
        else {
            console.log(err);
        }

        console.log('The data from city table:\n', rows);
    });
});
}

exports.viewall2 = (req, res)=> {
    
    //Connecting to Database
    pool.getConnection((err, connection)=> {
    if(err) throw err;
    console.log('Connected as ID ' + connection.threadId);
    
    //User the connection
    connection.query('SELECT * FROM view1_attraction WHERE id = ? UNION SELECT * FROM view2_restaurant WHERE id = ?', [req.params.id, req.params.id], (err, rows) => {
        //When done with connection release it
        connection.release();

        if(!err) {
            res.render('view-touristplace', { rows });
        }
        else {
            console.log(err);
        }

        console.log('The data from view1 table:\n', rows);
    });
});
}


