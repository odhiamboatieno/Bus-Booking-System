<?php
session_start();
include('includes/config.php');
error_reporting(0);
?>

<!DOCTYPE HTML>
<html lang="en">
<head>
	<!-- Start slider header section -->
	<link rel="stylesheet" type="text/css" href="slider_files/style.css" />
	<script type="text/javascript" src="slider_files/jquery.js"></script>
	<!-- End Wslider header section -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<title>Limo Transport Sacco | Car Listing</title>
<!--Bootstrap -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
<!--Custome Style -->
<link rel="stylesheet" href="assets/css/style.css" type="text/css">
<!--OWL Carousel slider-->
<link rel="stylesheet" href="assets/css/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="assets/css/owl.transitions.css" type="text/css">
<!--slick-slider -->
<link href="assets/css/slick.css" rel="stylesheet">
<!--bootstrap-slider -->
<link href="assets/css/bootstrap-slider.min.css" rel="stylesheet">
<!--FontAwesome Font Style -->
<link href="assets/css/font-awesome.min.css" rel="stylesheet">

<!-- SWITCHER -->
		<link rel="stylesheet" id="switcher-css" type="text/css" href="assets/switcher/css/switcher.css" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/red.css" title="red" media="all" data-default-color="true" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/orange.css" title="orange" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/blue.css" title="blue" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/pink.css" title="pink" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/green.css" title="green" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/purple.css" title="purple" media="all" />

<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/images/favicon-icon/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/images/favicon-icon/apple-touch-icon-114-precomposed.html">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/images/favicon-icon/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="assets/images/favicon-icon/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="assets/images/favicon-icon/favicon.png">
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
</head>
<body>

<!-- Start Switcher -->
<?php include('includes/colorswitcher.php');?>
<!-- /Switcher -->

<!--Header-->
<?php include('includes/header.php');?>
<!-- /Header -->

<!-- Start slider BODY section -->
<div id="wowslider-container1">
<div class="ws_images"><ul>
		<li><img src="slider_images/images/bannerimage1.jpg" alt="banner-image-1" title="The Best Car deals" id="wows1_0"/></li>
		<li><img src="slider_images/images/bannerimage.jpg" alt="banner-image" title="Only at Neo Car Rentals" id="wows1_1"/></li>
		<li><img src="slider_images/images/blog_img4.jpg" alt="blog_img4" title="Good Pricing" id="wows1_2"/></li>
		<li><img src="slider_images/images/blog_img2.jpg" alt="blog_img2" title="Quality Services" id="wows1_3"/></li>
		<li><img src="slider_images/images/listing_img4.jpg" alt="listing_img4" title="Better Customer Care" id="wows1_4"/></li>
		<li><img src="slider_images/images/listing_img3.jpg" alt="listing_img3" title="Easy Service Procedures" id="wows1_5"/></li>
		<li><a href="http://odhiammbotomm.epizy.com"><img src="slider_images/images/listing_img2.jpg" alt="slider jquery" title="Premium Services" id="wows1_6"/></a></li>
		<li><img src="slider_images/images/support_faq_bg.jpg" alt="support_faq_bg" title="support_faq_bg" id="wows1_7"/></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title="banner-image-1"><span><img src="slider_images/tooltips/bannerimage1.jpg" alt="banner-image-1"/>1</span></a>
		<a href="#" title="banner-image"><span><img src="slider_images/tooltips/bannerimage.jpg" alt="banner-image"/>2</span></a>
		<a href="#" title="blog_img4"><span><img src="slider_images/tooltips/blog_img4.jpg" alt="blog_img4"/>3</span></a>
		<a href="#" title="blog_img2"><span><img src="slider_images/tooltips/blog_img2.jpg" alt="blog_img2"/>4</span></a>
		<a href="#" title="listing_img4"><span><img src="slider_images/tooltips/listing_img4.jpg" alt="listing_img4"/>5</span></a>
		<a href="#" title="listing_img3"><span><img src="slider_images/tooltips/listing_img3.jpg" alt="listing_img3"/>6</span></a>
		<a href="#" title="listing_img2"><span><img src="slider_images/tooltips/listing_img2.jpg" alt="listing_img2"/>7</span></a>
		<a href="#" title="support_faq_bg"><span><img src="slider_images/tooltips/support_faq_bg.jpg" alt="support_faq_bg"/>8</span></a>
	</div></div>
<div class="ws_shadow"></div>
</div>
<script type="text/javascript" src="slider_files/wowslider.js"></script>
<script type="text/javascript" src="slider_files/script.js"></script>
<!-- End WOWSlider.com BODY section -->

<!--Listing-->
<section class="listing-page">
  <div class="container">
    <div class="row">
      <div class="col-md-9 col-md-push-3">
        <div class="result-sorting-wrapper">
          <div class="sorting-count">
