<?php require_once 'components/header.php' ?>

<form action="actions/a_create.php" method="POST">
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
    <input name="title"  type="text" class="form-control"  required>
  </div>
  <div class="form-group">
    <label>Publisher</label>
    <input name="publisher"  type="text" class="form-control" required>
  </div>
  <button type="submit" name="save" class="btn btn-primary">Save</button>
</form>

<?php require_once 'components/footer.php' ?>