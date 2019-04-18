<!-- navbar -->
<div class="navbar navbar-default navbar-static-top" role="navigation">
	<div class="container">

		<div class="navbar-header">
			<!-- to enable navigation dropdown when viewed in mobile device -->
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			</button>


			<a class="navbar-brand" href="../index.html">The Student Buddies </a>
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
							<a href="edit_profile.php">Edit Profile</a>
						</li>
						<li <?php echo $page_title=="Change Password" ? "class='active'" : ""; ?>>
							<a href="change_password.php">Change Password</a>
						</li>
						<li><a href="logout.php">Logout</a></li>
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
					<a href="login.php"login>
						<span class="glyphicon glyphicon-log-in"></span> Log In
					</a>
				</li>

				<li <?php echo $page_title=="Register" ? "class='active'" : ""; ?>>
					<a href="register.php" register>
						<span class="glyphicon glyphicon-check"></span> Sign Up
					</a>
				</li>
			</ul>
			<?php
			}
			?>
		</div ><!--/.nav-collapse -->

	</div>
</div>
<!-- /navbar -->

<div class="wrapper">