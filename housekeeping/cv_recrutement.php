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

//MODULE pour les recrutement cv crée par Monio62 ou monio de britania!

require_once('../core.php');
if($hkzone !== true){ header("Location: index.php?throwBack=true"); exit; }
if(!session_is_registered(acp)){ header("Location: index.php?p=login"); exit; }

$pagename = "Les Cv de recrutement";

@include('subheader.php');
@include('header.php');
?>
<table cellpadding='0' cellspacing='8' width='100%' id='tablewrap'>
<tr> <td width='22%' valign='top' id='leftblock'>
 <div>
 <!-- LEFT CONTEXT SENSITIVE MENU -->
<?php @include('usermenu.php'); ?>
 <!-- / LEFT CONTEXT SENSITIVE MENU -->
 </div>
 </td>
 <td width='78%' valign='top' id='rightblock'>
 <div><!-- RIGHT CONTENT BLOCK -->
 <div class='tableborder'>
<?php
if(isset($_GET['id'])){

    if(is_numeric($_GET['id'])){

	$id_cv = mysql_real_escape_string($_GET['id']); 
	$retour_voir_cv = mysql_query("SELECT * FROM cms_recrutement WHERE id=".$id_cv."") or die(mysql_error());
    $donnees_voir_cv = mysql_fetch_array($retour_voir_cv);

mysql_query("UPDATE cms_recrutement SET lu_cv='1' WHERE id='".$id_cv."'") or die(mysql_error());

//variables
$pseudo = $donnees_voir_cv['pseudo'];
$email = $donnees_voir_cv['email'];
$date = $donnees_voir_cv['date_envoi'];
$poste = $donnees_voir_cv['poste_souhaiter'];
$competences = utf8_encode($donnees_voir_cv['comptences']); //ne pas toucher a utf8 encode c pr encoer els caractere php en utf8 :)
$motivations = utf8_encode($donnees_voir_cv['motivations']);
$age = $donnees_voir_cv['age'];
?>
<div class="tableheaderalt">CV de <?php echo $pseudo; ?></div>
<form action="index.php?p=cv_poster&id=<?php echo $id_cv; ?>" method="post">
<table width='100%' cellspacing='0' cellpadding='5' align='center' border='0'>
<?php
if(isset($_POST['accepte_cv'])){

//selectionne l'id du destinataire et de l'expediteur pour le mp priver!

$retour_expediteur = mysql_query("SELECT id FROM users WHERE name='".$_SESSION['hkusername']."'") or die(mysql_error());
$donnees_expediteur = mysql_fetch_array($retour_expediteur);

$id_expediteur = $donnees_expediteur['id'];

$retour_destinataire = mysql_query("SELECT id FROM users WHERE name='".$pseudo."'") or die(mysql_error());
$donnees_destinataire = mysql_fetch_array($retour_destinataire);

$id_destinataire = $donnees_destinataire['id'];

//variables
$accepter_le_cv = $_POST['accepte_cv'];
$pseudo_destinataire = $_POST['pseudo'];
$email_destinataire = $_POST['email'];
$poste_destinataire = $_POST['poste'];
$sujet_mp = 'Votre Demande de recrutement sur '.$sitename.'';
$date_actuel = date('d/m/Y H\hi s\s');
$mp_a_envoyer = 'Bonjour '.$pseudo_destinataire.', Ta demande de recrutement sur le site a était '.$accepter_le_cv.'. Pour en savoir plus rend toi vite sur le site, ou repond a cette email ou ce message. Bonne journée.';
//on envoi un message priver
mysql_query("INSERT INTO cms_minimail (senderid, to_id, subject, date, message, read_mail, deleted, conversationid) VALUES ('".$id_expediteur."','".$id_destinataire."','".$sujet_mp."','".$date_actuel."','".$mp_a_envoyer."','0','0','0')") or die(mysql_error());

mysql_query("UPDATE cms_recrutement SET cv_accepter='".$_POST['accepte_cv']."' WHERE id='".$id_cv."'") or die(mysql_error());

?>
<tr>
<td class='tablerow1'  width='40%'  valign='middle'><b></b></td>
<?php
    if($accepter_le_cv == 'Accepeter'){
?>
<td class='tablerow2'  width='60%'  valign='middle'><font color="green">Vous avez accepter son recrutement :), il reçevra un e-mail automatiquement + un message dans sa messagerie sur la home pour lui dire que il est accepter!</font></td>
<?php
    }else if($accepter_le_cv == 'Refuser'){
?>
<td class='tablerow2'  width='60%'  valign='middle'><font color="red">Vous avez refuser son recrutement , il reçevra un e-mail automatiquement + un message dans sa messagerie sur la home pour lui dire que il n'est pas accepter!</color></td>
<?php
    }
?>
</tr>
<?php
}
?>
<tr>
<td class='tablerow1'  width='40%'  valign='middle'><b>Pseudo</b></td>
<td class='tablerow2'  width='60%'  valign='middle'><input type='text' name="pseudo" disabled="disabled" value="<?php echo $pseudo; ?>" size='30' class='textinput'></td>
</tr>
<tr>
<td class='tablerow1'  width='40%'  valign='middle'><b>Email</b></td>
<td class='tablerow2'  width='60%'  valign='middle'><input type='text' name="email" disabled="disabled" value="<?php echo $email; ?>" size='30' class='textinput'></td>
</tr>
<tr>
<td class='tablerow1'  width='40%'  valign='middle'><b>Date d'envoi</b></td>
<td class='tablerow2'  width='60%'  valign='middle'><input type='text' disabled="disabled" value="<?php echo $date; ?>" size='30' class='textinput'></td>
</tr>
<tr>
<td class='tablerow1'  width='40%'  valign='middle'><b>Poste souhaiter</b></td>
<td class='tablerow2'  width='60%'  valign='middle'><input type='text' name="poste" disabled="disabled" value="<?php echo $poste; ?>" size='30' class='textinput'></td>
</tr>
<tr>
<td class='tablerow1'  width='40%'  valign='middle'><b>Ces compétences</b></td>
<td class='tablerow2'  width='60%'  valign='middle'><textarea disabled="disabled" cols="60" rows="5" wrap="soft" class="multitext"><?php echo $competences; ?></textarea></td>
</tr>
<tr>
<td class='tablerow1'  width='40%'  valign='middle'><b>Ces motivations</b></td>
<td class='tablerow2'  width='60%'  valign='middle'><textarea disabled="disabled" cols="60" rows="5" wrap="soft" class="multitext"><?php echo $motivations; ?></textarea></td>
</tr>
<tr>
<td class='tablerow1'  width='40%'  valign='middle'><b>Son age</b></td>
<td class='tablerow2'  width='60%'  valign='middle'><input type='text' disabled="disabled" value="<?php echo $age; ?> Ans" size='30' class='textinput'></td>
</tr>
<tr>
<?php
if($donnees_voir_cv['cv_accepter'] == '0'){
?>
<tr>
<td align='center' class='tablesubheader' colspan='2'>
<input type='submit' name="accepte_cv" value='Accepter' class='realbutton' accesskey='s'>
<input type='submit' name="accepte_cv" value='Refuser' class='realbutton' accesskey='s'></td>
</tr>
<?php
}else{
echo '<b><font color="red">Ce cv a deja était étudier</font></b>';
}
?>
</form></table></div>
<?php
    }else{
?>
<b>ERREUR</b><br/>
<font color="red"><b>Oops cv inexistant ou vous êtes arriver sur cette page par effraction!</b></font>
<?php
	}
	
}else{
?>
 <div class='tableheaderalt'><?php echo $sitename; ?> Liste des cv reçus</div>
 <table cellpadding='4' cellspacing='0' width='100%'>
 <tr>
  <td class='tablesubheader' width='10%' align='center'>Lu/Non lu</td>
  <td class='tablesubheader' width='29%'>Pseudo</td>
  <td class='tablesubheader' width='30%' align='center'>E-Mail</td>
  <td class='tablesubheader' width='20%' align='center'>Date d'envoi</td>
  <td class='tablesubheader' width='10%' align='center'>Poste souhaiter</td>
  <td class='tablesubheader' width='10%' align='center'>Voir</td>
 </tr>
<?php
$retour_cv = mysql_query("SELECT * FROM cms_recrutement ORDER BY ID") or die(mysql_error());
while($donnees_cv = mysql_fetch_array($retour_cv)){
?>
  <tr>
  <td class='tablerow2' align='center'><u><b><?php if($donnees_cv['lu_cv'] == '1'){ echo 'Lu'; }else if($donnees_cv['lu_cv'] == '0'){ echo 'Non-lu'; } ?></b></u></td>
  <td class='tablerow2' align='center'><?php echo $donnees_cv['pseudo']; ?></td>
  <td class='tablerow2' align='center'><a href='mailto:<?php echo$donnees_cv['email']; ?>'><?php echo$donnees_cv['email']; ?></a></td>
  <td class='tablerow2' align='center'><?php echo $donnees_cv['date_envoi']; ?></td>
  <td class='tablerow2' align='center'><?php echo $donnees_cv['poste_souhaiter']; ?></td>
  <td class='tablerow2' align='center'><a href='index.php?p=cv_poster&id=<?php echo $donnees_cv['id']; ?>'><img src='./images/edit.gif' alt='Edit User Data'></a></td>
  </tr>
<?php
 }
?>
 
 </table>
<?php
}
?>
</div>
	 </div><!-- / RIGHT CONTENT BLOCK -->
	 </td></tr>
</table>
</div><!-- / OUTERDIV -->
<div align='center'><br />
<?php
$mtime = explode(' ', microtime());
$totaltime = $mtime[0] + $mtime[1] - $starttime;
printf('Time: %.3f', $totaltime);
?>
</div>