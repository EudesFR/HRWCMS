<?php
/*===================================================+
|| # HoloCMS - Website and Content Management System
|+===================================================+
|| # Copyright � 2008 Meth0d. All rights reserved.
|| # http://www.meth0d.org
|+===================================================+
|| # HoloCMS is provided "as is" and comes without
|| # warrenty of any kind. HoloCMS is free software!
|+===================================================*/

if($hkzone !== true){ header("Location: index.php?throwBack=true"); exit; }

if($user_rank > 6){
    $strRank = "Administrator";
} elseif($user_rank > 5){
    $strRank = "Moderator";
} else {
    $strRank = "Faggot"; // no wai!
}


?>
<body>
<div id='loading-layer' style='display:none'>
	<div id='loading-layer-shadow'>
	   <div id='loading-layer-inner' >
		   <img src='./images/loading_anim.gif' style='vertical-align:middle' border='0' alt='Loading...' /><br />
		   <span style='font-weight:bold' id='loading-layer-text'>Loading Data. Please Wait...</span>
	   </div>
	</div>
</div>
<div id='ipdwrapper'><!-- IPDWRAPPER -->
<!-- TOP TABS -->
<div class='tabwrap-main'>
<div class='tab<?php if($tab == 1){ echo "on"; } else { echo "off"; } ?>-main'><img src='images/dashboard.png' style='vertical-align:middle' /> <a href='index.php?p=dashboard'>Acceuil</a></div>
<div class='tab<?php if($tab == 2){ echo "on"; } else { echo "off"; } ?>-main'><img src='images/system.png' style='vertical-align:middle' /> <a href='index.php?p=server'>Serveur</a></div>
<div class='tab<?php if($tab == 3){ echo "on"; } else { echo "off"; } ?>-main'><img src='images/tools.png' style='vertical-align:middle' /> <a href='index.php?p=site'>Site & Contenue</a></div>
<div class='tab<?php if($tab == 5){ echo "on"; } else { echo "off"; } ?>-main'><img src='images/admin.png' style='vertical-align:middle' /> <a href='index.php?p=users'>Utilisateur</a></div>


<div class='logoright'><br /><font size='2' color='black'><?php echo $chosen; ?></font>&nbsp;&nbsp;&nbsp;</div>
</div>
<!-- / TOP TABS -->

<div class='sub-tab-strip'>
    <div class='global-memberbar'>
 Bienvenue, <strong><?php echo $strRank . " " . $admin_username; ?></strong> [
 <a href='../index.php' target='_blank'>Acceuil du Site</a> &middot;
 <a href='index.php?p=logout'>FERMER</a>
 ]
</div>
	<div class='navwrap'><a href='index.php?p=dashboard'><?php echo $sitename; ?> Administration</a></div>
</div>
<div class='outerdiv' id='global-outerdiv'><!-- OUTERDIV -->