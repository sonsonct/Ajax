<?php
include "config.php";
?>
<!doctype html>
<html>
    <head>
        <link href="style.css" type="text/css" rel="stylesheet">
        <script src="jquery-1.12.0.min.js" type="text/javascript"></script>
        <script src="script.js"></script>
    </head>
    <body>
        <div class="container">

            <?php

            $rowperpage = 3;

            $allcount_query = "SELECT count(*) as allcount FROM products";
            $allcount_result = mysqli_query($con,$allcount_query);
            $allcount_fetch = mysqli_fetch_array($allcount_result);
            $allcount = $allcount_fetch['allcount'];

           
            $query = "select * from products order by id asc limit 0,$rowperpage ";
            $result = mysqli_query($con,$query);

            while($row = mysqli_fetch_array($result)){

                $id = $row['id'];
                $Ten = $row['Ten'];
                $Gia = $row['Gia'];
                $MoTa = $row['Mota'];

            ?>
                <div class="post" id="post_<?php echo $id; ?>">
                    <div style="border: 1px solid black">
                    <h1><?php echo $Ten; ?></h1>
                    <p>
                        <?php echo $Gia; ?>
                    </p>
                    <img src="<?php echo $MoTa; ?>" alt="" style="width: 50px; height: 50px;">
                    </div>
                    
                </div>

            <?php
            }
            ?>

            <h1 class="load-more">Xem Thêm</h1>
            <input type="hidden" id="row" value="0">
            <input type="hidden" id="all" value="<?php echo $allcount; ?>">

        </div>
    </body>
</html>
