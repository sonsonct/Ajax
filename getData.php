<?php
include 'config.php';

$row = $_POST['row'];
$rowperpage = 3;
$query = 'SELECT * FROM products limit '.$row.','.$rowperpage;
$result = mysqli_query($con,$query);

$html = '';

while($row = mysqli_fetch_array($result)){
    $id = $row['id'];
    $Ten = $row['Ten'];
    $Gia = $row['Gia'];
    $MoTa = $row['Mota'];

    $html .= '<div id="post_'.$id.'" class="post">';
    $html .= '<div style="border: 1px solid black"><h1>'.$Ten.'</h1>';
    $html .= '<p>'.$Gia.'</p>';
    $html .= '<img src="'.$MoTa.'" alt="" style="width: 50px; height: 50px;"></div>';
    $html .= '</div>';
    
}

echo $html;
