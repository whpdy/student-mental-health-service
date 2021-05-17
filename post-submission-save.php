<?php
require_once('fyp-model.php');

date_default_timezone_set('GMT');

$name=$_POST['name'];
$topic=$_POST['topic'];
$institution=$_POST['institution'];
$title=$_POST['title'];
$body=$_POST['body'];
$date=date('Y-m-d');
$time=date('H:i');
$contact_info=$_POST['contact_info'];

addNewSubmission($name, $topic, $institution, $title, $body, $date, $time, $contact_info);

include('post-submission-save-view.html');
?>



