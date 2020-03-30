<?php
/*===================================================+
|| # HoloCMS - Website and Content Management System
|+===================================================+
|| # Copyright � 2008 Meth0d. All rights reserved.
|| # http://www.meth0d.org
|+===================================================+
|| # HoloCMS is provided "as is" and comes without
|| # warrenty of any kind. HoloCMS is free software!
|+===================================================*/

/*-------------------------------------------------------*\
| ****** NOTE REGARDING THE VARIABLES IN THIS FILE ****** |
+---------------------------------------------------------+
| If you get any errors while attempting to connect to    |
| MySQL, you will need to email your webhost because we   |
| cannot tell you the correct values for the variables    |
| in this file.                                           |
\*-------------------------------------------------------*/

//	****** MASTER DATABASE SETTINGS ******
//	These are the settings required to connect to your MySQL Database.
$sqlhostname = "localhost";
$sqlusername = "rockhote";
$sqlpassword = "korn45";
$sqldb = "rockhote_holodb";

//	****** STATUS CHECKS SYSTEM ******
//	This option will allow HoloCMS to perform full status checks. This,
//	however, slows down your site A LOT. It is therefore disabled by
//	default.
$enable_status_image = "0";

//	****** SITE PATH ******
//	The full URL to your site; with an slash added on the end.
$path = "http://rockhotel.exano.net/";

//	****** REFFERAL REWARD ******
//	The amount of credits a user recieves upon referring a friend to the
//	hotel. Set to '500' by default.
$reward = "500";

//	****** HOLOCMS SYSTEM ADMINISTRATOR ******
//	User ID of the System Administrator. Will be granted access to sensitive
//	features. Set to '1' by default. This setting will not change your
//	ingame priveliges.
$sysadmin = "1";

//	****** HOLOCMS ENCRYPTION SYSTEM ******
//	How HoloCMS stores passowrds.
//	Do NOT manually change this unless you know what you are doing,
//	doing so may corrupt your database.
$encryption = "new";
$hashtext = "";

//	****** BADGES ******
//	Where badges are located.
$cimagesurl = "http://rockhotel.exano.net/c_images/";
$badgesurl = "";

?>