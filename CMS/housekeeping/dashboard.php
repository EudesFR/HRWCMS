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
if(!session_is_registered(acp)){ header("Location: index.php?p=login"); exit; }

$pagename = "Dashboard";

if(isset($_POST['notes'])){
	$notes = FilterText($_POST['notes']);
	mysql_query("UPDATE cms_system SET admin_notes = '".$notes."' LIMIT 1") or die(mysql_error());
}

$tmp = mysql_query("SELECT * FROM cms_system LIMIT 1") or die(mysql_error());
$system = mysql_fetch_assoc($tmp);

$onlineCutOff = (time() - 601);
$onlineUsers = mysql_evaluate("SELECT COUNT(*) FROM users WHERE online > " . $onlineCutOff);

@include('subheader.php');
@include('header.php');
?>
<table cellpadding='0' cellspacing='8' width='100%' id='tablewrap'>
<tr>	<td width='100%' valign='top' id='rightblock'>
	 <div><!-- RIGHT CONTENT BLOCK -->
	 
	 
	 <div style='font-size:30px; padding-left:7px; letter-spacing:-2px; border-bottom:1px solid #EDEDED'>
 <img src="./images/holocms-logo.png"><b>Housekeeping</b>
</div>
<br />
<div id='ipb-get-members' style='border:1px solid #000; background:#FFF; padding:2px;position:absolute;width:120px;display:none;z-index:100'></div>
<!--in_dev_notes-->
<!--in_dev_check-->
<table border='0' width='100%' cellpadding='0' cellspacing='4'>
<tr>
 <td valign='top' width='75%'>
	<table border='0' width='100%' cellpadding='0' cellspacing='0'>
	<tr>
	 <td>
		<div class='homepage_pane_border'>
		 <div class='homepage_section'>Tâches et statistiques</div>
		 <table width='100%' cellspacing='0' cellpadding='4'>
			 <tr>
			  <td width='50%' valign='top'>
			  	<div class='homepage_border'>
 <div class='homepage_sub_header'>Aperçu du système</div>
 <table width='100%' cellpadding='4' cellspacing='0'>
 <tr>
  <td class='homepage_sub_row' width='60%'><strong>Version de HRW Cms©</strong> &nbsp;</td>
  <td class='homepage_sub_row' width='40%'><strong>Version 2.0</td>
 </tr>
 <tr>
  <td class='homepage_sub_row'><strong>Membres</strong></td>
  <td class='homepage_sub_row'>
  	<?php echo mysql_evaluate("SELECT COUNT(*) FROM users") . " (<a href='index.php?p=onlinelist'>" . $onlineUsers . "</a> en ligne)"; ?>
  </td>
 </tr>
 <tr>
  <td class='homepage_sub_row'><strong>Apparts</strong></td>
  <td class='homepage_sub_row'>
  	<?php echo mysql_evaluate("SELECT COUNT(*) FROM rooms"); ?>
	(dont <?php echo mysql_evaluate("SELECT COUNT(*) FROM rooms WHERE owner IS NULL"); ?> Lieux Publiques)
  </td>
 </tr>
 <tr>
  <td class='homepage_sub_row'><strong>Mobis</strong></td>
  <td class='homepage_sub_row'>
  	<?php echo mysql_evaluate("SELECT COUNT(*) FROM furniture"); ?>
  </td>
 </tr>
 <tr>
  <td class='homepage_sub_row'><strong>Groupes</strong></td>
  <td class='homepage_sub_row'>
  	<?php echo mysql_evaluate("SELECT COUNT(*) FROM groups_details"); ?>
  </td>
 </tr>
 <tr>
  <td class='homepage_sub_row'><strong>Stafflog Entries</strong></td>
  <td class='homepage_sub_row'>
  	<?php echo mysql_evaluate("SELECT COUNT(*) FROM system_stafflog"); ?>
  </td>
 </tr>
  <tr>
  <td class='homepage_sub_row'><strong>Ban Actifs</strong></td>
  <td class='homepage_sub_row'>
  	<a href='index.php?p=banlist'><?php echo mysql_evaluate("SELECT COUNT(*) FROM users_bans"); ?></a>
  </td>
 </tr>

 </table>
</div>
			  </td>
			  <td width='50%' valign='top'>
			  	<div class='homepage_border'>
 <div class='homepage_sub_header'>Configuration Du Serveur</div>
 <table width='100%' cellpadding='4' cellspacing='0'>
 <tr>
  <td class='homepage_sub_row'><strong>Game Port</strong></td>
  <td class='homepage_sub_row'>
  	<?php echo FetchServerSetting('server_game_port'); ?>
  </td>
 </tr>
 <tr>
  <td class='homepage_sub_row'><strong>&nbsp;&nbsp;&nbsp;&nbsp;- MUS Port</strong></td>
  <td class='homepage_sub_row'>
  	<?php echo FetchServerSetting('server_mus_port'); ?>
  </td>
 </tr>
 <tr>
  <td class='homepage_sub_row'><strong>Maximum de connexion</strong></td>
  <td class='homepage_sub_row'>
  	<?php echo FetchServerSetting('server_game_maxconnections'); ?>
  </td>
 </tr>
 <tr>
  <td class='homepage_sub_row'><strong>Trading Enabled</strong></td>
  <td class='homepage_sub_row'>
  	<?php echo FetchServerSetting('trading_enable', true); ?>
  </td>
 </tr>
 <tr>
  <td class='homepage_sub_row'><strong>Recycler Enabled</strong></td>
  <td class='homepage_sub_row'>
  	<?php echo FetchServerSetting('recycler_enable', true); ?>
  </td>
 </tr>
 <tr>
  <td class='homepage_sub_row'><strong>Wordfilter Enabled</strong></td>
  <td class='homepage_sub_row'>
  	<?php echo FetchServerSetting('wordfilter_enable', true); ?> (<?php echo FetchServerSetting('wordfilter_censor'); ?>)
  </td>
 </tr>
 </table>
