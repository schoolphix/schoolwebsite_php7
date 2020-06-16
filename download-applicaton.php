<?
require_once("functions.php");
if(isset($_GET['id']))
{
$conn = connectAppDB();

$id = $_GET['id'];
$query = "SELECT filename, filetype, filesize, filepath FROM applications WHERE id = '$id'";
$result = $conn->query($query) or die('Error, query failed');
list($name, $type, $size, $filePath) = $result->fetch_array();

header("Content-Disposition: attachment; filename=$name");
header("Content-length: $size");
header("Content-type: $type");

readfile($filePath);

exit;
}
?>