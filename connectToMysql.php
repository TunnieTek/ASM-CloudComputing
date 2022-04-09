<?php
// $GLOBALS['conn'] = mysqli_connect("localhost", "root", "", "toystore");
$GLOBALS['conn'] = mysqli_connect("3.25.125.209", "tuanqc", "123@123a", "toystore");
// $connecti = mysqli_connect("3.25.125.209", "root", "123@123a", "toystore");


if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

?>

