<?php

/*
 * All database connection variables
 */

define('DB_USER', "appemcangroup_system"); // db user
define('DB_PASSWORD', "U2eUF9BqwswF"); // db password (mention your db password here)
define('DB_DATABASE', "appemcangroup_system");  // database name
define('DB_SERVER', "localhost"); // db server

// define('DB_USER', "root"); // db user
// define('DB_PASSWORD', ""); // db password (mention your db password here)
// define('DB_DATABASE', "emcangroup_sofra"); // database name
// define('DB_SERVER', "localhost"); // db server
$con = mysql_connect(DB_SERVER, DB_USER, DB_PASSWORD, DB_DATABASE) or die('Unable to Connect');
?>


