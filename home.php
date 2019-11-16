<?php require_once 'actions/db_connect.php' ?>

<?php require_once 'components/header.php'  ?>

<div class="row">
  

<?php
           $sql = "SELECT * FROM books";
           $result = $connect->query($sql);

            if($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
            echo
            '<div class="card col-lg-4 d-inline" style="width: 18rem;">
                <img src="'.$row["image"].'"" class="card-img-top" alt="...">
                <div class="card-body">
              <ul class="list-group list-group-flush">
                  <li class="list-group-item"><b>Title: </b>'.$row["title"].'</li>
                  <li class="list-group-item"><b>Author: </b>'. $row["author"].'</li>
                  <li class="list-group-item"><b>Publisher: </b>'. $row["publisher"].'</li>
                  <li class="list-group-item"><b>ISBN: </b>'. $row["isbn"].'</li>
              </ul>
            </div>
            </div>';
            }
            $connect->close();
           } else  {
               echo  "<tr><td colspan='5'><center>No Data Avaliable</center></td></tr>"; }     
 ?>

 </div>

<?php require_once 'components/footer.php' ?>


