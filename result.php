<?php
include_once 'includes/functions.ini.php';
if (!empty($_POST)) {

    // dd(print_r($_POST));

    $keys = array_values($_POST);

    $firstPreference = ucwords(str_replace("_", " ", $keys[0]));
    $secondPreference = ucwords(str_replace("_", " ", $keys[1]));
    $thirdPreference = ucwords(str_replace("_", " ", $keys[2]));


    if (
        strcmp($firstPreference, $secondPreference) == 0 || strcmp($firstPreference, $thirdPreference) == 0 ||
        strcmp($secondPreference, $thirdPreference) == 0
    ) {
        header("Location: form.php?error=1");
    }


    $first_preference = $_POST['first_preference'];
    $second_preference = $_POST['second_preference'];
    $third_preference = $_POST['third_preference'];
    $brand = ucwords($_POST['brand']);
    $budget = explode("-", str_replace(",", "", str_replace("₹", "", $_POST['budget'])));

    $startPrice = $budget[0];
    $endPrice = $budget[1];

    if (strcasecmp($brand, "None") === 0) {
        $brandId = 'brand_id';
    } else {
        $brandQuery = "Select id from brand where brand_name = '$brand' ";
        $brandId = db_query($brandQuery)->fetch_assoc()['id'];
    }

    if (isset($_POST['lowerThanBudget'])) {
        $startPrice = $startPrice - 3000;
        $endPrice = $endPrice + 3000;
        $lowerThanBudget = $_POST['lowerThanBudget'];
        $query = "SELECT * FROM phone JOIN score on phone.phone_id = score.phone_id WHERE $first_preference >= 8 and $second_preference >= 6 and $third_preference >= 4  and brand_id = $brandId and phone_price BETWEEN ($startPrice) and ( $endPrice )  ORDER BY average DESC";
    } else {
        $query = "SELECT * FROM phone JOIN score on phone.phone_id = score.phone_id WHERE $first_preference >= 8 and $second_preference >= 6 and $third_preference >= 4  and brand_id = $brandId and phone_price BETWEEN $startPrice and $endPrice  ORDER BY average DESC";
    }
    // dd($query);

    $rows = db_query($query)->fetch_all(MYSQLI_ASSOC);
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
    <link rel="stylesheet" href="result.css">
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

<body data-spy="scroll" data-target=".fixed-top" id="result">

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
        <!-- <a class="navbar-brand logo-text page-scroll" href="index.php">Aria</a> -->

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
                    <a class="nav-link page-scroll" href="index.php?#header">HOME <span class="sr-only">(current)</span></a>
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

    <!--Result Grid-->
    <div id="result">
        <div class="container">
            <div class="result-sets">
                <?php
                foreach ($rows as $row) {
                ?>
                    <div class="result-set">
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="result-set-img">
                                    <img src="images/<?= $row['phone_image_name'] ?>" alt="" class="img-responsive">

                                </div>
                                <h4 class="phone-name text-center"><?= $row['phone_name'] ?></h4>
                            </div>
                            <div class="col-lg-8">
                                <!-- <a href="portfolio.php/?id=?>" class="phone-name-and-slight-details">
                                    <h3></h3>
                                </a> -->
                                <form action="portfolio.php" method="POST" target="_blank">
                                    <input type="hidden" name="id" value="<?= $row['phone_id']  ?>">
                                    <input type="submit" class="phone-name-and-slight-details" value="<?= $row['portfolio_name'] ?>">
                                </form>
                                <h4 class="phone-batterylife-rating"><?= $firstPreference; ?> : <?= $row["$first_preference"] ?>/10</h4>
                                <h4 class="phone-batterylife-rating"><?= $secondPreference; ?> : <?= $row["$second_preference"]  ?>/10</h4>
                                <h4 class="phone-batterylife-rating"><?= $thirdPreference; ?> : <?= $row["$third_preference"] ?>/10</h4>
                                <h3 class="phone-price" style="color:#B12704;">₹ <?= $row['phone_price_char'] ?> </h3>
                                <?php
                                // dd($row['id']);
                                $id = $row['phone_id'];
                                $buyLinkQuery = "SELECT buy_link_url from buy_link where phone_id = $id";
                                $buyLinkRows = db_query($buyLinkQuery)->fetch_all(MYSQLI_ASSOC);
                                foreach ($buyLinkRows as $buyLinkRow) {
                                ?>

                                    <a href="<?= $buyLinkRow['buy_link_url'] ?>" class=" buy-link pull-right"> <img src=<?php if ((str_contains($buyLinkRow['buy_link_url'], "amazon"))) {
                                                                                                                            echo "images/amazon-logo.png";
                                                                                                                        } else if (str_contains($buyLinkRow['buy_link_url'], "flipkart")) {
                                                                                                                            echo "images/flipkart-logo.png";
                                                                                                                        } else if (str_contains($buyLinkRow['buy_link_url'], "realme")) {
                                                                                                                            echo "images/realme-logo.png";
                                                                                                                        } else if (str_contains($buyLinkRow['buy_link_url'], 'oneplus')) {
                                                                                                                            echo "images/oneplus-logo.png";
                                                                                                                        } else if (str_contains($buyLinkRow['buy_link_url'], 'iqoo')) {
                                                                                                                            echo "images/iqoo-logo.jpg";
                                                                                                                        }  ?>> </a>
                                <?php
                                }
                                ?>
                            </div>
                        </div>
                    </div>
                <?php
                }
                ?>
                <!-- <div class=" result-set">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="result-set-img">
                                <img src="images/redminote9.webp" alt="" class="img-responsive">

                            </div>
                            <h4 class="phone-name text-center">Redmi Note 9</h4>
                        </div>
                        <div class="col-lg-8">
                            <h3 class="phone-name-and-slight-details">Redmi Note 9 (Pebble Grey, 4GB RAM 64GB Storage) - 48MP Quad Camera & Full HD+ Display</h2>
                                <h5 class="phone-batterylife-rating">Battery-Life : 8/10</h5>
                                <h5 class="phone-batterylife-rating">Battery-Life : 8/10</h5>
                                <h5 class="phone-batterylife-rating">Battery-Life : 8/10</h5>
                                <h3 class="phone-price" style="color:#B12704;">₹10,999</h3>
                                <a href="" class="amazon-link buy-link"><img src="images/amazon-logo.png" alt=""></a>
                                <a href="" class="flipkart-link buy-link pull-right"><img src="images/flipkart-logo-39906.png" alt=""></a>
                        </div>
                    </div>
                </div>
                <div class="result-set">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="result-set-img">
                                <img src="images/galaxym31.webp" alt="" class="img-responsive">
                            </div>
                            <h4 class="phone-name text-center">Samsung Galaxy M31</h4>
                        </div>
                        <div class="col-lg-8">
                            <h3 class="phone-name-and-slight-details">Samsung Galaxy M31 (Space Black, 6GB RAM, 128GB Storage)</h2>
                                <h4 class="phone-batterylife-rating">Battery-Life : 8/10</h4>
                                <h4 class="phone-batterylife-rating">Battery-Life : 8/10</h4>
                                <h4 class="phone-batterylife-rating">Battery-Life : 8/10</h4>
                                <h3 class="phone-price" style="color:#B12704;">₹16,499 </h3>
                                <a href="" class="amazon-link buy-link"><img src="images/amazon-logo.png" alt=""></a>
                                <a href="" class="flipkart-link buy-link pull-right"><img src="images/flipkart-logo-39906.png" alt=""></a>
                        </div>
                    </div>
                </div>
                <div class="result-set">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="result-set-img">
                                <img src="images/redmi9a.webp" alt="" class="img-responsive">

                            </div>
                            <h4 class="phone-name text-center">Redmi 9A</h4>
                        </div>
                        <div class="col-lg-8">
                            <h3 class="phone-name-and-slight-details">Redmi 9A (Nature Green, 2GB Ram, 32GB Storage) | 2GHz Octa-core Helio G25 Processor</h2>
                                <h4 class="phone-batterylife-rating">Battery-Life - 8/10</h4>
                                <h4 class="phone-batterylife-rating">Battery-Life - 8/10</h4>
                                <h4 class="phone-batterylife-rating">Battery-Life - 8/10</h4>
                                <h3 class="phone-price" style="color:#B12704;">₹6,799 </h3>
                        </div>
                    </div>
                </div> -->
            </div>
        </div>

    </div>

    <!--/Result Grid-->

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
    <script src="js/scripts.js"></script> <!-- Custom scripts -->
    <script src="js/js/result.js"></script>

</body>

</html>