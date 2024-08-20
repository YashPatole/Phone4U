<?php
//  = E_ALL;
include_once '../includes/functions.ini.php';
$error_flag = false;
if (isset($_POST['action'])) {

    $phone_name = sanitizeData($_POST['phone_name']);
    $phone_price = sanitizeData($_POST['phone_price']);
    $portfolio_name = sanitizeData($_POST['portfolio_name']);
    $brand_name = sanitizeData($_POST['phone_brand_name']);
    $pro_content = sanitizeData($_POST['pro_content']);
    $con_content = sanitizeData($_POST['con_content']);
    $review_content = sanitizeData($_POST['review_content']);
    $brand_review = sanitizeData($_POST['company_review']);
    $youtube_link = sanitizeData($_POST['youtube_link']);
    $battery_life_score = sanitizeData($_POST['battery_life_score']);
    $camera_score = sanitizeData($_POST['camera_score']);
    $build_quality_score = sanitizeData($_POST['build_quality_score']);
    $software_score = sanitizeData($_POST['software_score']);
    $performance_score = sanitizeData($_POST['performance_score']);
    $display_score = sanitizeData($_POST['display_score']);
    $_5g_score = sanitizeData($_POST['5g_score']);
    $battery_life_spec = sanitizeData($_POST['battery_life_spec']);
    $software_spec = sanitizeData($_POST['software_spec']);
    $memory_spec = sanitizeData($_POST['memory_spec']);
    $processor_spec = sanitizeData($_POST['processor_spec']);
    $camera_spec = sanitizeData($_POST['camera_spec']);
    $display_spec = sanitizeData($_POST['display_spec']);
    $warranty_spec = sanitizeData($_POST['warranty_spec']);
    $buy_link_url = sanitizeData($_POST['buy_link_url']);


    $query = "SELECT id from brand where brand_name = '$brand_name'";

    $brand_id = db_query($query)->fetch_all()[0][0];

    // die(var_dump($brand_id));

    $phone_price_in_number = str_replace(",", "", $phone_price);

    $phone_image_name = strtolower($phone_name);

    $column_list = "phone_name,phone_price,phone_price_char,portfolio_name,brand_id";

    $value_list = "'$phone_name', '$phone_price_in_number', '$phone_price' , '$portfolio_name', $brand_id";

    // die(var_dump($value_list));

    if ($_FILES['pic']['name']) {

        // die(print_r($_FILES));

        $file_name = $_FILES['pic']['name'];
        $tmp_file_location = $_FILES['pic']['tmp_name'];

        // $type = $_FILES['pic']['type'];
        // $file_size = $_FILES['pic']['size'];

        //Extracting the extension
        $temp = explode('.', $file_name);
        $extension = strtolower(end($temp));

        $phone_image_name .= "." . $extension;

        // move_uploaded_file(source_path,destination_path)
        $moved = move_uploaded_file($tmp_file_location, "tmp/images/$phone_image_name");
        if ($moved) {

            // die("File Uploaded");
        } else {
            print_r($moved);
            die("Sorry, there was an error uploading your file.");
        }
        $column_list .= ", phone_image_name";
        $value_list .= ", '$phone_image_name'";

        $query = "INSERT INTO phone($column_list) VALUES ($value_list)";
        $result = db_query($query);
        if (!$result) {
            $error_flag = true;
            die(db_error());
        } else {


            $phone_id = db_select("SELECT phone_id from phone where phone_name =  '$phone_name'")[0];

            // die(var_dump($phone_id[0]));

            $pros = explode(',', $pro_content);
            // die(print_r($pros));
            // foreach
            foreach ($pros as $pro) {

                $pro_query = "INSERT INTO pro (pro_content,phone_id) VALUES ('$pro',$phone_id[0])";
                // die($pro_query);

                $pro_result = db_query($pro_query);
            }
            if ($pro_result) {
                // echo "Inserted into pro";


                $cons = explode(',', $con_content);
                foreach ($cons as $con) {

                    $con_query = "INSERT INTO con (con_content,phone_id) VALUES ('$con',$phone_id[0])";
                    // die($pro_query);

                    $con_result = db_query($con_query);
                }
                if ($con_query) {

                    // echo "Inserted into con";

                    $review_query = "INSERT INTO review (review_content,youtube_link,phone_id) VALUES ('$review_content','$youtube_link',$phone_id[0])";

                    $review_result = db_query($review_query);

                    // $brand_query = "INSERT INTO brand (brand_name, brand_review) VALUES ('$brand_name', '$brand_review')";
                    // $brand_result = db_query($brand_query);

                    if ($review_result) {

                        // echo "Inserted into review";
                        $average_score = ($battery_life_score + $camera_score + $build_quality_score + $software_score + $performance_score + $display_score) / 6;
                        $score_query = "INSERT INTO score (battery_life, camera, build_quality, software, performance,display,5g,average,phone_id) VALUES ($battery_life_score, $camera_score,$build_quality_score,$software_score,$performance_score,$display_score,$_5g_score, $average_score ,$phone_id[0])";

                        $score_result = db_query($score_query);

                        if ($score_result) {

                            $spec_query = "INSERT INTO specification (battery_life_spec, camera_spec, memory_spec, software_spec, processor_spec, display_spec , warranty_spec ,phone_id) VALUES ('$battery_life_spec', '$camera_spec', '$memory_spec', '$software_spec', '$processor_spec', '$display_spec', '$warranty_spec', $phone_id[0])";

                            $spec_result = db_query($spec_query);
                            echo (db_error());

                            if ($spec_result) {


                                $buy_link_urls = explode(",", $buy_link_url);


                                foreach ($buy_link_urls as $buy_link) {

                                    $buy_link_query = "INSERT INTO buy_link (buy_link_url,phone_id) VALUES ('$buy_link',$phone_id[0])";

                                    $buy_link_result = db_query($buy_link_query);
                                    // if(! $buy_link_result){
                                    //     break;
                                    // }
                                }

                                if ($buy_link_query) {
                                    echo "Inserted into everything!";
                                }
                            }
                        } else {
                            echo "Problem inserting into spec";
                            echo (db_error());
                        }
                    } else {
                        echo "There was a problem inserting into review";
                        die(db_error());
                    }
                } else {
                    echo "There was problem inserting into con table";
                    die(db_error());
                }
            } else {
                echo "There was a problem inserting into pro";
                die(db_error());
            }
        }
    }
}
?>















