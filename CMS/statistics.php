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

$pagename = "Statistiques de l'hôtel";
$pageid = "10";

include('templates/community/subheader.php');
include('templates/community/header.php');

?>

<div id="container">
	<div id="content">
    <div id="column1" class="column">
				<div class="habblet-container ">
						<div class="cbb clearfix blue ">

							<h2 class="title">Statistiques de <?php echo $sitename; ?>
							</h2>
						<div class="habblet box-content">
<h3>A propos de votre compte</h3>

<i>Votre nom </i>: <?php echo "".$name.""; ?>
<br><br>


<i>Credits</i> : <?php echo $myrow['credits']; ?> Credits (<a href="transactions.php">Voir les Transactions</a>)
<br><br>


<i><?php echo $shortname; ?> Club</i> : <?php if( !IsHCMember($my_id) ){ echo "Vous ne fait pas partie du club!"; } else { echo HCDaysLeft($my_id) . " </a>Jours de <?php echo $shortname; ?> Club"; }?>
<br><br>




<i>Votre Rang</i> : <?php
                if($user_rank == "1"){
                $user_rank2 = "Utilisateur";
                }
                                if($user_rank == "2"){
                $user_rank2 = "Membre du Club";
                }
                                if($user_rank == "3"){
                $user_rank2 = "Habbo X";
                }
                                if($user_rank == "4"){
                $user_rank2 = "Habbo Silver";
                }
                                if($user_rank == "5"){
                $user_rank2 = "Habbo Gold";
                }
                if($user_rank == "6"){
                $user_rank2 = "Modérateur";
                }
                if($user_rank == "7"){
                $user_rank2 = "Administrateur";
                 }
                 echo "$user_rank2"; ?>
                </li>
<br><br>







<i>Dernière Visite</i> : <?php echo $myrow['lastvisit']; ?>


<h3>A propos de l'hôtel</h3>

<i>Utilisateurs en ligne</i> : <?php echo $online_count; ?> <?php echo $shortname; ?>s en ligne !

<h3>A propos du serveur</h3>

<i>Version</i> : v<?php echo $holocms['version'] . "&nbsp;" . $holocms['stable']; ?>
<br><br>
<i>Utilisateurs Inscrits</i> : <?php echo mysql_evaluate("SELECT COUNT(*) FROM users") ?>
<br><br>
<i>Appart créés</i> : <?php echo mysql_evaluate("SELECT COUNT(*) FROM rooms"); ?>
	(<?php echo mysql_evaluate("SELECT COUNT(*) FROM rooms WHERE owner IS NULL"); ?> espace public)
<br><br>
<i>Mobillier</i> : <?php echo mysql_evaluate("SELECT COUNT(*) FROM furniture"); ?>
<br><br>
<i>Groupes</i> : <?php echo mysql_evaluate("SELECT COUNT(*) FROM groups_details"); ?>
<br><br>
<i>Utilisateurs Banni</i> : <?php echo mysql_evaluate("SELECT COUNT(*) FROM users_bans"); ?>
<br><br>
<i>Ecotron</i> : <?php echo FetchServerSetting('recycler_enable', true); ?>
<br><br>
<i>Commerce</i> : <?php echo FetchServerSetting('trading_enable', true); ?>
<br><br>
<i>Maximum de connexions</i> : <?php echo FetchServerSetting('server_game_maxconnections'); ?>
<br><br>
</div>


					</div>
				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>

</div>
<div id="column2" class="column">





<div class='habblet-container '>		
						<div class='cbb clearfix blue '>
	










							<h2 class="title">Que sont les statistiques ?</h2>
						<div id="notfound-looking-for" class="box-content">
    <p><img class="statistics-image" src="./web-gallery/v2/images/hotelicone.gif" align="left" width="60" height="65"/>Les statistiques sont les informations globales de l'hôtel. Combien de chambres créées, le nombre d'utilisateurs inscrits, rang de l'utilisateur, et autres...</p>
</div>


					</div>









				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>

				<div class="habblet-container ">
						<div class="cbb clearfix blue ">

							<h2 class="title">Informations Sur Le CMS</h2>
						<div id="notfound-looking-for" class="box-content">
    <br><u>Cms Installé :</u> HRW Cms©<br><u>Version :</u> 2.0<br><Br><small><i>HRW Cms©, Une Production <a href="http://habboretroweb.net">HabboRetroWeb</a>  Créée Par Victor. Tous Droits Réservés.</i></small>
</div>


					</div>
				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>








</div>



<?php

include('templates/community/footer.php');

?>
