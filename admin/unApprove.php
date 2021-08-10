<?php 
require '../server.php';
  

  if (!isset($_SESSION['id'])) {
  	$_SESSION['msg'] = "You must log in first";
  	header('location:../login.php');
  }
  if (isset($_POST['logout'])) {
  	session_destroy();
  	unset($_SESSION['id']);
  	header("location:../login.php");
  }
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>All unapproved hostels</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

    <link href="assets/css/table-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<section id="container" >
<?php include("includes/header.php");?>
<?php include("includes/sidebar.php");?>

  <section id="main-content">
    <section class="wrapper">
      <h3><i class="fa fa-angle-right"></i>All UnApproved Hostel</h3>
		  	<div class="row mt">
			  		<div class="col-lg-12">
                      <div class="content-panel">
                          <section id="unseen">
                            <table class="table table-bordered table-striped table-condensed">
                              <thead>
                              <tr style="text-align: center">
                                  <th style="text-align: center">id</th>
                                  <th style="text-align: center">Image</th>
                                  <th style="text-align: center">Property Detail</th>
                                  <th style="text-align: center">Date Uploaded</th>
                                  <th style="text-align: center">Action</th>

                                  
                              </tr>
                              </thead>
                              <tbody>
                                <div class="manage-list__item">
                                    <tr class="manage-list__item-container">
                                        <td>1</td>
                                        <td class="manage-list__item-img">
                                            <img src="../hostel 2.jfif" alt="" class="listing__img" width="150" height="150">
                                        </td>
                                        
                                        <td class="manage-list__item-detail">
                                            <h4 class="blog"><a href="#">Hostel name</a></h4>
                                            <p class="listing__location"><i class="fa fa-building"></i> Hostel address</p>
                                            <p class="listing__price"><i class="fa fa-money"></i> #Price</p>
                                            <p class="listing__price"><i class="fa fa-list"></i> rules</p>
                                            <p class="listing__price"><i class="fa fa-list"></i> room type</p>
                                            <p class="property__details-item"><span class="property__details-item--cat">Services offered:</span></p>
                                        </td>

                                        <td class="manage-list__expire-date">July 29, 2021</td>

                                        <form action="unApprove.php" method="post">
                                        <td class="manage-list__action">
                                            <input type="submit" value="Approve" name="approve" class="btn btn-success btn-sm" >
                                            <!-- <a href="#" class="btn btn-success btn-sm">Approve</a> -->
            	                        </td>
                                        </form>

                                    </tr>

                                </div>
                              </tbody>
                          </table>
                          </section>
                  </div><!-- /content-panel -->
               </div><!-- /col-lg-4 -->			
		  	</div><!-- /row -->
</section><! --/wrapper -->
</section><!-- /MAIN CONTENT -->
<?php include("includes/footer.php");?>
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>

    <!--script for this page-->
    

  </body>
</html>

