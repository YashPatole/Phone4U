<?php

include_once 'includes/functions.ini.php';

$query = "SELECT * FROM score";

$rows = db_query($query)->fetch_all(MYSQLI_ASSOC);
// // dd(print_r($rows));

foreach ($rows as $row) {

    $average_score = ($row['battery_life'] + $row['camera'] + $row['performance'] + $row['software'] + $row['build_quality'] + $row['display']) / 6;

    //     //     // dd($average_score);
    $id = $row['phone_id'];
    //     // $_5g_score = ($row['5g'] * 1.5) > 10 ? 10 : ($row['5g'] * 1.5);
    //     // dd($_5g_score);
    //     // $query = "UPDATE score set 5g = $_5g_score WHERE phone_id = $id";
    $averageQuery = "Update score set average = $average_score where phone_id = $id";
    $result = db_query($averageQuery);
    //     // dd($query);
}




?>





<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- SEO Meta Tags -->
    <meta name="description" content="Aria is a business focused HTML landing page template built with Bootstrap to help you create lead generation websites for companies and their services.">
    <meta name="author" content="Inovatik">

    <!-- OG Meta Tags to improve the way the post looks when you share the page on LinkedIn, Facebook, Google+ -->
    <meta property="og:site_name" content="" /> <!-- website name -->
    <meta property="og:site" content="" /> <!-- website link -->
    <meta property="og:title" content="" /> <!-- title shown in the actual shared post -->
    <meta property="og:description" content="" /> <!-- description shown in the actual shared post -->
    <meta property="og:image" content="" /> <!-- image link, make sure it's jpg -->
    <meta property="og:url" content="" /> <!-- where do you want your post to link to -->
    <meta property="og:type" content="article" />

    <!-- Website Title -->
    <title>Phone4U - The Perfect Phone Finder</title>

    <!-- Styles -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:500,700&display=swap&subset=latin-ext" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,600&display=swap&subset=latin-ext" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/fontawesome-all.css" rel="stylesheet">
    <link href="css/swiper.css" rel="stylesheet">
    <link href="css/magnific-popup.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="css/form.css">
    <link rel="stylesheet" href="css/owl-carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl-carousel/owl.theme.default.min.css">
    <!-- Materializze CSS -->
    <!-- Compiled and minified CSS -->
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css"> -->

    <!-- FONT AWESOME -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />

    <!-- Favicon  -->
    <!-- <link rel="icon" href="images/logo-tab-mini.jpg"> -->
</head>