<?php
//Query for Listing count
$sql = "SELECT id from cyrus_Buses_table";
$query = $dbh -> prepare($sql);
$query->bindParam(':vhid',$vhid, PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=$query->rowCount();
?>
<p><span><?php echo htmlentities($cnt);?> Listings</span></p>
</div>
</div>

<?php $sql = "SELECT cyrus_Buses_table.*,cyrus_Busestarting_Points_table.Starting_Point,cyrus_Busestarting_Points_table.id as bid  from cyrus_Buses_table join cyrus_Busestarting_Points_table on cyrus_Busestarting_Points_table.id=cyrus_Buses_table.BusesStarting_Point";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{  ?>
        <div class="product-listing-m gray-bg">
          <div class="product-listing-img"><img src="admin/img/Busimages/<?php echo htmlentities($result->Vimage1);?>" class="img-responsive" alt="Image" /> </a>
          </div>
          <div class="product-listing-content">
            <h5><a href="vehical-details.php?vhid=<?php echo htmlentities($result->id);?>"><?php echo htmlentities($result->Starting_Point);?> , <?php echo htmlentities($result->BusesTitle);?></a></h5>
            <p class="list-price">Ksh<?php echo htmlentities($result->PricePerPerson);?> Per Person</p>
            <ul>
              <li><i class="fa fa-user" aria-hidden="true"></i><?php echo htmlentities($result->SeatingCapacity);?> seats</li>
              <li><i class="fa fa-calendar" aria-hidden="true"></i><?php echo htmlentities($result->ModelYear);?> model</li>
              <li><i class="fa fa-bus" aria-hidden="true"></i><?php echo htmlentities($result->Starting_Point);?> -<?php echo htmlentities($result->Busestop);?></li>
            </ul>
            <a href="vehical-details.php?vhid=<?php echo htmlentities($result->id);?>" class="btn">View Details <span class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
          </div>
        </div>
      <?php }} ?>
         </div>

      <!--Side-Bar-->
      <aside class="col-md-3 col-md-pull-9">
        <div class="sidebar_widget">
          <div class="widget_heading">
            <h5><i class="fa fa-filter" aria-hidden="true"></i> Find Bus en' Route </h5>
          </div>
          <div class="sidebar_filter">
            <form action="search-carresult.php" method="post">
              <div class="form-group select">
                <select class="form-control" name="Starting_Point">
                  <option>Select Starting_Point</option>

                  <?php $sql = "SELECT * from  cyrus_Busestarting_Points_table ";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{       ?>
<option value="<?php echo htmlentities($result->id);?>"><?php echo htmlentities($result->Starting_Point);?></option>
<?php }} ?>

                </select>
              </div>
              <div class="form-group select">
                <select class="form-control" name="Busestop">
									<?php $sql = "SELECT * from  cyrus_Busestarting_Points_table ";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{       ?>
<option value="<?php echo htmlentities($result->id);?>"><?php echo htmlentities($result->Starting_Point);?></option>
<?php }} ?>
                </select>
              </div>

              <div class="form-group">
                <button type="submit" class="btn btn-block"><i class="fa fa-search" aria-hidden="true"></i> Search For a Bus</button>
              </div>
            </form>
          </div>
        </div>

        <div class="sidebar_widget">
          <div class="widget_heading">
            <h5><i class="fa fa-car" aria-hidden="true"></i> Recent Buses</h5>
          </div>
          <div class="recent_addedcars">
            <ul>
<?php $sql = "SELECT cyrus_Buses_table.*,cyrus_Busestarting_Points_table.Starting_Point,cyrus_Busestarting_Points_table.id as bid  from cyrus_Buses_table join cyrus_Busestarting_Points_table on cyrus_Busestarting_Points_table.id=cyrus_Buses_table.BusesStarting_Point order by id desc limit 4";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{  ?>

              <li class="gray-bg">
                <div class="recent_post_img"> <a href="vehical-details.php?vhid=<?php echo htmlentities($result->id);?>"><img src="admin/img/Busimages/<?php echo htmlentities($result->Vimage1);?>" alt="image"></a> </div>
                <div class="recent_post_title"> <a href="vehical-details.php?vhid=<?php echo htmlentities($result->id);?>"><?php echo htmlentities($result->Starting_Point);?> , <?php echo htmlentities($result->BusesTitle);?></a>
                  <p class="widget_price">Ksh<?php echo htmlentities($result->PricePerPerson);?> Per Person</p>
                </div>
              </li>
              <?php }} ?>

            </ul>
          </div>
        </div>
      </aside>
      <!--/Side-Bar-->
    </div>
  </div>
</section>
<!-- /Listing-->

<!--Footer -->
<?php include('includes/footer.php');?>
<!-- /Footer-->

<!--Back to top-->
<div id="back-top" class="back-top"> <a href="#top"><i class="fa fa-angle-up" aria-hidden="true"></i> </a> </div>
<!--/Back to top-->

<!--Login-Form -->
<?php include('includes/login.php');?>
<!--/Login-Form -->

<!--Register-Form -->
<?php include('includes/registration.php');?>

<!--/Register-Form -->

<!--Forgot-password-Form -->
<?php include('includes/forgotpassword.php');?>

<!-- Scripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/interface.js"></script>
<!--Switcher-->
<script src="assets/switcher/js/switcher.js"></script>
<!--bootstrap-slider-JS-->
<script src="assets/js/bootstrap-slider.min.js"></script>
<!--Slider-JS-->
<script src="assets/js/slick.min.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>

</body>
</html>
