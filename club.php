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

$pagename = $shortname . " Club";
$pageid = "7";
$body_id = "home";

/** Commented out - new AJAX HC handling implented as of v2.0
if(isset($_GET['months'])){
$months = $_GET['months'];
	if($months == 1){
		if($myrow['credits'] > 19){
		mysql_query("UPDATE users SET credits = credits - 20 WHERE id = '".$my_id."' LIMIT 1") or die(mysql_error());
		GiveHC($my_id, 1);
		mysql_query("INSERT INTO cms_transactions (userid,amount,date,descr) VALUES ('".$my_id."','-20','".$date_full."','Club subscription')");
		$hc_alert = "<img src=\"./web-gallery/album1/piccolo_happy.gif\" style=\"float: left;\" height=\"87\" width=\"32\"><b>Purchase Successfull</b><br /><br />You have successfully purchased a subscription of " . $months . " month(s) of " . $shortname . " club!";
		} else {
		$hc_alert = "<b>Erreur</b><br /><br />Tu n'as pas assez de cr&eacute;dits pour t'inscrire";
		}
	} else if($months == 3){
		if($myrow['credits'] > 49){
		mysql_query("UPDATE users SET credits = credits - 50 WHERE id = '".$my_id."' LIMIT 1") or die(mysql_error());
		GiveHC($my_id, 3);
		mysql_query("INSERT INTO cms_transactions (userid,amount,date,descr) VALUES ('".$my_id."','-50','".$date_full."','Club subscription')");
		$hc_alert = "<img src=\"./web-gallery/album1/piccolo_happy.gif\" style=\"float: left;\" height=\"87\" width=\"32\"><b>Purchase Successfull</b><br /><br />You have successfully purchased a subscription of " . $months . " month(s) of " . $shortname . " club!";
		} else {
		$hc_alert = "<b>Erreur</b><br /><br />Tu n'as pas assez de cr&eacute;dits pour t'inscrire";
		}
	} else if($months == 6){
		if($myrow['credits'] > 79){
		mysql_query("UPDATE users SET credits = credits - 80 WHERE id = '".$my_id."' LIMIT 1") or die(mysql_error());
		GiveHC($my_id, 6);
		mysql_query("INSERT INTO cms_transactions (userid,amount,date,descr) VALUES ('".$my_id."','-80','".$date_full."','Club subscription')");
		$hc_alert = "<img src=\"./web-gallery/album1/piccolo_happy.gif\" style=\"float: left;\" height=\"87\" width=\"32\"><b>Purchase Successfull</b><br /><br />You have successfully purchased a subscription of " . $months . " month(s) of " . $shortname . " club!";
		} else {
		$hc_alert = "<b>Erreur</b><br /><br />Tu n'as pas assez de cr&eacute;dits pour t'inscrire";
		}
	} else {
	$hc_alert = "<b>An error occured</b><br /><br />Tu dois choiser entre 1, 3 ou 6 mois.";
	}
} */

include('templates/community/subheader.php');
include('templates/community/header.php');

echo "<div id='container'>
	<div id='content'>
		<div id='column1' class='column'>
		<div class='habblet-container '>
						<div class='cbb clearfix hcred '>

							<h2 class='title'>".$shortname." Club: deviens un HC !</h2>
						<div id ='habboclub-products'>
    <div id='habboclub-clothes-container'>
        <div class='habboclub-extra-image'></div>
        <div class='habboclub-clothes-image'></div>
    </div>

    <div class='clearfix'></div>
    <div id='habboclub-furniture-container'>
        <div class='habboclub-furniture-image'></div>
    </div>