<!DOCTYPE html>
<html>

<head>
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css" media="screen,projection" />

    <!--Import Csutom CSS-->
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Add Contact</title>
</head>

<body>
    <!--NAVIGATION BAR-->
    <nav>
        <div class="nav-wrapper">
            <!-- Dropdown Structure -->
            <ul id="dropdown1" class="dropdown-content">
                <li><a href="#!">Profile</a></li>
                <li><a href="#!">Signout</a></li>
            </ul>
            <nav>
                <div class="nav-wrapper">
                    <a href="#!" class="brand-logo center">Contact Info</a>
                    <ul class="right hide-on-med-and-down">

                        <!-- Dropdown Trigger -->
                        <li><a class="dropdown-trigger" href="#!" data-target="dropdown1"><i class="material-icons right">more_vert</i></a></li>
                    </ul>
                </div>
            </nav>
            <a href="#" data-target="nav-mobile" class="sidenav-trigger"><i class="material-icons">menu</i></a>
        </div>
    </nav>
    <!--/NAVIGATION BAR-->
    <div class="container">
        <div class="row mt50">
            <h2>Add New Phone</h2>
        </div>
        <!-- <?php
                // if($error_flag):
                ?>
        <div class="row">
            <div class="materialert error">
                    <div class="material-icons">error_outline</div>
                    There was some error while inserting records. If this occurs again please contact your administrator!
                    <button type="button" class="close-alert">×</button>
            </div>
        </div>
