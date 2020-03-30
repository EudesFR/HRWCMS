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

$pagename = "Pixels";
$pageid = "pixel";
$body_id = "home";

include('templates/community/subheader.php');
include('templates/community/header.php');

?>

<div id='container'>
<div id='content'><div id="content" style="position: relative" class="clearfix">
<div id="column1" class="column">

			     		
				<div class="habblet-container ">		
						<div class="cbb clearfix pixelblue ">
	
							<h2 class="title">Apprends comment gagner des pixels! 
							</h2>
						<div class="pixels-infobox-container">
    <div class="pixels-infobox-text">
            <h3>Comment gagner des pixels ?</h3>
            <ul>
                <li><p><?php echo $lang->loc['no.way.for.pixels']; ?></p></li>
            </ul>
            <p>1. Se connecter à Habbo au moins une fois par jour</p>
            <p>2. Passer du temps sur Habbo chaque jour - plus longtemps tu y restes plus tu accumules de points!</p>
            <p> 3. Accomplir toutes les épreuves win-win</p>
            <p>4. J'adhére au Habbo Club!</p>

Comment les dépenser? Jette un oeil au catalogue et au pixel shop!

    </div>
</div>
	
						
					</div>
				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>
			 

</div>
<div id="column2" class="column">
			     		
				<div class="habblet-container ">		
						<div class="cbb clearfix pixelgreen ">
	
							<h2 class="title">A louer! 
							</h2>

						<div id="pixels-info" class="box-content pixels-info">
    <div class="pixels-info-text clearfix">
        <img class="pixels-image" src="./web-gallery/v2/images/activitypoints/pixelpage_effectmachine.png" alt=""/>
        <p class="pixels-text">Crée l'événement en surprenant tout le monde dans ton appart !
</p>
    </div>
</div>
	
						
					</div>
				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>

			 

			     		
				<div class="habblet-container ">		
						<div class="cbb clearfix pixellightblue ">
	
							<h2 class="title">Effets ?
							</h2>
						<div id="pixels-info" class="box-content pixels-info">
    <div class="pixels-info-text clearfix">
        <img class="pixels-image" src="./web-gallery/v2/images/activitypoints/pixelpage_personaleffect.png" alt=""/>
        <p class="pixels-text">Equipe ton <?php echo $shortname; ?> pour qu'il soit à l'aise en toutes circonstances. Tu veux tous les regards braqués sur toi? C'est l'occasion!</p>
    </div>

</div>
	
						
					</div>
				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>
			 

			     		
				<div class="habblet-container ">		
						<div class="cbb clearfix pixeldarkblue ">
	
							<h2 class="title">Bonnes affaires? 
							</h2>
						<div id="pixels-info" class="box-content pixels-info">
    <div class="pixels-info-text clearfix">

        <img class="pixels-image" src="./web-gallery/v2/images/activitypoints/pixelpage_discounts.png" alt=""/>
        <p class="pixels-text">En gagnant des pixels tu peux vraiment payer tes mobis moins cher. Découvre vite comment?</p>
    </div>
</div>
	
						
					</div>
				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>
			 

</div>

<script type="text/javascript">
HabboView.run();
</script>	
				
<?php

include('templates/community/footer.php');

?>
