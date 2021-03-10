<?php
require_once ("./config.php");
/* файл содержит:
function config(){
	$server = ...;
	$user = ...;
	$pass = ...;
	
	$conn = mysqli_connect( $server, $user, $pass, 'yamaha') or die(mysql_error());
	return $conn;
}
*/

/*** функция чтения из БД ***/

function read(){
	$query =  "SELECT * FROM stores";
	$sql = mysqli_query(config(), $query);
	$items = '{';
	$i = 0;
    while ($row = mysqli_fetch_assoc($sql)) {
		$items = $items.'"'.$i.'":{"id": "'.$row['id']
		.'", "name": "'.$row['name']
		.'", "adress": "'.$row["adress"]
		.'", "subway": "'.$row["subway"]
		.'", "phones": "'.$row['phones']
		.'", "worktime": "'.$row["worktime"]
		.'", "information": "'.$row["information"]
		.'", "latitude": "'.$row["latitude"]
		.'", "longitude": "'.$row["longitude"].'"}, ';
		$i++;
    }
	
	$items = substr($items, 0, -2).'}';
	echo $items;
	mysqli_free_result($sql);
}	

		read();
?>