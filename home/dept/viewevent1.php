<?php
session_start();
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href=css/main.css rel="stylesheet" type="text/css">
<link href=css/home.css rel="stylesheet" type="text/css">
<title>PESITM</title>
<style>
.button {
	
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}

table{
border-collapse: collapse;
width:100%;
color:#588c7e;
text-align:center;
}
th{
background-color:#588c7e;
color: white;
}
tr:nth-child(even){
background-color:#f2f2f2;}
h2{
padding-top:30px;
text-align:center ;
text-decoration:underline;
}
.content_table{
padding-left:20px;
padding-right:20px;
}

</style>

</head>

<body>
<div class="body">



<div class="content_table">
<?php
	$q=$_SESSION["deptid"];
	$conn = mysqli_connect("localhost","root","","fest");
	if ($conn-> connect_error)
	{
	die("connection failed:".$conn-> connect_error);
	}
	//$sql = "SELECT e.name,eid,descp,loc,stime,etime,fee,d.dname,c.cname,c.phno from eventt e,dept d,coordinator c where e.did=d.did AND e.cid=c.cid and d.did='$q'" ;
	$sql = "SELECT *  from win order by place";
	$result = $conn-> query($sql);

	
	
	
	
	if($result-> num_rows >0)
	{
	?>
	<div >
	<h2>Win Details</h2>
	</div>
	<table cellpadding="8px" border="3px soild">
	<tr>
	<th>eid </th>
	<th>usn</th>
	<th>place</th>	
	<th>price</th>
	</tr>
	
	<?php
	//include("edit.php");
		while ($row = $result-> fetch_assoc() )
		{	
			$i=$row["eid" ];
			
			echo"<tr>";
			echo"<td>";echo $row["eid"]; echo"</td>";
			echo"<td>";echo $row["usn" ]; echo"</td>";
			echo"<td>";echo $row["place"]; echo"</td>";
			echo"<td>";echo $row["price"]; echo"</td>";
			;
		
/*	echo"<td>";echo $row["id"]; echo"</td>";
	echo"<td>"; echo $row["username"] ; echo" </td>";
	echo"<td>"; echo $row["password"]; echo"</td>";
	echo"</tr>";*/
		}
		echo"</table>";
	}
	else
	{
		echo"No Records found !";
		/*echo"<div >";
	echo"<h2>"; echo"Student Details"; echo"</h2>";
	echo"</div>";
			echo"<table>";
	echo"<tr>";
	echo"<th>";echo "USN "; echo"</th>";
	echo"<th>"; echo "Student Name" ; echo" </th>";
	echo"<th>"; echo "Date of Birth"; echo"</th>";
	echo"<th>"; echo "Gender"; echo"</th>";
	echo"<th>"; echo "Address"; echo"</th>";
	echo"<th>"; echo "Phone No"; echo"</th>";
	echo"<th>"; echo "Email"; echo"</th>";
	echo"<th>"; echo "Class"; echo"</th>";
	echo"<th>"; echo "Admision date"; echo"</th>";
	echo"</tr>";*/
	}
	$conn-> close();
		
	?>
	
</table>
</div>
</div>

</body>
</html>
