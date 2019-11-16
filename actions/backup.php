<?php 

require_once 'db_connect.php';

if ($_POST) {
   $isbn = $_POST['isbn'];
   $image = $_POST['image'];
   $author = $_POST['author'];
   $title = $_POST['title'];
   $publisher = $_POST['publisher'];

   $sql = "INSERT INTO books (isbn, image, author, title, publisher) VALUES ('$isbn', '$image', '$author', '$title', '$publisher')";
    if($connect->query($sql) === TRUE) {
       header('Location: ../home.php');
   } else  {
       echo "Error " . $sql . ' ' . $connect->connect_error;
   }

   $connect->close();
}

?>