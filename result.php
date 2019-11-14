<!DOCTYPE html>
<html>
<head>
	<title>Result Found</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">

	<link rel="stylesheet" type="text/css" href="style.css">

	<style>
		.result {
			margin-left: 10%; margin-right: 25%;margin-top: 12px;
		}
	</style>
</head>
<body>

	<div class="container-fluid">
		<form action="result.php" method="get">
			<div class="row" style="background: #f2f2f2">
				<div class="col-sm-1">
					<a href="index.php"><img src="img/search.jpg" height="60px"></a>
				</div>

				<div class="col-sm-6 ml-4">
					<div class="input-group">
						<input type="text" class="form-control" name="search">
						<span class="input-group-btn">
							<input class="btn btn-success" type="submit" name="search_button" value="Go!">
						</span>
					</div>
					
				</div>
			</div>
		</form>
	</div>

		
		<div class="result">
		<table>
			<tr>
				<?php
					mysql_connect("localhost", "root", "");
					mysql_select_db("search");
					if(isset($_GET['search_button']))
					{
						$search = $_GET['search'];
						if($search=="")
						{
							echo "<center><b>Please write something in search box!</b></center>";
							exit();
						}

						$sql = "select * from website where site_key like '%$search%' limit 0, 5";
						$rs = mysql_query($sql);
						if(mysql_num_rows($rs)<1)
						{
							echo "<center><h4><b>Oops no result found of related word!</b></h4></center>";
							exit();
						}
						echo "<font size='+1' color='#1a1aff'> Images for $search </font>";
						while ($row = mysql_fetch_array($rs))
						 {

							echo 	"<td>
										<table style='margin-top:10px'>
											<tr>
												<td>
													<a target='_blank' href='images.php?id=$search'>
													<img src='img/$row[5]' height='100px;'></a>
												</td>
											</tr>
										</table>
									</td>";
						}
					}
				?>
			</tr>
		</table>

			<?php

				echo "<a target='_blank' href='images.php?id=$search'><font size='+1' color='#1a1aff'>More Images for $search</font></a>";

				echo "<hr>";
				$sql1 = "select * from website where site_key like '%$search%'"; 
				$rs1 = mysql_query($sql1);

				while ($row1=mysql_fetch_array($rs1)) {
					echo "<a href='$row1[2]'><font size='4' color='#0000ff'> <b> $row1[1] </b></font></a><br>";
					echo "<font size='3' color='#006400'> $row1[2] </font><br>";
					echo "<font size='3' color='#000000'> $row1[4] </font><br><br>";
				}
			?>

			
		</div>




	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
</body>
</html>