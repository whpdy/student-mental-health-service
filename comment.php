<?php
require_once('fyp-model.php');

$submissionId = $_GET['id'];
$sub = getSubmissionById($submissionId);

include('comment-view.html');