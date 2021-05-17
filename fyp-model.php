<?php
function getConnection(){
    try{
       $conn = new PDO('mysql:host=localhost;dbname=u1762963', 'root', '');
       $conn->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
    }
    catch (PDOException $exception) 
    {
        echo "There was a problem connecting." . $exception->getMessage();
    }
    return $conn;
}

function closeConnection($conn)
{
    $conn=null;
}

function getAllSubmissions() {
	$conn = getConnection();
	$query = "SELECT * FROM submission ORDER BY date";
	$resultset = $conn->query($query);
	$submissions = $resultset->fetchAll();
	closeConnection($conn);
	return $submissions;
}

function getSubmissionById($submissionId) {
	$conn = getConnection();
	$stmt = $conn->prepare("SELECT * FROM submission WHERE submission.id = :id");
	$stmt->bindValue(':id',$submissionId);
	$stmt->execute();
	$submission=$stmt->fetch();
	closeConnection($conn);
	return $submission;
}

function addNewSubmission($name, $topic, $institution, $title, $body, $date, $time, $contact_info) {
	$conn = getConnection();
	$query="INSERT INTO submission (id, name, topic, institution, title, body, date, time, contact_info)
	VALUES (NULL, :name, :topic, :institution, :title, :body, :date, :time, :contact_info)";
	$stmt=$conn->prepare($query);
	$stmt->bindValue(':name', $name);
	$stmt->bindValue(':topic', $topic);
	$stmt->bindValue(':institution', $institution);
	$stmt->bindValue(':title', $title);
	$stmt->bindValue(':body', $body);
	$stmt->bindValue(':date', $date);
	$stmt->bindValue(':time', $time);
	$stmt->bindValue(':contact_info', $contact_info);
	$stmt->execute();
	closeConnection($conn);
}

function addCommentToSubmission($id, $comment) {
	$conn = getConnection();
	$query="UPDATE submission SET comments = :comment WHERE submission.id = :id";
	$stmt=$conn->prepare($query);
	$stmt->bindValue(':id', $id);
	$stmt->bindValue(':comment', $comment);
	$stmt->execute();
	closeConnection($conn);
}

function addNewConsultation($consultant, $consultee_given_name, $date, $time) {
	$conn = getConnection();
	$query="INSERT INTO consultation (id, consultant, consultee_given_name, date, time)
	VALUES (NULL, :consultant, :consultee_given_name, :date, :time)";
	$stmt=$conn->prepare($query);
	$stmt->bindValue(':consultant', $consultant);
	$stmt->bindValue(':consultee_given_name', $consultee_given_name);
	$stmt->bindValue(':date', $date);
	$stmt->bindValue(':time', $time);
	$stmt->execute();
	closeConnection($conn);
}

function getAllConsultants() {
	$conn = getConnection();
	$query = "SELECT * FROM consultant ORDER BY id";
	$resultset = $conn->query($query);
	$consultants = $resultset->fetchAll();
	closeConnection($conn);
	return $consultants;
}