</div>
			  </td>		   </tr>
	    </table>
	   </div>
	 </td>
	</tr>
	<tr>
	 <td>&nbsp;</td>
	</tr>
	<tr>
	 <td>
		<div class='homepage_pane_border'>
		 <div class='homepage_section'>Communication</div>
		 <table width='100%' cellspacing='0' cellpadding='4'>
			 <tr>
			  <td valign='top' width='50%'>
			  	<div class='homepage_border'>
					<div class='homepage_sub_header'>Notes</div>
					<br /><div align='center'>
<form action='index.php?p=dashboard&do=save' method='post'>
<textarea name='notes' style='background-color:#F9FFA2;border:1px solid #CCC;width:95%;font-family:verdana;font-size:10px' rows='8' cols='25'><?php echo HoloText($system['admin_notes']); ?></textarea>
<div><br /><input type='submit' value='Sauvegarder les notes' class='realbutton' /></div>
</form>
</div><br />
				</div>
			  </td>
			  <td width='50%' valign='top'>
			  	<div class='homepage_border'>
 <div class='homepage_sub_header'><?php echo $sitename; ?> Administrateurs</div>
 <table width='100%' cellpadding='4' cellspacing='0'>
<?php
$get_em = mysql_query("SELECT id,name,email FROM users WHERE rank > 6 ORDER BY name ASC LIMIT 20") or die(mysql_error());
while($row = mysql_fetch_assoc($get_em)){
	printf(" <tr>
 <td class='tablerow1' align='center'>
	 <strong><div style='font-size:12px'><a href='../user_profile.php?name=%s' target='_blank'>%s</a></strong> (ID: %d)
</td>
 <td class='tablerow2'>
	<div style='margin-top:6px'><a href='mailto:%s'>%s</a></div>
</td>
</tr>", $row['name'], $row['name'], $row['id'], $row['email'], $row['email']);
}
?>
 </table>
</div>
			  </td>
			 </tr>
		 </table>
		</div>
	 </td>
	</tr>
	
	</table>
 </td>
 <td valign='top' width='25%'>
	<div id='acp-update-wrapper'>
		<div class='homepage_pane_border' id='acp-update-normal'>
		 <div class='homepage_section'>HRW Cms© Download Store</div>
			<div style='font-size:12px;padding:4px; text-align:center'>
                                	<img src="logo_store.png"><br>
				
<br>
<b><u>   Voici Les Derni&egrave;res Nouveaut&eacute;s Pour HRW Cms&copy :</b></u><br><br>

<IFRAME src="http://habboretroweb.net/hrwcms/hrwcmsnews.php" width=500 height=80 scrolling=auto frameborder=0 ></IFRAME><br>
<a href="http://forum.habboretroweb.net/forumdisplay.php?fid=37">Voir Plus De Modules >></a>

<br><br>
<b><u>Mise à Jour De Votre Version :</b></u><br><br>
Vous Utilisez La Version : <b><i>2.1</i></b><br>
La Dernière Version Est La : <i><IFRAME src="http://habboretroweb.net/hrwcms/version.php" width=100 height=13 scrolling=auto frameborder=0 ></IFRAME></i><br><br>
Plus D'informations Sur <a href="http://habboretroweb.net">HabboRetroWeb.net</a> !<br>

			</div>
		</div>
		<br />
	</div>
	<div id='acp-update-wrapper'>
		<div class='homepage_pane_border' id='acp-update-normal'>
		 <div class='homepage_section'>Faire un Don pour HabboRetroWeb ?</div>
			<div style='font-size:12px;padding:4px; text-align:center'>
				<p>
					Si Vous êtes Satisfait par notre service ainsi que notre CMS, vous pouvez à tout moment nous faire un <b>DON</b> ! N'oubliez pas que ce CMS a pris du temps à être réalisé et il vous est proposé Gratuitement !
<i>Pour faire un don <a href="http://habboretroweb.net/don.html">Cliquez Ici</a> ! Merci.</i>
		</div>
		
	</div>
	
		<br />
	</div>
	 </div><!-- / RIGHT CONTENT BLOCK -->
	 </td></tr>
</table>
</div><!-- / OUTERDIV -->
<div align='center'><br />
<?php
$mtime = explode(' ', microtime());
$totaltime = $mtime[0] + $mtime[1] - $starttime;
printf('Temps : %.3f', $totaltime);
?>
</div>