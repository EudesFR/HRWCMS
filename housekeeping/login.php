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

require_once('../core.php');
if($hkzone !== true){ header("Location: index.php?throwBack=true"); exit; }
if(session_is_registered(acp)){ header("Location: index.php?loginThrowBack=true"); exit; }

$pagename = "Login";

if(isset($_POST['username'])){

	$form_name = FilterText($_POST['username']);
	$form_pass = HoloHash($_POST['password'], $_POST['username']);

	$check = mysql_query("SELECT id,name FROM users WHERE name = '" . $form_name . "' AND password = '" . $form_pass . "' AND rank > 5 LIMIT 1") or die(mysql_error());
	$valid = mysql_num_rows($check);

	if(!empty($form_name) && !empty($form_pass)){
		if($valid > 0){
			$row = mysql_fetch_assoc($check);

			$_SESSION['acp'] = true;
			$_SESSION['hkusername'] = $row['name'];
			$_SESSION['hkpassword'] = $form_pass;

			$my_id = $row['id'];

				// Log them in on the site as well if needed
				if(!session_is_registered(username)){
					$_SESSION['username'] = $row['name'];
					$_SESSION['password'] = $form_pass;
				}

			header("Location: index.php?p=dashboard");
			mysql_query("INSERT INTO system_stafflog (action,message,note,userid,targetid,timestamp) VALUES ('Housekeeping','".$_SESSION['hkusername']." authenticated from ".$remote_ip."','login.php','".$my_id."','','".$date_full."')") or die(mysql_error());
			exit;
		} else {
			$msg = "Mot de passe invalide";
		}
	} else {
		$msg = "Vos identifient";
	}

} elseif($notify_logout == true){
	$msg = "Deconexion du paneau de gestion réussie";
} else {
	$msg = "Pas de session d'administration trouver !";
}

include('subheader.php');

?>
<body style='background-image:url(&#039;images/blank.gif&#039;)'>
<div id='loading-layer' style='display:none'>
	<div id='loading-layer-shadow'>
	   <div id='loading-layer-inner' >
		   <img src='./images/loading_anim.gif' style='vertical-align:middle' border='0' alt='Loading...' /><br />
		   <span style='font-weight:bold' id='loading-layer-text'>Loading Data. Please Wait...</span>
	   </div>
	</div>
</div>
<div id='ipdwrapper'><!-- IPDWRAPPER -->
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div align='center'>
<div style='width:500px'>
<div class='outerdiv' id='global-outerdiv'><!-- OUTERDIV -->
<table cellpadding='0' cellspacing='8' width='100%' id='tablewrap'>
<tr>
 <td id='rightblock'>
 <div>
 <form id='loginform' action='index.php?p=login&do=submit' method='post'>
 <input type='hidden' name='qstring' value='' />
  <table width='100%' cellpadding='0' cellspacing='0' border='0'>
  <tr>
   <td width='200' class='tablerow1' valign='top' style='border:0px;width:200px'>
   <div style='text-align:center;padding-top:20px'>
   	<img src='./images/acp-login-lock.gif' alt='Housekeeping' border='0' />
   </div>
   <br />
   <div class='desctext' style='font-size:10px'>
   <div align='center'><strong>Bienvenue sur l'interface de gestion</strong></div>
   <br />
  	<div style='font-size:9px;color:gray'>Cette page est réserver a la team de <?php echo $shortname; ?> si tu ne fait pas partie de la team de <?php echo $shortname; ?> identifiez-vous.<br /><br />Si vous avait oublier votre mot de passe <a href='../forgot.php'>cliquer ici</a> Ou conctacter l'administrateur</div>
   </div>
   </td>
   <td width='300' style='width:300px' valign='top'>
	 <table width='100%' cellpadding='5' cellspacing='0' border='0'>
	 <tr>
	  <td colspan='2' align='center'>
		 <br />
		 <img src='./images/holocms-logo.png' alt='BioCMS'><div style='font-weight:bold;color:red'><?php echo $msg; ?></div><br />
	  </td>
	 </tr>
	 <tr>		<td align='right'><strong>Nom</strong></td>	  <td><input style='border:1px solid #AAA' type='text' size='20' name='username' id='namefield' value='<?php if(!isset($_POST['username'])){ echo $name; } else { echo htmlentities($_POST['username'],ENT_QUOTES); } ?>' /></td>
	 </tr>
	 <tr>
	  <td align='right'><strong>Mot de passe</strong></td>
	  <td><input style='border:1px solid #AAA' type='password' size='20' name='password' value='' /></td>
	 </tr>
	 <tr>
	  <td colspan='2' align='center'><input type='submit' style='border:1px solid #AAA' value='Valider' /></td>
	 </tr>
	 <tr>
	  <td colspan='2'><br />

	  </td>
	 </tr>
	</table>
   </td>
  </tr>
  </table>
 </form>

 </div>
 </td>
</tr>
</table>
</div><!-- / OUTERDIV -->

</div>
</div>
<script type='text/javascript'>
<!--
  if (top.location != self.location) { top.location = self.location }

  try
  {
  	window.onload = function() { document.getElementById('namefield').focus(); }
  }
  catch(error)
  {
  	alert(error);
  }

//-->
</script>