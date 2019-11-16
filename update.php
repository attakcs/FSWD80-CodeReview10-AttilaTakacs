<?php require_once 'actions/db_connect.php';?>
<?php require_once 'components/header.php' ?>

<?php 
$result = $connect->query("SELECT * FROM books");
// pre_r($result);
// pre_r($result->fetch_all());

function pre_r($array) {
    echo '<pre>';
    print_r($array);
    echo '</pre>'; 
}

 ?>

<div class="row">

<table class="table">
  <thead>
    <tr>
      <th scope="col">ISBN#</th>
      <th scope="col">Image</th>
      <th scope="col">Author</th>
      <th scope="col">Title</th>
      <th scope="col">Publisher</th>
    </tr>
  </thead>
  <?php while ($row=$result->fetch_all()); ?>

<tbody>
        


</tbody>
</table>
</div>

<div class="row">

<form action="actions/a_update.php" method="POST">
  <div class="form-group">
    <label>ISBN number</label>
    <input name="isbn" type="text" class="form-control" required>
  </div>
  <div class="form-group">
    <label>Image link</label>
    <input name="image"  type="text" class="form-control" required><small class="form-text text-muted">Must be URL, like "https://pix..."</small>
  </div>
  <div class="form-group">
    <label>Author</label>
    <input name="author"  type="text" class="form-control" required>
  </div>
  <div class="form-group">
    <label>Title</label>
    <input name="title"  type="text" class="form-control" required>
  </div>
  <div class="form-group">
    <label>Publisher</label>
    <input name="publisher"  type="text" class="form-control" required>
  </div>
  <button name="save" type="submit" class="btn btn-primary">Save</button>
</form>
</div>

<?php require_once 'components/footer.php'?>