<?php
/*---------------------------------------------------+
| HoloCMS - Website and Content Management System
+----------------------------------------------------+
| Copyright © 2008 Meth0d
+----------------------------------------------------+
| HoloCMS is provided "as is" and comes without
| warrenty of any kind.
+---------------------------------------------------*/

include('core.php');
include('includes/session.php');

$check = mysql_query("SELECT noob FROM users WHERE id='".$my_id."'");
$row = mysql_fetch_assoc($check);

if($row['noob'] != 0) {
header("location:../index.php");

?>

<html>
<head>
  <title>Redirecting...</title>
  <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  <style type="text/css">body { background-color: #e3e3db; text-align: center; font: 11px Verdana, Arial, Helvetica, sans-serif; } a { color: #fc6204; }</style>
</head>
<body>
</body>
</html>
<?php
}else{


$pagename = $name;
$pageid = "3";

// Header for minimail

include('templates/community/subheader.php');
include('templates/community/header.php');
?>

<div id="container">
	<div id="content" style="position: relative" class="clearfix">
	<div id="content" style="position: relative" class="clearfix">
    <div id="column1" class="column">
				<div class="habblet-container ">
						<div class="cbb clearfix lightgreen ">

							<h2 class="title">Choisis ton appart pour avoir des mobis gratuitement!
							</h2>
						<div id="roomselection-welcome-intro" class="box-content">
    Choisis ton appart pour avoir des mobis gratuitement tous les jours !
</div>
<ul class="roomselection-welcome clearfix">
	<li class="odd">
	<a class="roomselection-select new-button" href="client.php?createRoom=0" target="client" onclick="return RoomSelectionHabblet.create(this, 0);"><b>Je choisis sa</b><i></i></a>
	</li>
	<li class="even">
	<a class="roomselection-select new-button" href="client.php?createRoom=1" target="client" onclick="return RoomSelectionHabblet.create(this, 1);"><b>Je choisis sa</b><i></i></a>
	</li>
	<li class="odd">
	<a class="roomselection-select new-button" href="client.php?createRoom=2" target="client" onclick="return RoomSelectionHabblet.create(this, 2);"><b>Je choisis sa</b><i></i></a>
	</li>
	<li class="even">
	<a class="roomselection-select new-button" href="client.php?createRoom=3" target="client" onclick="return RoomSelectionHabblet.create(this, 3);"><b>Je choisis sa</b><i></i></a>
	</li>
	<li class="odd">
	<a class="roomselection-select new-button" href="client.php?createRoom=4" target="client" onclick="return RoomSelectionHabblet.create(this, 4);"><b>Je choisis sa</b><i></i></a>
	</li>
	<li class="even">
	<a class="roomselection-select new-button" href="client.php?createRoom=5" target="client" onclick="return RoomSelectionHabblet.create(this, 5);"><b>Je choisis sa</b><i></i></a>
	</li>
</ul>



					</div>
				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>

</div>
<div id="column2" class="column">
				<div class="habblet-container ">

						<div class="cbb clearfix lightgreen">

<div class="welcome-intro clearfix">
	<img alt="Prince-Cutie9" src="http://www.habbo.co.uk/habbo-imaging/avatarimage?figure=<?php echo $myrow['figure']; ?>&size=b&action=crr=667&direction=3&head_direction=3&gesture=srp
" width="64" height="110" class="welcome-habbo" />
    <div id="welcome-intro-welcome-user"  >Bienvenue <?php echo $name; ?>!</div>
    <div id="welcome-intro-welcome-party" class="box-content">Quand tu choisira l'appart,  tu ira directement dessus! Dans 8jours tu aura les mobis <?php echo $sitename; ?>!</div>
</div>

</div>



				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>

				<div class="habblet-container ">





				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>

				<div class="habblet-container ">





				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>

				<div class="habblet-container ">





				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>

				<div class="habblet-container ">
						<div class="cbb clearfix green ">

							<h2 class="title">Tu as shockwave
							</h2>
						<div class="welcome-shockwave clearfix box-content">
    <div id="welcome-shockwave-text">Pour ouvrir <?php echo $sitename; ?> tu dois t&eacute;l&eacute;charger shockwave, pas de panique c'est facile!</div>
    <div id="welcome-shockwave-logo"><img src="web-gallery/v2/images/welcome/shockwave.gif" alt="shockwave" /></div>
</div>


					</div>
				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>

</div>
<script type="text/javascript">
HabboView.run();
</script>
<div id="column3" class="column">
				<div class="habblet-container ">

						<div class="ad-container">
<br>
</div>



				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>

</div>

<!--[if lt IE 7]>
<script type="text/javascript">
Pngfix.doPngImageFix();
</script>
<![endif]-->
<?php

include('templates/community/footer.php');
}
?>