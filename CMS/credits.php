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

$pagename = "Cr&eacute;dits";
$pageid = "6";
$body_id = "home";

include('templates/community/subheader.php');
include('templates/community/header.php');

?>

<div id='container'>
<div id='content'>
<div id='column1' class='column'><div class='habblet-container '>		
<div class='cbb clearfix green '>
	
<h2 class='title'>Comment Avoir Des Crédits ? </h2>
<script src="./web-gallery/static/js/credits.js" type="text/javascript"></script>
<p class="credits-countries-select">
</p>
<ul id="credits-methods">
	<li id="credits-type-promo">
		<h4 class="credits-category-promo">La Meilleur Solution</h4>
		<ul>
				<li class="clearfix even"><div id="method-44" class="credits-method-container">

					<div class="credits-summary" >
						<h3>Demander à Un Modérateur</h3>
						<p>Les modérateurs sont partout dans l'hôtel. Demandez à l'un d'eux et ils vont vous donner un code cadeau. Tapez-le sur la droite.</p>
						
						<p class="credits-read-more" id="method-show-44" style="display: none">Lire Plus</p>
					</div>
					<div id="method-full-44" class="credits-method-full">

							<p><b>Demander Des crédits ?</b><br />Va voir un modérateur, si il le veut bien il te donnera un code cadeau que tu devras entrer dans la cellule à droite. Ensuite tu receveras automatiquement des crédits.</p>

					</div>
					<script type="text/javascript">
					$("method-show-44").show();
					$("method-full-44").hide();
					</script>
				</div></li>
		</ul>
	</li>
	<li id="credits-type-quick_and_easy">
		<h4 class="credits-category-quick_and_easy">Autres Possibilités</h4>
		<ul>

				<li class="clearfix odd"><div id="method-1" class="credits-method-container">
					<div class="credits-summary">
						<h3>Parrainez un ami</h3>
						<p>Parrainez un ami dans cet hôtel et de gagner des crédits.</p>

						
						<p class="credits-read-more" id="method-show-1" style="display: none">Lire Plus</p>
					</div>
					<div id="method-full-1" class="credits-method-full">
							<p><b>Comment Faire Sa ? </b><br /><br />Obtenez votre lien sur la page d'accueil et envoyez le à vos amis. Quand ils s' inscrivent, vous obtenez des crédits!</p>
					</div>
					<script type="text/javascript">
					$("method-show-1").show();
					$("method-full-1").hide();
					</script>
				</div></li>
		</ul>
	</li>
	<li id="credits-type-other">
		<h4 class="credits-category-other">Outils</h4>
		<ul>

				<li class="clearfix odd"><div id="method-3" class="credits-method-container">
					<div class="credits-summary">
						<div class="credits-tools">
								<a  class="new-button" id="buy-button" href="#"><b>Vider ma Main</b><i></i></a>
							
						</div>
						<h3>Vider La Main</h3>
						<p>Main trop pleine ? Cliquez ici pour la réinitialiser.</p>
						
						<p class="credits-read-more" id="method-show-3" style="display: none">Lire Plus</p>
					</div>
					<div id="method-full-3" class="credits-method-full">

							<p><b>Comment Faire Sa ?</b><br /><br />Cliquez sur ce bouton au-dessus de ces mots. Dur n'est-ce pas?</p>
					</div>
					<script type="text/javascript">
					$("method-show-3").show();
					$("method-full-3").hide();
					</script>
				</div></li>
		</ul>
	</li>
</ul>

<script type="text/javascript">
L10N.put("credits.navi.read_more", "Read more");
L10N.put("credits.navi.close_fulltext", "Close instructions");
PaymentMethodHabblet.init();
</script>
	
						
					</div>

				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>
			 

</div>
<div id="column2" class="column">
				<div class="habblet-container ">		
						<div class="cbb clearfix brown ">
	
							<h2 class="title">Ton porte monnaie
							</h2>
						<div id="purse-habblet">
                                                    <?php if($logged_in){ ?>
	<form method="post" action="credits.php" id="voucher-form">
<ul>
    <li class="even icon-purse">
        <div>Tu as actuellement:</div>
        <span class="purse-balance-amount"><?php echo $myrow['credits']; ?> Cr&eacute;dits</span>
        <div class="purse-tx"><a href="transactions.php">Mes transactions</a></div>
    </li>

    <li class="odd">
        <div class="box-content">
            <div>Entre un code cr&eacute;dits:</div>
            <input type="text" name="voucherCode" value="" id="purse-habblet-redeemcode-string" class="redeemcode" />
            <a href="#" id="purse-redeemcode-button" class="new-button purse-icon" style="float:left"><b><span></span>Go!</b><i></i></a>
        </div>
    </li>
</ul>
<div id="purse-redeem-result">
</div>	</form>
        <?php } else { ?>
        <div class="box-content">Tu dois &ecirc;tre connect&eacute; pour voir ton porte monnaie!</div>
        <?php } ?>
</div>

<script type="text/javascript">
	new PurseHabblet();
</script>
	
						
					</div>
				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>
			 
				<div class="habblet-container ">		
	
						
	
						
					
				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>			 

			 
				<d<div class="habblet-container ">		
						<div class="cbb clearfix orange ">
	
							<h2 class="title">Les Crédits <?php echo $shortname; ?>, c'est quoi? 
							</h2>

						<div id="credits-promo" class="box-content credits-info">
    <div class="credit-info-text clearfix">
        <img class="credits-image" src="./web-gallery/v2/images/credits/poor.png" alt="" width="77" height="105" />
        <p class="credits-text">Les Crédits <?php echo $shortname; ?> sont la monnaie de Hrw. Ils servent à acheter toutes sortes de choses, du canard en plastique au Téléporteur High Tech.
</p>
    </div>
    <p class="credits-text-2">Si tu rencontres un souci avec tes achats, contacte un staff.</p>
</div>
	
						
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
