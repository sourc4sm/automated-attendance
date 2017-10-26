<?php
include 'connect.php';

 $first_name = $_GET['first_name'];
 $last_name = $_GET['last_name'];
 $id_number = $_GET['id_number'];
 
 $search_student = "SELECT * FROM registered_students WHERE student_id = '$id_number'";
 $student_search = $conn->query($search_student);
 if($student_search->num_rows>0){
	 echo "Already registered";
 }
 else{
	 $que = "INSERT INTO registered_students(student_id,student_first_name,student_last_name)VALUES ('$id_number','$first_name','$last_name')";
	 $save = $conn->query($que);
	 echo "Successfully Registered";
 }
?>