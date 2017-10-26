<?php
include 'connect.php';
		
	$id_number = $_GET['value'];
	$search_student = "SELECT * FROM registered_students WHERE student_id = '$id_number'";
	$student_search = $conn->query($search_student);
	$row = $student_search->fetch_assoc();
	if($student_search->num_rows>0){
		$student_index = $row['student_index'];
		$student_name = $row['student_first_name'];
		echo('<1>');
		$que = "INSERT INTO attendance_student(student_index,student_name)VALUES ('$student_index','$student_name')";
		$save = $conn->query($que);
	}
	else{
		echo('<0>');
	}

?>