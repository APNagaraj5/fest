<?php
session_start();
?>
<!DOCTYPE html>
<html>
<body>

<?php
// Echo session variables that were set on previous page
echo "Favorite color is " . $_SESSION["thisname"] . ".<br>";
echo "Favorite animal is " . $_SESSION["thisid"] . ".";
?>

</body>
</html>