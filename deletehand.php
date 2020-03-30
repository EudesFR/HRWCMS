<?php
/*===================================================+
|| # HoloCMS - Website and Content Management System
|+===================================================+
|| # Copyright &copy; 2008 Meth0d. All rights reserved.
|| # http://www.meth0d.org
|+===================================================+
|| # HoloCMS is provided "as is" and comes without
|| # warrenty of any kind. HoloCMS is free software!
|+===================================================+
|| # Badge Shop - Copyright &copy; 2008 BobbaLodge,
|| # Of RaGEZONE ;; www.BobbaLodge.servegame.com
|+===================================================*/

$allow_guests = true;

include('core.php');
include('includes/session.php');
include('includes/news_headlines.php');

$pagename = "Vide ta main!";
$pageid = "hand";

include('templates/community/subheader.php');
include('templates/community/header.php');

?>

<div id="container">
	<div id="content" style="position: relative" class="clearfix ">
    <div id="column1" class="column">
				<div class="habblet-container " id="collectible-current">		
						<div class="cbb clearfix green ">
	
							<h2 class="title">Vider sa main</h2>
						<div class="habblet box-content">
<p><strong><?php echo $msg; ?></strong></p>
							<left><h4><?php echo $name; ?>,</h4><br> Tu poss&egrave;des trop de mobis? Tu en a marre de prendre 20 minutes avant d'arriver &agrave; la fin de ta main? STOP! Ici tu peux vider ta main!<br><br> Cliques sur "Je vide ma main" pour effacer toute trace de mobis.						
			

<p id="collectibles-purchase">
			<p id="collectibles-purchase">
                 <center>
                   <form action="deletehandfinish" method="post">
<div class="habblet-button-row clearfix"><a class="new-button" id="delete_hand" href="deletehandfinish.php"><b>Je vide ma main!</b><i></i></a></div>
</form><Br><br></center>

				
			</p>
	</div>


	
						
					</div>
				</div>
				

<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>
    </div>
<div id="column2" class="column">
				<div class="habblet-container ">
										<div class="cbb clearfix red ">

											<h2 class="title">Attention
											</h2>
										<div id="notfound-looking-for" class="box-content">
										Attention, si tu cliques sur "Vider ma main" tout mobi sera effac&eacute;! Si tu aura cliqu&eacute; par erreur, o&ugrave; qu'il te restait un mobi dans ta main, nous ne pourrons pas le r&eacute;cup&eacute;rer et nous ne sommes pas responsable de votre perte.</b><br />

<br /><img src="./web-gallery/images/frank/sorry.gif" alt="" width="57" height="88" />
                                             




					</div>
				</div>


					</div>
				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>
    </div>
	<?php include('templates/community/footer.php');

?>
</body>
</html>
