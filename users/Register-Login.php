
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>The Student Buddy System</title>

  <!-- Bootstrap Core CSS -->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">

  <!-- Fonts -->
  <link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <link href="assets/css/animate.css" rel="stylesheet" />
  <!-- Squad theme CSS -->
  <link href="assets/css/style.css" rel="stylesheet">
  <link href="assets/color/default.css" rel="stylesheet">


</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
  <!-- Preloader -->
  <div id="preloader">
    <div id="load"></div>
  </div>

  <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav">

          <li <?php echo $page_title=="Index" ? "class='active'" : ""; ?>>
              <a href="index.php">Home</a>
          </li>
      </ul>

      <?php
      // check if users / student was logged in
      // if user was logged in, show "Edit Profile", "Orders" and "Logout" options
      if(isset($_SESSION['logged_in']) && $_SESSION['logged_in']==true && $_SESSION['access_level']=='Student'){
          ?>
          <ul class="nav navbar-nav">

              <li <?php echo $page_title=="Index" ? "class='active'" : ""; ?>>
                  <a href="student">The Buddies ChatRoom</a>
              </li>
          </ul>
          <ul class="nav navbar-nav pull-right">
              <li <?php echo $page_title=="Edit Profile" || $page_title=="Change Password" ? "class='active'" : ""; ?>>
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                      <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                      &nbsp;&nbsp;<?php echo $_SESSION['firstname']; ?>
                      &nbsp;&nbsp;<span class="caret"></span>
                  </a>
                  <ul class="dropdown-menu" role="menu">
                      <li <?php echo $page_title=="Edit Profile" ? "class='active'" : ""; ?>>
                          <a href="<?php echo $home_url; ?>edit_profile.php">Edit Profile</a>
                      </li>
                      <li <?php echo $page_title=="Change Password" ? "class='active'" : ""; ?>>
                          <a href="<?php echo $home_url; ?>change_password.php">Change Password</a>
                      </li>
                      <li><a href="<?php echo $home_url; ?>logout.php">Logout</a></li>
                  </ul>
              </li>
          </ul>
          <?php
      }

      // if user was not logged in, show the "login" and "sign up" options
      else{
          ?>
          <ul class="nav navbar-nav pull-right">
              <li <?php echo $page_title=="Login" ? "class='active'" : ""; ?>>
                  <a href="<?php echo $home_url; ?>login">
                      <span class="glyphicon glyphicon-log-in"></span> Log In
                  </a>
              </li>

              <li <?php echo $page_title=="Register" ? "class='active'" : ""; ?>>
                  <a href="<?php echo $home_url; ?>register">
                      <span class="glyphicon glyphicon-check"></span> Sign Up
                  </a>
              </li>
          </ul>
          <?php
      }
      ?>
  </div ><!--/.nav-collapse -->
      <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
  </nav>


  <!-- Section: contact -->
  <section id="contact" class="home-section text-center">
    <div class="heading-contact">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-lg-offset-2">
            <div class="wow bounceInDown" data-wow-delay="0.4s">
              <div class="section-heading">
                <h2>Connect with us</h2>

                  <i class="fa fa-2x fa-angle-down"></i>

                          <address>
                              <strong>We're on social networks</strong><br>
                                  <p class="social-facebook"><a href="https://www.facebook.com/" target="_blank"><i class="fa fa-facebook"></i></a></p>
                                  <p class="social-twitter"><a href="https://twitter.com/" target="_blank"><i class="fa fa-twitter"></i></a></p>
                                  <p class="social-dribble"><a href="#" target="_blank"><i class="fa fa-dribbble"></i></a></p>
                                  <p class="social-google"><a href="#" target="_blank"><i class="fa fa-google-plus"></i></a></p>
                          </address>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container">

      <div class="row">
        <div class="col-lg-2 col-lg-offset-5">
          <hr class="marginbot-50">
        </div>
      </div>



      </div>

    </div>
  </section>
  <!-- /Section: contact -->

  <footer>
    <div class="container">
      <div class="row">
        <div class="col-md-12 col-lg-12">
          <div class="wow shake" data-wow-delay="0.4s">
            <div class="page-scroll marginbot-30">
              <a href="#intro" id="totop" class="btn btn-circle">
							<i class="fa fa-angle-double-up animated"></i>
						</a>
            </div>
          </div>
          <p>&copy;2019- The Student Buddies System. All rights reserved.</p>
          <div class="credits">

            Submitted for <a href="http://campusmoodle.rgu.ac.uk/mod/assign/view.php?id=3241815">CMM007 Coursework Part II</a>
          </div>
        </div>
      </div>
    </div>
  </footer>

  <!-- Core JavaScript Files -->
  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>
  <script src="assets/js/jquery.easing.min.js"></script>
  <script src="assets/js/jquery.scrollTo.js"></script>
  <script src="assets/js/wow.min.js"></script>
  <!-- Custom Theme JavaScript -->
  <script src="assets/js/custom.js"></script>
  <script src="assets/contactform/contactform.js"></script>

</body>

</html>
