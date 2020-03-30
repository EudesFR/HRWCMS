<?php
/*===================================================+
|| # HoloCMS - Website and Content Management System
|+===================================================+
|| # Copyright © 2008 Meth0d. All rights reserved.
|| # http://www.meth0d.org
|+===================================================+
|| # HoloCMS is provided "as is" and comes without
|| # warrenty of any kind. HoloCMS is free software!
|+===================================================*/

$allow_guests = true;

include('core.php');
include('includes/session.php');

$tmp = HoloText(getContent('mod_staff-enabled'), true);
if($tmp !== "1"){
	header("Location: index.php"); exit;
}

$pagename = "Les Staffs";
$pageid = "8";

include('templates/community/subheader.php');
include('templates/community/header.php');

?>

<div id="container">
	<div id="content">
		<div id="column1" class="column">
			<div class="habblet-container ">
				<div class="cbb clearfix blue">

					<h2 class="title">
						Information sur les rangs
					</h2>
					<div id="notfound-looking-for" class="box-content">
						<p><i><?php echo $sitename ?> est dirig&eacute; par toute une &eacute;quipe de Staffs, et de mod&eacute;rateurs. Ces derniers s'occupent de la gestion de l'h&ocirc;tel, ou de l'animation.
						</i><br>
						<br>
						<img src="./c_images/Badges/ADM.gif" alt="" align="left"><b>Les Staffs</b> sont un peu les managers, c'est eux qui ont le plus haut grade dans l'hotel , ils ont des taches importantes:
						Gestion du site, du serveur ou de l'animation, coder, gestions SQL, moderer...<br>
						<br>

						<img src="./c_images/Badges/ADM.gif" alt="" align="left"><b>Les Moderateurs</b> , comme leur nom l'indique, ils modèrent l'hotel. En effet, ils s'occupent de la justice, et se promenent dans les apparts pour voir si la tolerence regne. Ils peuvent a tout moment exclure un <?php echo $shortname; ?> s'il ne respecte pas les règles.
						<br>
						<br>
						<img src="./c_images/Badges/HBA.gif" alt="" align="left"><b>Les Golds et Silvers</b> aident les Staffs et Moderateurs dans leurs taches.
						<br><br>
						<br>
						<img src="./c_images/Badges/XXX.gif" alt="" align="left"><b>Les X's</b> sont des <?php echo $shortname ?> normaux, mais seulement ils sont employ&eacute;s pour aider les nouveaux, et r&eacute;pondre aux questions de la communaut&eacute;.
						<br>
						<br>

						<u>Toute l'&eacute;quipe poss&eacute;de un badge pour chaque rang, afin de les remarquer dans l'h&ocirc;tel.</u></p>
					</div>


				</div>
			</div>
			<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>

			<div class="habblet-container ">
				<div class="cbb clearfix green">

					<h2 class="title">Rejoindre l'équipe ?
					</h2>

					<div id="notfound-looking-for" class="box-content">
					Pour rejoindre l'équipe il te faudra faire preuve de patience et attendre de nouveaux recrutements qui seront annoncés dans le News !</a><br>
				</div>


			</div>
		</div></div>


		<div id="column2" class="column">
			<div class="habblet-container ">		
				<div class="cbb clearfix brown ">

					
					<h2 class="title"><b>L'équipe</b> 
					</h2> 
					<div id="notfound-looking-for" class="box-content"> 
					</div> 
					<div class="habblet box-content"> 
						<div class="clearfix red ">	
							
							<br>
							<center><h2 class="title">Les Administrateurs</h2></center>
							<?php
							$getem = mysql_query("SELECT name,mission,rank,lastvisit,figure,sex,id FROM users WHERE rank = 7 ORDER BY name") or die(mysql_error());
							$staff_members = mysql_num_rows($getem);

							if($staff_members == 7){
								echo "Aucun Staff.";
							} else {
								while ($row = mysql_fetch_array($getem, MYSQL_NUM)) {

	if($row[2] == 7 || $row[2] > 7){ // = 7 or higher - Admin
		$row[2] = "<i><b><u>A</u>dministrateur</b>";
	}

	if(empty($row[1])){
		$row[1] = "Administrateur à ton service :)";
	}

	$badge = GetUserBadge($row[0]);
	if($badge !== false){
		$badge = "<img src=\"".$cimagesurl.$badgesurl.$badge.".gif\" /></a>";
	} else {
		$badge= "";
	}

	$groupbadge = GetUserGroupBadge($row[6]);
	if($groupbadge !== false){
		$gbadge = "<a href='group_profile.php?id=".GetUserGroup($row[6])."'><img src='./habbo-imaging/badge.php?badge=".$groupbadge."'></a>";
	} else {
		$gbadge = "";
	}

	if(IsUserOnline($row[6])){
		$online_img = "online_anim";
		$online_caption = "Online now!";
	} else {
		$online_img = "offline";
		$online_caption = "Offline";
	}

	printf("<p><center><img src='http://www.habbo.co.uk/habbo-imaging/avatarimage?figure=%s&size=b&action=wlk,crr=9&direction=2&head_direction=3&gesture=sml&size=s' alt='%s' align='center' /><br/>
		<b><a href='user_profile.php?name=%s'>%s</a></b>&nbsp;<img src='./web-gallery/v2/images/habbo_%s.gif' title='%s' alt='%s' border='0'><br />
		<i>%s</i><br />
		<br />
		<i><b><u>R</u></b>ang</i>: %s<br />
		<i><b><u>D</u></b></i>erni&eacute;re <i><b><u>V</u></b></i>isite</i>: %s<br />
		<br />%s&nbsp;%s<br /><br /></p>
		",$row[4],$row[0],$row[0],$row[0],$online_img,$online_caption,$online_caption,stripslashes($row[1]),$row[2],$row[3], $badge, $gbadge);
}
}
?>
<br>
<center><h2 class="title">Les Mod&eacute;rateurs</h2></center>							
<?php
$getem = mysql_query("SELECT name,mission,rank,lastvisit,figure,sex,id FROM users WHERE rank = 6 ORDER BY name") or die(mysql_error());
$staff_members = mysql_num_rows($getem);

if($staff_members == 6){
	echo "Aucun mod&eacute;rateur.";
} else {
	while ($row = mysql_fetch_array($getem, MYSQL_NUM)) {

	if($row[2] == 6 || $row[2] > 6){ // = 6 - MOD
		$row[2] = "<i><b><u>M</u>oderateur </b></b>";
	}

	if(empty($row[1])){
		$row[1] = "Moderateur &agrave; ton service :)";
	}

	$badge = GetUserBadge($row[0]);
	if($badge !== false){
		$badge = "<img src=\"".$cimagesurl.$badgesurl.$badge.".gif\" /></a>";
	} else {
		$badge= "";
	}

	$groupbadge = GetUserGroupBadge($row[6]);
	if($groupbadge !== false){
		$gbadge = "<a href='group_profile.php?id=".GetUserGroup($row[6])."'><img src='./habbo-imaging/badge.php?badge=".$groupbadge."'></a>";
	} else {
		$gbadge = "";
	}

	if(IsUserOnline($row[6])){
		$online_img = "online_anim";
		$online_caption = "Online now!";
	} else {
		$online_img = "offline";
		$online_caption = "Offline";
	}

	printf("<p><center><img src='http://www.habbo.co.uk/habbo-imaging/avatarimage?figure=%s&size=b&action=wlk,crr=9&direction=2&head_direction=3&gesture=sml&size=s' alt='%s' align='center' /><br/>
		<b><a href='user_profile.php?name=%s'>%s</a></b>&nbsp;<img src='./web-gallery/v2/images/habbo_%s.gif' title='%s' alt='%s' border='0'><br />
		<i>%s</i><br />
		<br />
		<i><b><u>R</u></b>ang</i>: %s<br />
		<i><b><u>D</u></b></i>erni&eacute;re <i><b><u>V</u></b></i>isite</i>: %s<br />
		<br />%s&nbsp;%s<br /><br /></p>
		",$row[4],$row[0],$row[0],$row[0],$online_img,$online_caption,$online_caption,stripslashes($row[1]),$row[2],$row[3], $badge, $gbadge);
}
}
?>
<br>
<center><h2 class="title">Les X's</h2></center>
<?php
$getem = mysql_query("SELECT name,mission,rank,lastvisit,figure,sex,id FROM users WHERE rank = 5 ORDER BY name") or die(mysql_error());
$staff_members = mysql_num_rows($getem);

if($staff_members == 5){
	echo "Aucun X's.";
} else {
	while ($row = mysql_fetch_array($getem, MYSQL_NUM)) {

	if($row[2] == 5 || $row[5] > 5){ // = 5 or higher - Gold
		$row[2] = "<i><b><u>X</u></b></b>";
	}

	if(empty($row[1])){
		$row[1] = "X &agrave; ton service :)";
	}

	$badge = GetUserBadge($row[0]);
	if($badge !== false){
		$badge = "<img src=\"".$cimagesurl.$badgesurl.$badge.".gif\" /></a>";
	} else {
		$badge= "";
	}

	$groupbadge = GetUserGroupBadge($row[5]);
	if($groupbadge !== false){
		$gbadge = "<a href='group_profile.php?id=".GetUserGroup($row[6])."'><img src='./habbo-imaging/badge.php?badge=".$groupbadge."'></a>";
	} else {
		$gbadge = "";
	}

	if(IsUserOnline($row[6])){
		$online_img = "online_anim";
		$online_caption = "Online now!";
	} else {
		$online_img = "offline";
		$online_caption = "Offline";
	}

	printf("<p><center><img src='http://www.habbo.co.uk/habbo-imaging/avatarimage?figure=%s&size=b&action=wlk,crr=9&direction=2&head_direction=3&gesture=sml&size=s' alt='%s' align='center' /><br/>
		<b><a href='user_profile.php?name=%s'>%s</a></b>&nbsp;<img src='./web-gallery/v2/images/habbo_%s.gif' title='%s' alt='%s' border='0'><br />
		<i>%s</i><br />
		<br />
		<i><b><u>R</u></b>ang</i>: %s<br />
		<i><b><u>D</u></b></i>erni&eacute;re <i><b><u>V</u></b></i>isite</i>: %s<br />
		<br />%s&nbsp;%s<br /><br /></p>
		",$row[4],$row[0],$row[0],$row[0],$online_img,$online_caption,$online_caption,stripslashes($row[1]),$row[2],$row[3], $badge, $gbadge);
}
}
?>
<br>	
<center><h2 class="title">Les Gold/silver</h2></center>
<?php
$getem = mysql_query("SELECT name,mission,rank,lastvisit,figure,sex,id FROM users WHERE rank = 4 ORDER BY name") or die(mysql_error());
$staff_members = mysql_num_rows($getem);

if($staff_members == 4){
	echo "Aucun Gold/silver.";
} else {
	while ($row = mysql_fetch_array($getem, MYSQL_NUM)) {

	if($row[2] == 4|| $row[2] > 4){ // = 4 or higher - Silver
		$row[2] = "<i><b><u>G</u>old</b>/<i><b><u>S</u>ilver</b></i>";
	}

	if(empty($row[1])){
		$row[1] = "Gold/silver a ton service :)";
	}

	$badge = GetUserBadge($row[0]);
	if($badge !== false){
		$badge = "<img src=\"".$cimagesurl.$badgesurl.$badge.".gif\" /></a>";
	} else {
		$badge= "";
	}

	$groupbadge = GetUserGroupBadge($row[13]);
	if($groupbadge !== false){
		$gbadge = "<a href='group_profile.php?id=".GetUserGroup($row[6])."'><img src='./habbo-imaging/badge.php?badge=".$groupbadge."'></a>";
	} else {
		$gbadge = "";
	}

	if(IsUserOnline($row[13])){
		$online_img = "online_anim";
		$online_caption = "Online now!";
	} else {
		$online_img = "offline";
		$online_caption = "Offline";
	}

	printf("<p><center><img src='http://www.habbo.co.uk/habbo-imaging/avatarimage?figure=%s&size=b&action=wlk,crr=9&direction=2&head_direction=3&gesture=sml&size=s' alt='%s' align='center' /><br/>
		<b><a href='user_profile.php?name=%s'>%s</a></b>&nbsp;<img src='./web-gallery/v2/images/habbo_%s.gif' title='%s' alt='%s' border='0'><br />
		<i>%s</i><br />
		<br />
		<i><b><u>R</u></b>ang</i>: %s<br />
		<i><b><u>D</u></b></i>erni&eacute;re <i><b><u>V</u></b></i>isite</i>: %s<br />
		<br />%s&nbsp;%s<br /><br /></p>
		",$row[4],$row[0],$row[0],$row[0],$online_img,$online_caption,$online_caption,stripslashes($row[1]),$row[2],$row[3], $badge, $gbadge);
}
}
?>
</div></div>
</div>

</div>


</p>

<p></p>

</center>


<?php include('templates/community/footer.php'); ?>
