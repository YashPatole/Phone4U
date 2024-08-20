<?php

include_once 'includes/functions.ini.php';
if (!empty($_POST)) {
    // die(print_r($_POST));
    $id = sanitizeData($_POST['id']);

    $query = "SELECT * FROM phone join score on phone.phone_id = score.phone_id join specification on phone.phone_id = specification.phone_id join review on phone.phone_id = review.phone_id join brand on brand.id = phone.brand_id where phone.phone_id = $id";
    // dd($query);
    $row = db_query($query)->fetch_all(MYSQLI_ASSOC)[0];
    // dd(print_r($row));

    $proQuery = "SELECT * FROM pro where phone_id = $id";

    $proRows = db_query($proQuery)->fetch_all(MYSQLI_ASSOC);
    // dd($proRows);

    $conQuery = "SELECT * FROM con where phone_id = $id";

    $conRows = db_query($conQuery)->fetch_all(MYSQLI_ASSOC);

    $buyLinkQuery = "SELECT buy_link_url from buy_link where phone_id = $id";
    $buyLinkRows = db_query($buyLinkQuery)->fetch_all(MYSQLI_ASSOC);
}

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- SEO Meta Tags -->
    <meta name="description" content="Aria is a business focused HTML landing page template built with 
    Bootstrap to help you create lead generation websites for companies and their services.">
    <meta name="author" content="Inovatik">
    <!-- OG Meta Tags to improve the way the post looks when you share the page on LinkedIn, Facebook, 
Google+ -->
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
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,600&display=swap&
            subset=latin-ext" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/fontawesome-all.css" rel="stylesheet">
    <link href="css/swiper.css" rel="stylesheet">
    <link href="css/magnific-popup.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="portfolio.css">
    <link rel="stylesheet" href="css/owl-carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl-carousel/owl.theme.default.min.css">
    <!-- Materializze CSS -->
    <!-- Compiled and minified CSS -->
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/
materialize.min.css"> -->
    <!-- FONT AWESOME -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.
css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/
CuL7qxO8w==" crossorigin="anonymous" />
    <!-- Favicon  -->
    <!-- <link rel="icon" href="images/logo-tab-mini.jpg"> -->
</head>

