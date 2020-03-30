<?php
/*===================================================+
|| # HoloCMS - Website and Content Management System
|+===================================================+
|| # Copyright &copy; 2008 Meth0d. All rights reserved.
|| # http://www.meth0d.org
|+===================================================+
|| # HoloCMS is provided "as is" and comes without
|| # warrenty of any kind. HoloCMS is free software!
|+===================================================*/

$allow_guests = true;

include('core.php');
include('includes/session.php');

$pagename = "Liste des vip";
$pageid = "viplist";
$body_id = "home";

include('templates/community/subheader.php');
include('templates/community/header.php');

?>
<div id="container">
	<div id="content">


 <div id="column1" class="column">

				<div class="habblet-container ">
						<div class="cbb clearfix red ">

							<h2 class="title">Les VIP
							</h2>
						<div class="habblet box-content">
<?php
$getem = mysql_query("SELECT name,mission,rank,lastvisit,figure,sex,id FROM users WHERE rank = 3 ORDER BY name") or die(mysql_error());
$staff_members = mysql_num_rows($getem);

if($staff_members < 1){
echo "Aucun vip inscrits";
} else {
	while ($row = mysql_fetch_array($getem, MYSQL_NUM)){

 if ($row[2] = 3){ // = 4 - Silver
	$row[2] = "<b>VIP</b>";
	}

	if(empty($row[1])){
	$row[1] = "Pas de mission";
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
                $online_caption = "Connect&eacute;!";
	} else {
		$online_img = "offline";
                $online_caption = "Hors ligne";
	}

printf("<p><img src='http://www.habbo.co.uk/habbo-imaging/avatarimage?figure=%s&size=b&direction=4&head_direction=2&gesture=srp&action=wlk&size=s' alt='%s' align='right' />
<b><a href='user_profile.php?name=%s'>%s</a></b>&nbsp;<img src='./web-gallery/v2/images/habbo_%s.gif' title='%s' alt='%s' border='0'><br />
<i>%s</i><br />
<br />
Rang : %s<br />
Derni&egrave;re visite : %s<br />
<br />%s&nbsp;%s<br /><br /></p>
",$row[4],$row[0],$row[0],$row[0],$online_img,$online_caption,$online_caption,HoloText($row[1]),$row[2],$row[3], $badge, $gbadge);
	}
}
?>
</div>
					</div>
				</div>


				<script type='text/javascript'>if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>
			 
							 
</div>
<div id="column2" class="column">
				<div class="habblet-container ">		
						<div class="cbb clearfix pixelgreen ">
	
							<h2 class="title">C'est Quoi Le VIP Club ?
							</h2>

						<div id="pixels-info" class="box-content pixels-info">
    <div class="pixels-info-text clearfix">
        <img class="pixels-image" src="http://archive.habboretroweb.net/imgs/other/objects/ko-trophy.gif" alt=""/>
        <p class="pixels-text">Le VIP Club Est Un Rang Spécial Qui T'offre Des Privilèges Uniques Par Rapport Aux Membres Normaux.</p>
    </div>
</div>
	
						
					</div>
				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>

			 

			     	<div class="habblet-container ">		
						<div class="cbb clearfix pixellightblue ">
	
							<h2 class="title">Devenir VIP ?
							</h2>
						<div id="pixels-info" class="box-content pixels-info">
    <div class="pixels-info-text clearfix">
        <img class="pixels-image" src="http://archive.habboretroweb.net/imgs/other/objects/pile_of_stuff.gif" alt=""/>
        <p class="pixels-text">Pour Devenir VIP Tu N'as Qu'a <a href="./vip.php">Cliquer Ici</a> !</p>
    </div>

</div></div>
	
						
					</div>
				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>
			 	    	 

</div>

<script type="text/javascript">
HabboView.run();
</script>	
				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>
<?php

include('templates/community/footer.php');

?>
