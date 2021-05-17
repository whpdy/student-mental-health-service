<?php
require('fyp-model.php');

$consultee_given_name = $_POST['consultee_given_name'];
$consultants = getAllConsultants();

include('new-consultation-form-view.html');
?>