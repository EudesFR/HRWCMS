<?php
/*---------------------------------------------------+
| HoloCMS - Website and Content Management System
+----------------------------------------------------+
| Copyright © 2008 Meth0d
+----------------------------------------------------+
| HoloCMS is provided "as is" and comes without
| warrenty of any kind.
+---------------------------------------------------*/

if (!defined("IN_HOLOCMS")) { header("Location: ../../index.php"); exit; }

if(!isset($pagename)){ $pagename = "Crée ton avatar, Décore ton appart, Chatte et fait-toi plein d'amis."; }

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title><?php echo $shortname; ?> ~ <?php echo $pagename; ?> </title>

<script type="text/javascript">
var andSoItBegins = (new Date()).getTime();
</script>
    <link rel="shortcut icon" href="favicon.ico" type="image/vnd.microsoft.icon" />
    <link rel="alternate" type="application/rss+xml" title="Habbo ~ RSS" href="http://www.habbo.co.uk/articles/rss.xml" />
<script src="./V32/libs2.js" type="text/javascript"></script>

<script src="./V32/landing.js" type="text/javascript"></script>
<link rel="stylesheet" href="/styles/local/uk.css" type="text/css" />

<script src="/js/local/uk.js" type="text/javascript"></script>
<link rel="stylesheet" href="./V32/frontpage.css" type="text/css" />

<script type="text/javascript">
document.habboLoggedIn = false;
var habboName = null;
var ad_keywords = "";
var habboReqPath = "";
var habboStaticFilePath = "http://images.habbohotel.co.uk/habboweb/32_b68c6e81935491efe90d527a0b737044/11/web-gallery";
var habboImagerUrl = "/habbo-imaging/";
var habboPartner = "";
window.name = "habboMain";
if (typeof HabboClient != "undefined") { HabboClient.windowName = "client"; }

</script>

<style type="text/css">
body {background-color: #49B0C1}
</style>

<meta name="description" content="Habbo is a virtual world where you can meet and make friends." />
<meta name="keywords" content="habbo,virtual world,play games,enter competitions,make friends" />


<!--[if IE 8]>
<link rel="stylesheet" href="./V32/ie8.css" type="text/css" />
<![endif]-->
<!--[if lt IE 8]>
<link rel="stylesheet" href="./V32/ie.css" type="text/css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" href="./V32/ie6.css" type="text/css" />
<script src="./V32/pngfix.js" type="text/javascript"></script>
<script type="text/javascript">
try { document.execCommand('BackgroundImageCache', false, true); } catch(e) {}
</script>

<style type="text/css">
body { behavior: url(/js/csshover.htc); }
</style>
<![endif]-->
<meta name="build" content="32-BUILD109 - 27.04.2009 11:45 - uk" />
</head>
