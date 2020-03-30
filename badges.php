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
include('badge_config.php');

$pagename = "Magasin badges";
$pageid = "bshop";

include('templates/community/subheader.php');
include('templates/community/header.php');

?>

<div id='container'>
<div id='content'>
<div id='column1' class='column'><div class='habblet-container '>		
<div class='cbb clearfix red '>

	
                                                                                               <h2 class="title">Magasin badges
							</h2>
	<p class='credits-countries-select' align='left'>
    
     			<p id="collectibles-purchase"><center>
<u>Bienvenue au magasin de badges !<br>
Voici les badges en vente actuellement :</u>
   </center><br>           
<div id='hc-buy-buttons' class='hc-buy-buttons rounded rounded-hcred'><center>
<form>
<table>
<tr><td><img src="<?php echo $badge_image1 ?>" width="50" height="50" border="174" alt="">
<a class="new-button fill" onclick="habboclub.buttonClick(1,'<?php echo strtoupper($shortname); ?> CLUB'); return false;" href="badge_1.php"><b>Acheter</b><i></i></a>
Prix : <?php echo $price1; ?> Cr&eacute;dits</td></tr>

<tr><td><img src="<?php echo $badge_image2 ?>" width="50" height="50" border="174" alt="">
<a class="new-button fill" onclick="habboclub.buttonClick(1,'<?php echo strtoupper($shortname); ?> CLUB'); return false;" href="badge_2.php"><b>Acheter</b><i></i></a>
Prix : <?php echo $price2; ?> Cr&eacute;dits</td></tr>

<td><img src="<?php echo $badge_image3 ?>" width="50" height="50" border="174" alt="">
<a class="new-button fill" onclick="habboclub.buttonClick(1,'<?php echo strtoupper($shortname); ?> CLUB'); return false;" href="badge_3.php"><b>Acheter</b><i></i></a>
Prix : <?php echo $price3; ?> Cr&eacute;dits</td></tr>

<td><img src="<?php echo $badge_image4 ?>" width="50" height="50" border="174" alt="">
<a class="new-button fill" onclick="habboclub.buttonClick(1,'<?php echo strtoupper($shortname); ?> CLUB'); return false;" href="badge_4.php"><b>Acheter</b><i></i></a>
Prix : <?php echo $price4; ?> Cr&eacute;dits</td>

</table>
</form>
</center>
<br>
</br>
<br>
</br>
<br>
</br>
</div></div></div></div>

<div id="column2" class="column">
				<div class='habblet-container '>		
						<div class='cbb clearfix blue '>
	
							<h2 class='title'>Info sur le magasin</h2>
						<div id='credits-promo' class='box-content credits-info'>
    <div class='credit-info-text clearfix'>

    <p><img class="credits-image" src="./web-gallery/info_machine.gif" align="center"/>
Ce magasin te permet d'acheter des badges pour quelques crédits. Attention de nouveaux badges seront constamment mis à jour !</p></div>
	
						
					</div>
				</div>

<div class='habblet-container '>		
						<div class='cbb clearfix green '>
	
							<h2 class='title'>Acheter un badge ?</h2>

						<div id='credits-promo' class='box-content credits-info'>
    <div class='credit-info-text clearfix'>
    <p><img class="credits-image" src="http://archive.habboretroweb.net/imgs/other/objects/mobile_phone.gif" align="left"/>
Pour acheter un badge, il n'y a rien de plus simple ! Choisi ton badge puis clique sur "Acheter" ! </div>
	
						
					</div>
				</div>
       
				<script type='text/javascript'>if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>
			 
</div>
     
   
<div id="purse-redeem-result">
</div>	</form>
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

			 
			
	

						
					</div>
				</div>
				<script type='text/javascript'>if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>
			 
							 
</div>

<?php

include('templates/community/footer.php');

?>
