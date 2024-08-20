<?php

/**
 * Provides functions to basic operations that will be performed frequently
 */
/**
 * @return connection or false
 * 
 */

function db_connect()
{
    static $connection; // a static variable will reserve its value globally(even in C/C++)
    if (!isset($connection)) {
        $config = parse_ini_file('config.ini'); //the path should be given in accordance to the file which will run on the client side
        $connection = mysqli_connect($config['host'], $config['username'], $config['password'], $config['dbname']);
    }

    return $connection;
}
function db_query($query)
{
    $connection = db_connect();
    if ($connection) {
        $result = mysqli_query($connection, $query);
        return $result;
    }
    return false;
}

function db_error()
{
    $connection = db_connect();
    return mysqli_error($connection);
}

function db_select($query)
{

    $rows = array();
    $result = db_query($query);
    if ($result === false) {
        return false;
    }

    while ($row = mysqli_fetch_array($result)) {
        $rows[] = $row;
    }
    return $rows;
}
function sanitizeData($data)
{
    $connection = db_connect();
    return mysqli_real_escape_string($connection, $data);
}
function dd($line)
{
    die(var_dump($line));
}
