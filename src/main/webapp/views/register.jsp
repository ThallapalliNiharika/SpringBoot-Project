<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <style>
        body {
            background-image: url('https://img.freepik.com/premium-photo/shopping-cart-with-gift-box-background_874813-18322.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            font-family: Arial, sans-serif;
            color: black; /* Change text color to black */
        }

        .container {
            margin-top: 50px;
        }

        .registration-form {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.2);
            margin: 0 auto; /* Center the form horizontally */
        }

        .registration-form h3 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        /* Rest of your CSS styles remain the same */
    </style>
    <title>Registration Page</title>
</head>
<body>

<div class="container">
    <div class="col-sm-6">
        <h3>Sign Up Now</h3>
        <p>Please fill out this form to register</p>
        <form action="newuserregister" method="post" class="registration-form">
            <div class="form-group">
                <label for="firstName">User Name</label>
                <input type="text" name="username" id="firstName" required placeholder="Your Username*" class="form-control">
            </div>
            <div class="form-group">
                <label for="email">Email address</label>
                <input type="email" class="form-control" required minlength="6" placeholder="Email*" required name="email" id="email">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" required placeholder="Password*" required name="password" id="password">
            </div>
            <div class="form-group">
                <label for="Address">Address</label>
                <textarea class="form-control" rows="3" placeholder="Enter Your Address" name="address"></textarea>
            </div>
            
            <input type="submit" value="Register" class="btn btn-primary btn-block">
            <span>Already have an account? <a class="linkControl" href="/">Login here</a></span>
        </form>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
</body>
</html>