<body data-spy="scroll" data-target=".fixed-top" id="form">

    <!-- Preloader -->
    <section class="spinner-wrapper">
        <div class="spinner">
            <div class="bounce1"></div>
            <div class="bounce2"></div>
            <div class="bounce3"></div>
        </div>
    </section>
    <!-- end of preloader -->


    <!-- Navbar -->
    <nav class="navbar navbar-expand-md navbar-dark navbar-custom fixed-top">
        <!--Text Logo - Use this if you don't have a graphic logo -->
        <!-- <a class="navbar-brand logo-text page-scroll" href="index.html">Aria</a> -->

        <!--Image Logo -->
        <a class="navbar-brand logo-image" href="index.php"><img src="images/logo-final-white.png" alt="alternative"></a>

        <!-- Mobile Menu Toggle Button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-awesome fas fa-bars"></span>
            <span class="navbar-toggler-awesome fas fa-times"></span>
        </button>
        <!-- end of mobile menu toggle button -->

        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="index.php?#header">HOME <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="index.php?#intro">INTRO</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="index.php?#news">TECHQUICKIE</a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link  page-scroll" href="index.php?#about" id="navbarDropdown" role="button" aria-haspopup="true" aria-expanded="false">ABOUT</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link page-scroll" href="index.php?#form">GET STRARTED<span class="sr-only">(current)</span></a>
                </li>
            </ul>
            <span class="nav-item social-icons">
                <span class="fa-stack">
                    <a href="#your-link">
                        <span class="hexagon"></span>
                        <i class="fab fa-facebook-f fa-stack-1x" style="left: -3px;"></i>
                    </a>
                </span>
                <span class="fa-stack">
                    <a href="#your-link">
                        <span class="hexagon"></span>
                        <i class="fab fa-twitter fa-stack-1x " style="left: -3px;"></i>
                    </a>
                </span>
            </span>
        </div>
    </nav>
    <!--end of navbar -->
    <!-- end of navbar -->

    <div class="container">
        <div class="form-title">
            <h2>Just a Few Steps now...</h2>
        </div>

        <form id="survey-form" action="result.php" method="POST">
            <!-- <div class="form-group"> -->
            <div class="form-group">
                <label for="firstPriority" class="form-question">What would you prefer to be the standout feature of your phone?</label>
                <select class="form-control form-select" id="firstPriority" placeholder="" style="width: 100%;" name="first_preference">
                    <option>Pick One...</option>
                    <option value="battery_life">Battery Life</option>
                    <option value="camera">Camera</option>
                    <option value="performance">Performance</option>
                    <option value="software">Software</option>
                    <option value="build_quality">Build Quality</option>
                    <option value="display">Display</option>
                    <option value="5g">5G</option>
                </select>
            </div>
            <div class="form-group">
                <label for="firstPriority" class="form-question">What would you describe as the second priority?</label>
                <select class="form-control" id="firstPriority" placeholder="" style="width: 100%;" name="second_preference">
                    <option>Pick One...</option>
                    <option value="battery_life">Battery Life</option>
                    <option value="camera">Camera</option>
                    <option value="performance">Performance</option>
                    <option value="software">Software</option>
                    <option value="build_quality">Build Quality</option>
                    <option value="display">Display</option>
                    <option value="5g">5G</option>
                </select>
            </div>
            <div class="form-group">
                <label for="firstPriority" class="form-question">What would you describe as the third priority?</label>
                <select class="form-control" id="firstPriority" placeholder="" style="width: 100%;" name="third_preference">
                    <option>Pick One...</option>
                    <option value="battery_life">Battery Life</option>
                    <option value="camera">Camera</option>
                    <option value="performance">Performance</option>
                    <option value="software">Software</option>
                    <option value="build_quality">Build Quality</option>
                    <option value="display">Display</option>
                    <option value="5g">5G</option>
                </select>
            </div>
            <div class="form-group">
                <label for="firstPriority" class="form-question">Preferred Brands(if any)</label>
                <select class="form-control" id="firstPriority" placeholder="" style="width: 100%;" name="brand">
                    <option>None</option>
                    <option>Apple</option>
                    <option>Asus</option>
                    <option>Google</option>
                    <option>Infinix</option>
                    <option value="Iqoo">IQOO</option>
                    <option>Lenovo</option>
                    <option>LG</option>
                    <option>Micromax</option>
                    <option>Motorola</option>
                    <option>Nokia</option>
                    <option value="Oneplus">OnePlus</option>
                    <option>Oppo</option>
                    <option>Poco</option>
                    <option>Realme</option>
                    <option>Samsung</option>
                    <option>Sony</option>
                    <option>Vivo</option>
                    <option>Xiaomi</option>
                </select>
            </div>
            <div class="form-group">
                <label for="range" class="form-question">Budget Range</label>
                <select class="form-control" style="width: 100%;" name="budget">
                    <option>Under &#8377;5,000</option>
                    <option>&#8377;5,000 - 10,000</option>
                    <option>&#8377;10,000 - 15,000</option>
                    <option>&#8377;15,000 - 20,000</option>
                    <option>&#8377;20,000 - 25,000</option>
                    <option>&#8377;25,000 - 30,000</option>
                    <option>&#8377;30,000 - 40,000</option>
                    <option>&#8377;40,000 - 60,000</option>
                    <option>&#8377;60,000 - 1,50,000</option>
                </select>
            </div>
            <div class="form-group">
                <label for="check" class="lbl-chkbx"><input type="checkbox" id="check" name="lowerThanBudget" class="">My budget is flexible</label>
            </div>
            <!-- </div> -->

            <div class="form-group">
                <div class="row">
                    <div class="col-7">
                        <button type="submit" id="submit" class="submit-button">
                            Submit
                        </button>

                    </div>
                    <div class="col-5">
                        <a href="" id='cancel' class="cancel-button btn">Cancel</a>
                    </div>
                </div>
            </div>
        </form>
    </div>
    <script src="js/jquery.min.js"></script> <!-- jQuery for Bootstrap's JavaScript plugins -->
    <script src="js/scripts.js"></script> <!-- Custom scripts -->
    <script src="js/js/result.js"></script>
    <script src="js/jquery-validation/validation.min.js" type="text/javascript"></script>
    <script src="js/jquery-validation/additional-methods.min.js" type="text/javascript"></script>
    <script src="js/navbar.js"></script>

    <script>

    </script>

</body>

</html>