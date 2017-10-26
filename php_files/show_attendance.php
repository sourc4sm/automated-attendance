<?php
include 'connect.php';
?>
<!DOCTYPE html>
<html>
<head>
	<title>Admin</title>
  <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/search_box.css">
  <script src="bootstrap-3.3.7-dist/js/jquery-3.1.1.min.js"></script>
  <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<header style="background-color:#33cc33">
	<h1 style="margin-left: 10%;margin-top:0;margin-bottom:0;padding:1%;"><a type="btn" style="color:white;" href="admin.php">Admin Panel</a></h1>
</header>
<body>
	<div class="container">
		<div class="table-responsive">
			<h2>Registered Students</h2>
				<table class="table">
					<thead>
						<tr>
							<th>Date Attended</th>
						</tr>
					</thead>
					<tbody>
		<?php
			$student_array = $_POST['submit'];
			foreach ($student_array as $id) {
				$que = "SELECT * FROM attendance_student WHERE student_index = '$id'";
				$student_search = $conn->query($que);
				while ($row = $student_search->fetch_assoc()){
					echo "<tr><td>" .$row['date_attended']. "</td></tr>";
			}
		}
		?>
					</tbody>
				</table>
		</div>
	</div>
</body>
</html>