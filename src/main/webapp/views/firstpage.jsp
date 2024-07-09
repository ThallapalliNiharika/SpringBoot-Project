<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style1.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            background-repeat: no-repeat;
            background-size: cover;
            height: 100vh;
  			overflow-y: auto;
  			flex-direction :column;
  			display: flex;

        }
        /* CSS for shading effect using a gradient background */
        .shading-container {
            background: linear-gradient(to bottom, #fff, #f0f0f0);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.2);
        }
        
        header {
            background-color: #333;
            color: #fff;
            padding: 10px 0;
            text-align: center;
            margin: 0; /* Remove margin at the top of the header */
        }
        header a {
            color: #fff;
            text-decoration: none;
            font-weight: bold;
            margin: 0 15px; /* Reduce margin between navigation links */
        }
        header a:hover {
            text-decoration: underline;
        }
        .hero {
            text-align: center;
            padding: 10px 0; /* Adjust padding for the heading */
            background-color: rgba(0, 0, 0, 0.3); /* Add a semi-transparent background */
            color: #fff;
            margin-bottom: 0; /* Remove margin below the heading */
            flex:1;
        }
        .hero h1 {
            font-family: 'Times New Roman', serif;
            font-size: 36px;
            margin: 0; /* Remove margin for the heading */
        }
        .button {
            background-color: burlywood;
            color: black;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 20px;
            transition: background-color 0.3s ease;
        }
        .button:hover {
            background-color: brown;
        }
        .footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px 0;
        }
    /* ... previous styles ... */

    /* CSS for the slideshow */
    .slideshow-container img {
  width: 100%;
  height: 100%;
  object-fit: hidden;
}

    }

    .mySlides {
        display: none;
        text-align: center;
    }

    .slideshow-img {
        width: 100%; /* Set the width to 100% */
        height: auto;
    }
</style>

    <script>
        // JavaScript for the slideshow
        let slideIndex = 0;

        function showSlides() {
            const slides = document.getElementsByClassName("mySlides");
            for (let i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slideIndex++;
            if (slideIndex > slides.length) {
                slideIndex = 1;
            }
            slides[slideIndex - 1].style.display = "block";
            setTimeout(showSlides, 3000); // Change slide every 3 seconds
        }

        window.onload = function () {
            showSlides();
        };
    </script>
    <title>Fashion & Fusion</title>
</head>
<body>
    <header>
        <a href="/">Home</a>
        <a href="/login">Login</a>
        <a href="/register">Signup</a>
        <a href="/admin/login">AdminLogin</a>
    </header>
    <div class="shading-container">
        <div class="hero">
            <h1>Welcome to Fashion & Fusion</h1>
            <p>Where Style Meets Innovation: Explore Fashion & Fusion Today!</p>
        </div>
        <div class="slideshow-container">
            <div class="mySlides">
                <img src="https://image.freepik.com/free-vector/dussehra-sale-poster-banner-design_1302-13217.jpg" alt="Slide 1" class="slideshow-img">
            </div>
            <div class="mySlides">
                <img src="https://img.freepik.com/premium-vector/modern-sale-banner-website-slider-template-design_54925-46.jpg" alt="Slide 2" class="slideshow-img">
            </div>
            <div class="mySlides">
                <img src="https://thumbs.dreamstime.com/b/end-year-sale-banner-template-design-198914480.jpg" alt="Slide 3" class="slideshow-img">
            </div>
        </div>
    </div>
    <footer class="footer">
        &copy; 2023 FASHION & FUSION
    </footer>
</body>
</html>