<body data-spy="scroll" data-target=".fixed-top" id="portfolio">

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
                    <a class="nav-link page-scroll" href="index.php?#header">HOME <span class="sr-only">
                            (current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="index.php?#intro">INTRO</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="index.php?#news">TECHQUICKIE</a>
                </li>

                <!-- Dropdown Menu -->
                <li class="nav-item dropdown">
                    <a class="nav-link  page-scroll" href="index.php?#about" id="navbarDropdown" role="button" aria-haspopup="true" aria-expanded="false">ABOUT</a>
                </li>
                <!-- end of dropdown menu -->
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
    </nav> <!-- end of navbar -->
    <!-- end of navbar -->

    <!--Portfolio Section-->

    <div class="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-4 text-center phone-image-and-specifications">
                    <div class="portfolio-phone-img">
                        <img src="./images/<?= $row['phone_image_name'] ?>" alt="" class="img-responsive">
                    </div>
                    <div class="col-12 phone-price-and-buy-link">
                        <div class="row">
                            <div class="col-6">
                                <h3 class="phone-name"><?= $row['phone_name'] ?></h3>
                            </div>
                            <div class="col-6">
                                <h3 class="phone-price">₹<?= $row['phone_price_char'] ?></h3>
                            </div>
                            <?php
                            foreach ($buyLinkRows as $buyLinkRow) {
                            ?>
                                <div class="col-6">

                                    <a href="<?= $buyLinkRow['buy_link_url'] ?>" class="buy-link pull-right"> <img src=<?php if ((str_contains($buyLinkRow['buy_link_url'], "amazon"))) {
                                                                                                                            echo "images/amazon-logo.png";
                                                                                                                        } else if (str_contains($buyLinkRow['buy_link_url'], "flipkart")) {
                                                                                                                            echo "images/flipkart-logo.png";
                                                                                                                        } else if (str_contains($buyLinkRow['buy_link_url'], "realme")) {
                                                                                                                            echo "images/realme-logo.png";
                                                                                                                        } else if (str_contains($buyLinkRow['buy_link_url'], 'oneplus')) {
                                                                                                                            echo "images/oneplus-logo.png";
                                                                                                                        } ?>> </a>
                                    <!-- <a href="" class="phone-buy-link"><img src="images/amazon-logo.png" alt="" class="img-fluid"></a> -->
                                </div>
                            <?php
                            }
                            ?>
                        </div>
                    </div>
                    <div class="table-responsive specs">
                        <table class="table">

                            <thead>
                                <tr>
                                    <th class="text-center table-heading" colspan="2">SPECIFICATIONS</th>
                                </tr>

                            </thead>
                            <tbody>
                                <tr>
                                    <th>Display</th>
                                    <td> <?= $row['display_spec'] ?></td>
                                </tr>
                                <tr>
                                    <th>Memory</th>
                                    <td><?= $row['memory_spec'] ?></td>
                                </tr>
                                <tr>
                                    <th>Camera</th>
                                    <td><?= $row['camera_spec'] ?></td>
                                </tr>
                                <tr>
                                    <th>Battery and Charging</th>
                                    <td><?= $row['battery_life_spec'] ?> </td>
                                </tr>
                                <tr>
                                    <th>Processor</th>
                                    <td><?= $row['processor_spec'] ?></td>
                                </tr>
                                <tr>
                                    <th>Warranty</th>
                                    <td><?= $row['warranty_spec'] ?></td>
                                </tr>
                            </tbody>

                        </table>
                    </div>

                </div>

                <div class="col-8 phone-review-in-detail">
                    <div class="row">
                        <div class="portfolio-phone-details">
                            <div class="phone-review">
                                <ul class="phone-review-list">
                                    <li class="phone-review-list-item">
                                        <div class="phone-review-list-item-img text-center"><img src="images/<?= $row['battery_life'] ?>.png" class="img-fluid " width="64px" /></div>
                                        <h6>Battery Life</h6>
                                    </li>
                                    <li class="phone-review-list-item">
                                        <div class="phone-review-list-item-img text-center"><img src="images/<?= $row['build_quality'] ?>.png" class="img-fluid " width="64px" /></div>
                                        <h6>Build Quality</h6>
                                    </li>
                                    <li class="phone-review-list-item">
                                        <div class="phone-review-list-item-img text-center"><img src="images/<?= $row['camera'] ?>.png" class="img-fluid " width="64px" /></div>
                                        <h6>Camera</h6>
                                    </li>
                                    <li class="phone-review-list-item">
                                        <div class="phone-review-list-item-img text-center"><img src="images/<?= $row['performance'] ?>.png" class="img-fluid " width="64px" /></div>
                                        <h6>Performance</h6>
                                    </li>
                                    <li class="phone-review-list-item">
                                        <div class="phone-review-list-item-img text-center"><img src="images/<?= $row['software'] ?>.png" class="img-fluid " width="64px" /></div>
                                        <h6>Software</h6>
                                    </li>
                                    <li class="phone-review-list-item">
                                        <div class="phone-review-list-item-img text-center"><img src="images/<?= $row['display'] ?>.png" class="img-fluid " width="64px" /></div>
                                        <h6>Display</h6>
                                    </li>
                                </ul>
                            </div>
                            <div class="phone-pros-cons">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="phone-pros">
                                            <h2 class="pros-heading"><i class="far fa-thumbs-up"></i> Pros</h2>
                                            <ul class="pros-list">
                                                <?php
                                                foreach ($proRows as $proRow) {
                                                ?>
                                                    <li class="pros-list-item">
                                                        <p><?= $proRow['pro_content'] ?></p>
                                                    </li>
                                                <?php
                                                }
                                                ?>
                                                <!-- <li class="pros-list-item">
                                                    <p>Good Performance</p>
                                                </li>
                                                <li class="pros-list-item">
                                                    <p>Good Performance</p>
                                                </li>
                                                <li class="pros-list-item">
                                                    <p>Good Performance</p>
                                                </li>
                                                <li class="pros-list-item">
                                                    <p>Good Performance</p>
                                                </li> -->
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="phone-cons">
                                            <h2 class="cons-heading"><i class="far fa-thumbs-down"></i> Cons</h2>
                                            <ul class="pros-list">
                                                <?php
                                                foreach ($conRows as $conRow) {
                                                ?>
                                                    <li class="pros-list-item">
                                                        <p><?= $conRow['con_content'] ?></p>
                                                    </li>
                                                <?php
                                                }
                                                ?>
                                                <!-- <li class="pros-list-item">
                                                    <p>Good Performance</p>
                                                </li>
                                                <li class="pros-list-item">
                                                    <p>Good Performance</p>
                                                </li>
                                                <li class="pros-list-item">
                                                    <p>Good Performance</p>
                                                </li>
                                                <li class="pros-list-item">
                                                    <p>Good Performance</p>
                                                </li> -->
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="phone-short-review">
                                <h3>Our Review:</h3>
                                <p><?= $row['review_content'] ?></p>
                                <h3>Brand Review:</h3>
                                <p><?= $row['brand_review']; ?></p>
                                <iframe width="100%" height="400px" src="<?= $row['youtube_link'] ?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen class="video-review"></iframe>
                                <!-- <iframe width="560" height="315" src="https://youtube.com/embed/aE1QVP5fHcE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--/Portfolio Section-->

    <!-- Footer -->
    <section class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="text-container about contact-us">
                        <h4>Contact Us</h4>

                        <p><a href="mailto:siddhantsinghsidhu@gmail.com" style="color: white; 
text-decoration: none;"><i class="fas fa-envelope"></i> phone4u.
                                support@gmail.com</a></p>
                        <p><i class="fab fa fa-phone"></i> +91-1820018200</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="text-container about">
                        <h4>Locate Us</h4>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3771.
0091642486427!2d72.8433023141962!3d19.
063334687095203!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.
1!3m3!1m2!1s0x3be7c9194dfe93a5%3A0x4210c68941bc43e4!2sGovernment%20Polytechnic%
mbai!5e0!3m2!1sen!2sin!4v1612705380507!5m2!1sen!2sin" width="100%" height="300" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
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
    <script src="js/jquery.easing.min.js"></script>
    <!-- jQuery Easing for smooth scrolling between 
    anchors -->
    <script src="js/swiper.min.js"></script> <!-- Swiper for image and text sliders -->
    <script src="js/jquery.magnific-popup.js"></script> <!-- Magnific Popup for lightboxes -->
    <script src="js/morphext.min.js"></script> <!-- Morphtext rotating text in the header -->
    <script src="js/isotope.pkgd.min.js"></script> <!-- Isotope for filter -->
    <script src="js/validator.min.js"></script>
    <!-- Validator.js - Bootstrap plugin that validates 
    forms -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js
    script>Materialize JS -->
    <script src="js/scripts.js"></script> <!-- Custom scripts -->
    <script src="js/navbar.js"></script>

</body>

</html>