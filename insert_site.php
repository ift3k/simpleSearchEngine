<DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
	<title>Search Engine</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
</head>
<body>

	<div class="container">
		<br>
		<center><b><h2 class="display-5">Insert your website.</h2></b></center>

		<form action="insert_site.php" method="post" enctype="multipart/form-data">
			<div class="form-group">
				<div class="row">
					<label class="col-sm-2" for="stitle">Site Title</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="stitle" name="s_title" placeholder="Enter the site title" required="">
					</div>
				</div>
			</div>

			<div class="form-group">
				<div class="row">
					<label class="col-sm-2" for="slink">Site Link</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="slink" name="s_link" placeholder="Enter the site link" required="">
					</div>
				</div>
			</div>

			<div class="form-group">
				<div class="row">
					<label class="col-sm-2" for="skey">Site Keywords</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="skey" name="s_key" placeholder="Enter the site keywords" required="">
					</div>
				</div>
			</div>

			<div class="form-group">
				<div class="row">
					<label class="col-sm-2" for="skey">Site Description</label>
					<div class="col-sm-10">
						<textarea class="form-control" id="sdes" name="s_des" placeholder="Site Description" required=""></textarea>
					</div>
				</div>
			</div>

			<div class="form-group">
				<div class="row">
					<label class="col-sm-2" for="simg">Site Image</label>
					<div class="col-sm-10">
						<input type="file" class="form-control" name="simg" required="">
					</div>
				</div>
			</div>

			<div class="form-group">
				
				<div class="row">
					<center>
					<input type="submit"  class="btn btn-outline-success" name="submit" value="Add Website">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="reset"  class="btn btn-outline-danger" name="cancel" value="Cancel Website">
					</center>
				</div>

			</div>
		</form>
	</div>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
</body>
</html>

<?php
	
	mysql_connect("localhost", "root", "");
	mysql_select_db("search");
	

	if(isset($_POST["submit"]))  		//
	{
		$s_title = addslashes($_POST["s_title"]);
		$s_link = addslashes($_POST["s_link"]);
		$s_key = addslashes($_POST["s_key"]);
		$s_des = addslashes($_POST["s_des"]);
		$_simg = addslashes($_FILES["simg"] ["name"]);

		if(move_uploaded_file($_FILES["simg"] ["tmp_name"], "img/" . $_FILES["simg"] ["name"]))
		{
			$sql = "insert into website(site_title, site_link, site_key, site_des, site_img) values('$s_title', '$s_link', '$s_key', '$s_des', '$_simg')";

			$rs = mysql_query($sql);
			if ($rs)
			{
				echo "<script> alert('Site uploaded successfully!') </script>";
			}
			else
			{
				echo "<script> alert('Uploading Failed!, please try again.') </script>";
			}
		}
	}
?>