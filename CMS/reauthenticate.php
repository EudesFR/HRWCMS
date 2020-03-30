<?php
/*---------------------------------------------------+
| HoloCMS - Website and Content Management System
+----------------------------------------------------+
| Copyright &copy; 2008 Meth0d
+----------------------------------------------------+
| HoloCMS is provided "as is" and comes without
| warrenty of any kind.
+---------------------------------------------------*/

include('core.php');
include('includes/session.php');

$noads = true;

if(isset($_POST['password'])) {
	$username = FilterText($name);
	$password = FilterText($_POST['password']);
	//Hashes and salts the password --encryption--
	$password_hash = HoloHash($password, $username);

	if(empty($password)){
	header("location:./reauthenticate.php?error=2");
	} else {
	//Checks the hashed password --encrpytion--
	$sql = mysql_query("SELECT id FROM users WHERE name = '".$username."' and password = '".$password_hash."' LIMIT 1") or die(mysql_error());
	$rows = mysql_num_rows($sql);
		if($rows < 1){
		header("location:./reauthenticate.php?error=1");
		} else {
		$_SESSION['username'] = $username;
		//Makes the hash the password for this session --encryption--
		$_SESSION['password'] = $password_hash;
		include('./includes/sso.php');
		header("location:".$_POST['page']."");
		}
	}
}

if(isset($_GET['error'])){
$errorno = $_GET['error'];
	if($errorno == 1){
	$error = 1;
	} else if($errorno == 2){
	$error = 2;
	} else {
	$error = 0;
	}
}

include("locale/".$language."/login.php");
include('templates/login/subheader.php');

?>

<body id="popup" class="process-template">

<div id="overlay"></div>

<div id="container">
	<div class="cbb process-template-box clearfix">
		<div id="content">

			<div id="header" class="clearfix">
				<h1><a href="index.php"></a></h1>
				<ul class="stats">
					    <li class="stats-online"><span class="stats-fig"><?php echo $online_count; ?></span> <?php echo $locale['users_online_now']; ?></li>
					    <?php if($enable_status_image == "1"){ ?><li class="stats-visited"><img src='./web-gallery/v2/images/<?php echo $online; ?>.gif' alt='Server Status' border='0'></li><?php } ?>
				</ul>
			</div>
			<div id="process-content">
	        	<div id="column1" class="column">
	<div class="cbb clearfix green">
		<h2 class="title">Entrez votre mot de passe</h2>
		<div class="box-content">
			<p>Tu as besoin de retaper ton mot de passe pour la cause d'avoir quitter longtemps.</p>
			<p>Si tu n'est pas <strong><?php echo "".$name.""; ?></strong>, merci de se <a href="logout.php">d&eacute;connecter</a>.</p>

			<p>Si tu as oubli&eacute; ton mot de passe : <a href="forgot.php">cliques ici</a>.</p>
		</div>
	</div>
</div>

<?php if($error == 1){ ?>
<div id="column2" class="column">
<div class="action-error flash-message"><div class="rounded"><ul>
	<li>Le mot de passe fourni est incorrect.</li>
</ul></div></div>
<?php } else if($error == 2){ ?>
<div id="column2" class="column">
<div class="action-error flash-message"><div class="rounded"><ul>
	<li>Entrez votre mot de passe</li>
</ul></div></div>
<?php } else { ?>
<div id="column2" class="column">
<?php } ?>

<div class="cbb gray clearfix">
    <h2 class="title">Se connecter</h2>

    <div class="box-content clearfix" id="login-habblet">

        <form action="reauthenticate.php" method="post" class="login-habblet">
		<?php
			if(isset($_GET['roomId']) && $_GET['forwardId'] == "2"){
				if(isset($_GET['wide'])) {
					$forwardid = "client.php?forwardId=".$_GET['forwardId']."&roomId=".$_GET['roomId']."&wide=".$_GET['wide'];
				} else {
					$forwardid = "client.php?forwardId=".$_GET['forwardId']."&roomId=".$_GET['roomId'];
				}
			} elseif(isset($_GET['wide'])) {
					$forwardid = "client.php?wide=".$_GET['wide'];
			} else {
					$forwardid = "client.php";
			}
		?>
            <input type="hidden" name="page" value="<?php echo $forwardid ?>" />
            <ul>
                <li>
                    <label for="login-username" class="login-text">Pseudo</label>
                    <span class="username"><?php echo "".$name.""; ?></span>
                </li>
                <li>

                    <label for="login-password" class="login-text">Mot de passe</label>
                    <input tabindex="2" type="password" class="login-field" name="password" id="password" />
                    <input type="submit" value="Sign in" class="submit" id="login-submit-button"/>
					<a style="float: left; margin-left: 0pt; display: none" class="new-button" id="login-submit-new-button" href="#"><b style="padding-left: 10px; padding-right: 7px; width: 55px;">Entrer</b><i></i></a>
                </li>
            </ul>
        </form>

    </div>

</div>
</div>
<script type="text/javascript">
	HabboView.add(LoginFormUI.init);
	HabboView.add(RememberMeUI.init);
</script>
<?php

include('templates/login/footer.php');

?>
