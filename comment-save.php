<?php
require_once('fyp-model.php');

# Make Comment
$id = $_POST['id'];
$comment = $_POST['comment'];

addCommentToSubmission($id, $comment);

# View Post with Comment
$submissions = getAllSubmissions();
$submissionId = $id;
$sub = getSubmissionById($submissionId);


include('comment-save-view.html');