</div>


					</div>
				</div>
				<script type='text/javascript'>if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>

				<div class='habblet-container '>
						<div class='cbb clearfix lightbrown '>

							<h2 class='title'>Avantages</h2>
						<div id='habboclub-info' class='box-content'>
    <p>".$shortname."  Club est le Club tr&eacute;s s&eacute;lect de Habbo - Seule la creme de la creme y est accept&eacute;e et ses membres sont envi&eacute;s dans tout l'h&ocirc;tel</p>
    <h3 class='heading'>1. V&ecirc;tements & accessoires suppl&eacute;mentaires</h3>
    <p class='content habboclub-clothing'>Fais le k&eacute;k&eacute; gr&acirc;ce &agrave; un choix tr&eacute;s &eacute;tendu de v&ecirc;tements, d'accessoires et de coupes de cheveux exclusifs.</p>
    <h3 class='heading'>2. Mobis gratuits</h3>
    <p class='content habboclub-furni'>Chaque mois un nouveau mobi offert!</p>
    <p class='content'>Nb: si tu quittes le Habbo Club et que tu souhaites y revenir un peu plus tard, tu ne red&eacute;marreras pas ton abonnement &agrave; z&eacute;ro mais au moment pr&eacute;cis o&ugrave; tu l'avais quitt&eacute;.</p>
    <h3 class='heading'>3. Formes d'appart exclusives</h3>
    <p class='content'>Des formes d'appart exclusives pour mieux mettre en valeur tes mobis!</p>
    <p class='habboclub-room' />
    <h3 class='heading'>4. Acces prioritaire</h3>
    <p class='content'>Grille la queue avant m&ecirc;me que la salle soit charg&eacute;e et acc&egrave;de en exclusivit&eacute; aux salles r&eacute;serv&eacute;es aux membres HC.</p>
    <h3 class='heading'>5.  Mises &agrave; jour page perso</h3>
    <p class='content'>Rejoins le Habbo Club et dis adieu &agrave; aux banni&egrave;res pub! A toi les widgets et les fonds d'&eacute;cran HC ;)</p>
    <h3 class='heading'>6. Plus d'amis</h3>
    <p class='content habboclub-communicator'>600 personnes! Ca fait un sacr&eacute; paquet d'amis ;)</p>
    <h3 class='heading'>7. Commandes sp&eacute;ciales</h3>
    <p class='content habboclub-commands right'>Sers-toi de la commande :chooser pour voir qui se trouve dans l'appart. Pratique!</p>
    <br />
    <p>Sers-toi de la commande :furni pour conna&icirc;tre les mobis que contient un appart. Tout y est r&eacute;pertori&eacute; m&ecirc;me ce qui est cach&eacute; sous le lit :O


</p>
</div>


					</div>
				</div>
				<script type='text/javascript'>if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>

</div>
<div id='column2' class='column'>
				<div class='habblet-container '>
						<div class='cbb clearfix hcred '>

							<h2 class='title'>Mon adh&eacute;sion</h2>
<div id='hc-membership-info' class='box-content'>";
if($logged_in){
echo "<p>
Tu n'es";

if(!IsHCMember($my_id)){
echo " pas";
}

echo " un membre du ".$shortname." Club
</p>
<p>";
if(IsHCMember($my_id)){
	echo "Tu as " . HCDaysLeft($my_id) . " jours HC";
} else {
	echo "&nbsp;";
}
echo "</p>
</div>";

if($myrow['credits'] == "20" || $myrow['credits'] > 20){ ?>
<div id='hc-buy-container' class='box-content'>
<div id='hc-buy-buttons' class='hc-buy-buttons rounded rounded-hcred'>
<form>
<table>
<tr>
	<td><a class="new-button fill" onclick="habboclub.buttonClick(1,'<?php echo strtoupper($shortname); ?> CLUB'); return false;" href="#"><b>Acheter 1 mois</b><i></i></a></td>
    <td>&nbsp;20 Cr&eacute;dits</td>
</tr>
<tr>
	<td><a class="new-button fill" onclick="habboclub.buttonClick(3,'<?php echo strtoupper($shortname); ?> CLUB'); return false;" href="#"><b>Acheter 3 mois</b><i></i></a></td>
    <td>&nbsp;50 Cr&eacute;dits</td>
</tr>
<tr>
	<td><a class="new-button fill" onclick="habboclub.buttonClick(6,'<?php echo strtoupper($shortname); ?> CLUB'); return false;" href="#"><b>Acheter 6 mois</b><i></i></a></td>
    <td>&nbsp;80 Cr&eacute;dits</td>
</tr>
</table>
</form>
</div>
</div>
<?php } else { ?>
<div id="hc-buy-container" class="box-content">
        <div id="hc-buy-buttons" class="hc-buy-buttons rounded rounded-hcred">
            <form class="subscribe-form" method="post">
                <table width="100%">
                  <p class="credits-notice">Pour joindre le <?php echo $shortname; ?> Club, tu dois avoir des cr&eacute;dits. <?php echo $shortname; ?> Club c&ocirc;ute au mininum 20 cr&eacute;dits</p>
                  <a class="new-button fill" href="credits.php"><b>Avoir des sous!</b><i></i></a>
                </table>
            </form>
        </div>
    </div>
<?php }
} else {
    echo "Merci de te connecter pour voir tes statistiques du ".$shortname." Club";
}


echo "					</div>
				</div>
				<script type='text/javascript'>if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>

				<div class='habblet-container '>





				</div>
				<script type='text/javascript'>if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>

"; /*				<div class='habblet-container '>
						<div class='cbb clearfix lightbrown '>

							<h2 class='title'>Discount!</h2>
<div class='box-content'>
Hurrah! A major discount on all ".$shortname." Club subscriptions! Buy one on this page now and save up to 15 credits!
</div>


					</div>
				</div>
				<script type='text/javascript'>if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script> */ echo "

</div>

</div>";

include('templates/community/footer.php');

?>