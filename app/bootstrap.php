<?php
// Load Config
require_once 'config/config.php';

// Load helper functions
require_once 'helpers/url_helpers.php';

// Load session helper
require_once 'helpers/session_helpers.php';


// Autoload Core Libraries
spl_autoload_register(function($className) {
    require_once 'libraries/' . $className . '.php';
});

