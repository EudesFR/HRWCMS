<?php
/*---------------------------------------------------+
| HoloCMS - Website and Content Management System
+----------------------------------------------------+
| Copyright © 2008 Meth0d
+----------------------------------------------------+
| HoloCMS is provided "as is" and comes without
| warrenty of any kind. 
+---------------------------------------------------*/

if (!defined("IN_HOLOCMS")) { header("Location: ../index.php"); exit; }

mysql_connect("$sqlhostname", "$sqlusername", "$sqlpassword")or die("<br><font size='2' face='Tahoma'><b>BioCMS Erreur de configuration:</b><br>incapable de se connecter au serveur MySQL fourni. S'il vous plaît examiner le message d'erreur ci-dessus pour plus de détails.</font>");
mysql_select_db("$sqldb")or die("<br><font size='2' face='Tahoma'><b>BioCMS Erreur de configuration:</b><br>Impossible de sélectionner la base de données que vous avez fournis.</font>");

?>