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
$pagename = "VIP Club";
$pageid = "vip";
$body_id = "home";

include('templates/community/subheader.php');
include('templates/community/header.php');

?>



<div id='container'>
<div id='content'>
<div id='column1' class='column'><div class='habblet-container '>		
<div class='cbb clearfix red '>
	
<h2 class='title'>VIP Club</h2>
<p class='credits-countries-select' align='left'><img class="credits-image" src="./web-gallery/v2/images/best.gif" align="left"/>

Bienvenue sur la page du VIP Club !<br>
Tu pourras ici adhérer au Club en quelques minutes facilement !<br><br>

<u><b>Quels Sont Les Avantages Du VIP Club ?</u></b><br><br>

<i>
- Tu auras 10000 crédits de plus !<br>
- Tu auras le rang 3 !<br>
- Tu auras le badges VIP <img src="./Badges/VIP.gif"><br>
- Tu auras le badge DU3 <img src="./Badges/DU3.gif"><br>
- Tu disposeras d'un catalogue complet avec les mobis Rares !
</i>

<bR><br><u><b>Comment Adhérer Au Club ?</u></b><br><br>

Pour adhérer au Club il suffit de payer 1 Allopass/Webopass.<br>
Utilise le formulaire ci-dessous pour l'acheter Puis valide Le Code !<br>
Tu seras automatiquement VIP !<br><br>

<!-- Remplacez La Ligne Ci-Dessous Par Un Script Pour Acheter des Allopass ou Webopass -->
<img src="./imgsrcipt.png">
<!-- Fin Du Script -->

<br>

</div></div></div>
  
<div id="column2" class="column">
				<div class='habblet-container '>		
						<div class='cbb clearfix blue '>
	
							<h2 class='title'>C'est quoi le VIP Club ?</h2>
						<div id='credits-promo' class='box-content credits-info'>
    <div class='credit-info-text clearfix'>

    <p><img class="credits-image" src="http://archive.habboretroweb.net/imgs/other/objects/ko-trophy.gif" align="center"/>
Le VIP Club est un rang spécial qui t'offre des Privilèges Uniques par rapport aux membres normaux.</p></div>
	
						
					</div>
				</div>
<div class='habblet-container '>		
						<div class='cbb clearfix green '>
	
							<h2 class='title'>Devenir VIP ?</h2>

						<div id='credits-promo' class='box-content credits-info'>
    <div class='credit-info-text clearfix'>
    <p><img class="credits-image" src="http://archive.habboretroweb.net/imgs/other/objects/mobile_phone.gif" align="left"/>
  Envie de rejoindre le Club VIP ?<br>Il suffit de payer 1 Allopass/Webopass en suivant les instructions à gauche !</div>
	
						
					</div>
				</div>
<div class='habblet-container '>		
						<div class='cbb clearfix pixellightblue '>
	
							<h2 class='title'>Voir les VIP</h2>

						<div id='credits-promo' class='box-content credits-info'>
    <div class='credit-info-text clearfix'>
    <p><img class="credits-image" src="http://archive.habboretroweb.net/imgs/other/objects/pile_of_stuff.gif" align="left"/>
Pour voir les VIP tu n'as qu'a <a href="./vip_liste.php">Cliquer Ici</a> !</div>
	
						
					</div>
				</div>

</div>
				<script type='text/javascript'>if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>

			 
							 
</div></div>

				<script type='text/javascript'>if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>
			 
							 
</div>

<script type="text/javascript">
HabboView.run();
</script>	
				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>
<?php
include('templates/community/footer.php');
?>
