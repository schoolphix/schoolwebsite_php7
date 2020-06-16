<?php
if ($_GET['randomId'] != "rqXA_wR2ExgfwbpxoTjdBVSzuqIz2l4KI8Hp_3kElfRMt5NEccYvLD_MGaQKIzgT") {
    echo "Access Denied";
    exit();
}

// display the HTML code:
echo stripslashes($_POST['wproPreviewHTML']);

?>  
