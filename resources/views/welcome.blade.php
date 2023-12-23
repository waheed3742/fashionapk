<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User Information Form</title>

  <!-- Bootstrap CSS -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
  <h2>User Information Form</h2>

  <!-- Form -->
  <form id="updateUserForm" enctype="multipart/form-data">
    <!-- Name -->
    @csrf
    <div class="form-group">
      <label for="name">Name:</label>
      <input type="text" class="form-control" id="name" name="name" required>
    </div>

    <!-- Email -->
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" name="email" required>
    </div>

    <!-- Image -->
    <div class="form-group">
      <label for="image">Image:</label>
      <input type="file" class="form-control-file" id="image" name="image">
    </div>

    <!-- Age -->
    <div class="form-group">
      <label for="age">Age:</label>
      <input type="number" class="form-control" id="age" name="age" required>
    </div>

    <!-- Gender -->
    <div class="form-group">
      <label>Gender:</label>
      <div class="form-check">
        <input type="radio" class="form-check-input" id="male" name="gender" value="male" checked>
        <label class="form-check-label" for="male">Male</label>
      </div>
      <div class="form-check">
        <input type="radio" class="form-check-input" id="female" name="gender" value="female">
        <label class="form-check-label" for="female">Female</label>
      </div>
    </div>

    <!-- Submit Button -->
    <button type="button" class="btn btn-primary" id="updateUserBtn">Update User</button>
  </form>
</div>

<!-- Bootstrap JS and jQuery (required for some Bootstrap features) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<!-- Your custom JavaScript using jQuery for handling the form submission -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
 $(document).ready(function () {

// Attach click event to the button with id "updateUserBtn"
$('#updateUserBtn').on('click', function () {
    // Get form data
    var name = $('#name').val();
        var email = $('#email').val();
        var age = $('#age').val();
        var gender = $('input[name="gender"]:checked').val();
        var image = $('#image')[0].files[0];

        // Create a FormData object and append values
        var formData = new FormData();
        formData.append('name', name);
        formData.append('email', email);
        formData.append('age', age);
        formData.append('gender', gender);
        formData.append('image', image);
        console.log(formData);
    // Replace 'USER_ID' with the actual user ID
    var userId = 1;

    // Make an AJAX request to update user data using jQuery
    $.ajax({
      url: `api/update_user/${userId}`,
      type: 'PUT',
      data: formData,
      processData: false,
      contentType: false,
      success: function(response) {
        console.log(response);
        alert('User information updated successfully!');
      },
      error: function(error) {
        console.error('Error updating user information:', error);
        alert('Error updating user information. Please try again.');
      }
    });
});
});

</script>

</body>
</html>
