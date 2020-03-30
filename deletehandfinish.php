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

<center>
<div id="container">
	<div id="content" style="position: relative" class="clearfix">
    <div id="column1" class="column">
				<div class="habblet-container " id="collectible-current">		
						<div class="cbb clearfix blue ">
	
							<h2 class="title">Main vid&eacute;e</h2>

						<div id="collectible-current-content" class="clearfix">
			

<p id="collectibles-purchase">
			<p id="collectibles-purchase">
                 <center>
                  <?php
$loeschen = "DELETE FROM furniture
WHERE roomid= '0' AND ownerid= '$my_id'";
$loesch = mysql_query($loeschen);
echo "Ta main est vid&eacute;e! Recharge l'h&ocirc;tel si ce n'est pas le cas.";
?></center>
<p id="collectibles-purchase">
			<p id="collectibles-purchase">
                 <center>
                   <div class="habblet-button-row clearfix"><a class="new-button" id="delete_hand" href="me.php"><b>Retourner &agrave; l'accueil!</b><i></i></a></div>
<Br><br></center>
				
			</p>
	</div>


	
						
					</div>
				</div>
				
</center>
<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>
    </div>
    
	<?php include('templates/community/footer.php');

?>
</body>
</html>
