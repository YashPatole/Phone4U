<?php

include_once 'includes/functions.ini.php';

$query = "SELECT * FROM techquickie";

$rows = db_query($query)->fetch_all(MYSQLI_ASSOC);

// dd($rows);

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
    <link rel="stylesheet" href="css/animate/animate.css">
    <link rel="stylesheet" href="css/owl-carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl-carousel/owl.theme.default.min.css">
    <link href="css/styles.css" rel="stylesheet">
    <!-- Materializze CSS -->
    <!-- Compiled and minified CSS -->
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css"> -->

    <!-- FONT AWESOME -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />

    <!-- Favicon  -->
    <link rel="icon" href="images/icon.ico">
</head>

<body data-spy="scroll" data-target=".fixed-top">

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
        <!-- Text Logo - Use this if you don't have a graphic logo -->
        <!-- <a class="navbar-brand logo-text page-scroll" href="index.html">Aria</a> -->

        <!-- Image Logo -->
        <a class="navbar-brand logo-image" href="index.html"><img src="images/logo-final-white.png" alt="alternative"></a>

        <!-- Mobile Menu Toggle Button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-awesome fas fa-bars"></span>
            <span class="navbar-toggler-awesome fas fa-times"></span>
        </button>
        <!-- end of mobile menu toggle button -->

        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="#header">HOME <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="#intro">INTRO</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="#news">TECHQUICKIE</a>
                </li>

                <!-- Dropdown Menu -->
                <li class="nav-item dropdown">
                    <a class="nav-link  page-scroll" href="#about" id="navbarDropdown" role="button" aria-haspopup="true" aria-expanded="false">ABOUT</a>
                </li>
                <!-- end of dropdown menu -->
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="form.php">GET STARTED<span class="sr-only">(current)</span></a>
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
    </nav> <!-- end of navbar -->
    <!-- end of navbar -->


    <!-- Header -->
    <section id="header" class="header">
        <div class="header-content">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="text-container wow zoomIn">
                            <h1>SMARTPHONE <span id="js-rotating">TIPS,REVIEWS,SPECS,NEWS</span></h1>
                            <p class="p-heading p-large">WE'VE GOT IT ALL!</p>
                            <a class="btn-solid-lg page-scroll" href="form.php">GET STARTED</a>
                        </div>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of header-content -->
    </section> <!-- end of header -->
    <!-- end of header -->


    <!-- Intro -->
    <section id="intro" class="basic-1">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 wow fadeInLeft" data-wow-delay=".3s">
                    <div class="text-container">
                        <div class="section-title">INTRO</div>
                        <h2>We Offer Some Of The Best Smartphone Reviews In Town</h2>
                        <p>With multiple smartphones launching every hour of the day, finding a perfect phone for oneself has become a challenging task.
                            <span class="section-imp">Phone4U - The Perfect Phone Finder is the best solution for the problem</span>
                        </p>
                        <p class="testimonial-text">Providing the least confusing and the most efficient criteria for selecting your next phone</p>
                    </div> <!-- end of text-container -->
                </div> <!-- end of col -->
                <div class="col-lg-7 wow fadeInRight" data-wow-delay=".3s">
                    <div class="image-container">
                        <video src="images/videoplayback.mp4" type="video/mp4" autoplay loop muted width="100%" height="100%"></video>
                    </div> <!-- end of image-container -->
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </section> <!-- end of basic-1 -->
    <!-- end of intro -->


    <!-- Description -->
    <section class="cards-1">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">

                    <!-- Card -->
                    <div class="card feature-card wow fadeInLeft" data-wow-delay=".3s">
                        <span class="fa-stack feature-icons">
                            <span class="hexagon"></span>
                            <i class="fas fa-balance-scale  fa-stack-1x"></i>
                        </span>
                        <div class="card-body">
                            <h4 class="card-title">Unbiased Reviews</h4>
                            <p>Unlike retailers who will only sell you phones which are good for them and not for you!</p>
                        </div>
                    </div>
                    <!-- end of card -->

                    <!-- Card -->
                    <div class="card feature-card wow fadeInDown" data-wow-delay=".3s">
                        <span class="fa-stack feature-icons">
                            <span class="hexagon"></span>
                            <i class="fas fa-chart-bar fa-stack-1x"></i>
                        </span>
                        <div class="card-body">
                            <h4 class="card-title">Unrivalled Analysis</h4>
                            <p>Exceptional Smartphone Analysis By Top-Quality Reviewers</p>
                        </div>
                    </div>
                    <!-- end of card -->

                    <!-- Card -->
                    <div class="card feature-card wow fadeInRight" data-wow-delay=".3s">
                        <span class="fa-stack feature-icons">
                            <span class="hexagon"></span>
                            <i class="fas fa-laugh-beam fa-stack-1x"></i>
                        </span>
                        <div class="card-body">
                            <h4 class="card-title">User Friendly</h4>
                            <p>We have designed this website by keeping the end user in our mind at every step</p>
                        </div>
                    </div>
                    <!-- end of card -->

                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </section> <!-- end of cards-1 -->
    <!-- end of description -->


    <div id="news" class="basic-2">
        <div class="container">
            <div class="row">
                <div class="col-md-12 wow fadeInDown" data-wow-delay=".3s">
                    <h2>TechQuickie</h2>
                    <p class="p-heading">Stay Up To Date With Latest Tech News</p>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
            <div class="row">
                <div class="col-md-12">
                    <div id="blog-cards" class="owl-carousel owl-theme wow fadeInDown <responsiveClass>-<breakpoint>" data-wow-delay=".3s">
                        <?php
                        foreach ($rows as $row) {
                        ?>
                            <div class="blog-card">
                                <div class="blog-card-img">
                                    <img src="./images/<?= $row['article_image_name'] ?>" alt="" class="img-responsive">
                                </div>
                                <div class="blog-card-content">
                                    <h5 class="card-title"><?= $row['article_title'] ?></h5>
                                    <span class="line"></span>
                                    <p>
                                        <a class="text-muted read-more-btn" data-toggle="collapse" href="#collapseExample<?= $row['article_id'] ?>" role=" button" aria-expanded="false" aria-controls="collapseExample">Read More...</a>
                                    </p>
                                    <div class="collapse" id="collapseExample<?= $row['article_id'] ?>" ?>
                                        <div class="">
                                            <?= $row['article_content'] ?>
                                        </div>
                                    </div>
                                </div>

                                <div class="blog-card-author">
                                    <h6 class="pull-right"><i class="fa fa-calendar"></i><?= date('D-M-y', strtotime($row['article_date'])) ?></h6>
                                </div>
                            </div>
                        <?php
                        }
                        ?>
                    </div>
                </div>
            </div>

        </div>
        <!-- <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img class="d-block w-100" src="..." alt="First slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="..." alt="Second slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="..." alt="Third slide">
              </div>
            </div>
          </div> -->
    </div>

    <!-- Team -->
    <!-- end of team -->


    <!-- About -->
    <section id="about" class="counter">
        <div class="container ">
            <div class="row wow fadeInRight" data-wow-delay=".3s">
                <div class="col-lg-5 col-xl-6">
                    <div class="image-container">
                        <img class="img-fluid" src="images/about-us-2.png" alt="alternative">
                    </div> <!-- end of image-container -->
                </div> <!-- end of col -->
                <div class="col-lg-7 col-xl-6">
                    <div class="text-container">
                        <div class="section-title">ABOUT</div>
                        <h2>We're Passionate About Providing 100% Customer Satisfaction</h2>
                        <p>Our goal is to be the one stop destination for all kinds of smartphone buyers.</p>
                        <ul class="list-unstyled li-space-lg">
                            <li class="media">
                                <i class="fas fa-square"></i>
                                <div class="media-body">Everything we recommend is best for you</div>
                            </li>
                            <li class="media">
                                <i class="fas fa-square"></i>
                                <div class="media-body">Our users are always our first priority</div>
                            </li>
                        </ul>

                    </div> <!-- end of text-container -->
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </section> <!-- end of counter -->
    <!-- end of about -->


    <!-- Contact -->
    <!--Form-->
    <!-- Button trigger modal -->
    <!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
    Launch demo modal
  </button> -->

    <!-- Footer -->
    <section class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="text-container about contact-us">
                        <h4>Contact Us</h4>

                        <p><a href="mailto:siddhantsinghsidhu@gmail.com" style="color: white; text-decoration: none;"><i class="fas fa-envelope"></i> phone4u.support@gmail.com</a></p>
                        <p><i class="fab fa fa-phone"></i> +91-1820018200</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="text-container about">
                        <h4>Locate Us</h4>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3771.0091642486427!2d72.8433023141962!3d19.063334687095203!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c9194dfe93a5%3A0x4210c68941bc43e4!2sGovernment%20Polytechnic%20Mumbai!5e0!3m2!1sen!2sin!4v1612705380507!5m2!1sen!2sin" width="100%" height="300" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                    </div> <!-- end of text-container -->
                </div> <!-- end of col -->
                <div class="col-md-4">
                    <div class="text-container footer-reach-us">
                        <h4>Follow Us At</h4>
                        <ul class="list-unstyled li-space-lg footer-list">
                            <li>
                                <a class="white" href="#your-link"><i class="fab fa-facebook"></i></a>
                            </li>
                            <li>
                                <a class="white" href="#your-link"><i class="fab fa-instagram"></i></a>
                            </li>
                            <li class="media">
                                <a class="white" href="#your-link"><i class="fab fa-twitter"></i></a>
                            </li>
                        </ul>
                    </div> <!-- end of text-container -->
                </div> <!-- end of col -->

            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </section> <!-- end of footer -->
    <!-- end of footer -->


    <!-- Copyright -->
    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p class="p-small">Copyright © 2021 <a href="http://gpmumbai.ac.in" style="text-decoration: underline;">Phone4U</a></p>
                </div> <!-- end of col -->
            </div> <!-- enf of row -->
        </div> <!-- end of container -->
    </div> <!-- end of copyright -->
    <!-- end of copyright -->


    <!-- Scripts -->

    <script src="js/jquery.min.js"></script> <!-- jQuery for Bootstrap's JavaScript plugins -->
    <script src="js/popper.min.js"></script> <!-- Popper tooltip library for Bootstrap -->
    <script src="js/bootstrap.min.js"></script> <!-- Bootstrap framework -->
    <script src="js/jquery.easing.min.js"></script> <!-- jQuery Easing for smooth scrolling between anchors -->
    <script src="js/swiper.min.js"></script> <!-- Swiper for image and text sliders -->
    <script src="js/jquery.magnific-popup.js"></script> <!-- Magnific Popup for lightboxes -->
    <script src="js/morphext.min.js"></script> <!-- Morphtext rotating text in the header -->
    <script src="js/isotope.pkgd.min.js"></script> <!-- Isotope for filter -->
    <script src="js/validator.min.js"></script> <!-- Validator.js - Bootstrap plugin that validates forms -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>Materialize JS -->
    <script src="js/wow/wow.min.js"></script>
    <script src="js/scripts.js"></script> <!-- Custom scripts -->
    <script src="js/navbar.js"></script>

    <script>
        new WOW().init();
    </script>
</body>

</html>