<?php
// endif;
?> -->
        <div class="row">
            <form class="col s12 formValidate" action="<?= $_SERVER['PHP_SELF']; ?>" id="add-contact-form" method="POST" enctype="multipart/form-data">
                <div class="row mb10">
                    <div class="input-field col s6">
                        <input id="phone_name" name="phone_name" required type="text" class="validate" data-error=".phone_name_error">
                        <label for="first_name">Phone Name</label>
                        <div class="phone_name_error "></div>
                    </div>
                    <div class="input-field col s6">
                        <input id="phone_price" name="phone_price" required type="text" class="validate" data-error=".last_name_error">
                        <label for="last_name">Phone Price(with comma)</label>
                        <div class="phone_price_error "></div>
                    </div>
                </div>
                <div class="row mb10">
                    <div class="input-field col s12">
                        <input id="portfolio_name" name="portfolio_name" required type="text" class="validate" data-error=".email_error">
                        <label for="portfolio_name">Phone Portfolio Name</label>
                        <div class="portfolio_name_error "></div>
                    </div>
                </div>
                <div class="row mb10">
                    <div class="input-field col s12">
                        <textarea name="pro_content" id="pros" cols="30" rows="30"></textarea>
                        <label for="pros">Pros (comma seperated)</label>
                        <div class="pros_error"></div>
                    </div>
                </div>
                <div class="row mb10">
                    <div class="input-field col s12">
                        <textarea name="con_content" id="cons" cols="30" rows="30"></textarea>
                        <label for="cons">Cons</label>
                        <div class="cons_error"></div>
                    </div>
                </div>
                <div class="row mb10">
                    <div class="input-field col s12">
                        <textarea name="review_content" id="review_content" cols="30" rows="30"></textarea>
                        <label for="review_content">Phone Review</label>
                        <div class="review_content_error"></div>
                    </div>
                </div>
                <div class="row mb10">
                    <div class="input-field col s12">
                        <textarea name="company_review" id="company_review" cols="30" rows="30"></textarea>
                        <label for="company_review">Company Review</label>
                        <div class="company_review_error"></div>
                    </div>
                </div>
                <div class="row mb10">
                    <div class="input-field col s12">
                        <textarea id="youtube_link" name="youtube_link" class="materialize-textarea" data-error=".youtube_link_error"></textarea>
                        <label for="youtube_link">Yt Link</label>
                        <div class="youtube_link_error "></div>
                    </div>
                </div>
                <div class="row mb10">
                    <div class="input-field col s4">
                        <input required type="number" name="battery_life_score" id="battery_life_score">
                        <label for="battery_life_score">Battery Life Score</label>
                        <div class="battery_life_error "></div>
                    </div>
                    <div class="input-field col s4">
                        <input required type="number" name="camera_score" id="camera_score">
                        <label for="camera_score">Camera Score</label>
                        <div class="camera_error "></div>
                    </div>
                    <div class="input-field col s4">
                        <input required type="number" name="build_quality_score" id="build_quality_score">
                        <label for="build_quality_score">Build Quality Score</label>
                        <div class="build_quality_error"></div>
                    </div>

                </div>
                <div class="row mb-10">
                    <div class="input-field col s3">
                        <input required type="number" name="software_score" id="software_score">
                        <label for="software_score">Software Score</label>
                        <div class="build_quality_error"></div>
                    </div>
                    <div class="input field col s3">
                        <input required type="number" name="performance_score" id="performance_score">
                        <label for="performance_score">Performance Score</label>
                        <div class="performance_error"></div>
                    </div>
                    <div class="input field col s3">
                        <input required type="number" name="display_score" id="display_score">
                        <label for="display_score">Display Score</label>
                        <div class="display_error"></div>
                    </div>
                    <div class="input field col s3">
                        <input required type="number" name="5g_score" id="5g_score">
                        <label for="5g_score">5g Score</label>
                        <div class="display_error"></div>
                    </div>
                </div>
                <div class="row mb-10">
                    <div class="input field col s4">
                        <input required type="text" name="battery_life_spec" id="battery_life_spec">
                        <label for="battery_life_spec">Battery Life Spec</label>
                        <div class="battery_life_error"></div>
                    </div>
                    <div class="input field col s4">
                        <input required type="text" name="processor_spec" id="processor_spec">
                        <label for="processor_spec">Processor Spec</label>
                        <div class="processor_spec_error"></div>
                    </div>
                    <div class="input field col s4">
                        <input required type="text" name="software_spec" id="software_spec">
                        <label for="software_spec">Software Spec</label>
                        <div class="software_spec_error"></div>
                    </div>
                </div>
                <div class="row mb-10">
                    <div class="input field col s3">
                        <input required type="text" name="memory_spec" id="memory_spec">
                        <label for="memory_spec">Memory Spec</label>
                        <div class="memory_spec_error"></div>
                    </div>
                    <div class="input field col s3">
                        <input required type="text" name="camera_spec" id="camera_spec">
                        <label for="camera_spec">Camera Spec</label>
                        <div class="camera_spec_error"></div>
                    </div>
                    <div class="input field col s3">
                        <input required type="text" name="display_spec" id="display_spec">
                        <label for="display_spec">Display Spec</label>
                        <div class="display_spec_error"></div>
                    </div>
                    <div class="input field col s3">
                        <input required type="text" name="warranty_spec" id="warranty_spec">
                        <label for="warranty_spec">Warranty Spec</label>
                        <div class="warranty_spec_error"></div>
                    </div>
                </div>
                <div class="row mb-10">
                    <div class="input field col s6">
                        <input required type="text" name="buy_link_url" id="buy_link_url">
                        <label for="buy_link_url">Buy Link Url</label>
                        <div class="buy_link_error"></div>
                    </div>
                    <div class="input field col s6">
                        <input required type="text" name="phone_brand_name" id="phone_brand_name">
                        <label for="phone_brand_name">Phone Brand Name</label>
                        <div class="phone_brand_error"></div>
                    </div>
                </div>
                <div class="row mb10">
                    <div class="file-field input-field col s12">
                        <div class="btn">
                            <span>Image</span>
                            <input required type="file" name="pic" id="pic" data-error=".pic_error">
                        </div>
                        <div class="file-path-wrapper">
                            <input class="file-path validate" required type="text" placeholder="Upload Your Image">
                        </div>
                        <div class="pic_error "></div>
                    </div>
                </div>
                <button class="btn waves-effect waves-light right" required type="submit" name="action">Submit
                    <i class="material-icons right">send</i>
                </button>
            </form>
        </div>
    </div>
    <footer class="page-footer p0">
        <div class="footer-copyright ">
            <div class="container">
                <p class="center-align">Phone 4 U</p>
            </div>
        </div>
    </footer>
    <!--JQuery Library-->
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <!--JavaScript at end of body for optimized loading-->
    <script type="text/javascript" src="js/materialize.min.js"></script>
    <!--JQuery Validation Plugin-->
    <script src="vendors/jquery-validation/validation.min.js" type="text/javascript"></script>
    <script src="vendors/jquery-validation/additional-methods.min.js" type="text/javascript"></script>
    <!--Include Page Level Scripts-->
    <script src="js/pages/add-contact.js"></script>
    <!--Custom JS-->
    <script src="js/custom.js" type="text/javascript"></script>
</body>

</html>