<?php
require_once("fyp-model.php");

$consultant = $_POST['consultant'];
$consultee_given_name = $_POST['consultee_given_name_passed'];
$rawdate = htmlentities($_POST['date']);
$date = date('Y-m-d', strtotime($rawdate));
$time = $_POST['time'];

addNewConsultation($consultant, $consultee_given_name, $date, $time);

include("new-consultation-save-view.html");
?>