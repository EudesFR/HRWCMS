<?php
/*---------------------------------------------------+
| HoloCMS - Website and Content Management System
+----------------------------------------------------+
| Copyright � 2008 Meth0d
+----------------------------------------------------+
| HoloCMS is provided "as is" and comes without
| warrenty of any kind. 
+---------------------------------------------------*/

include('core.php');
include('includes/session.php');

$pagename = "Transactions";
$pageid = "6b";
$body_id = "home";

include('templates/community/subheader.php');
include('templates/community/header.php');

?>

<div id="container">
	<div id="content" style="position: relative" class="clearfix">
    <div id="column1" class="column">
				<div class="habblet-container ">		
						<div class="cbb clearfix brown ">
	
							<h2 class="title">Transactions de votre compte
							</h2>
						<div id="tx-log">

<div class="box-content">
Ceci est un aper�u de l'historique des transactions de cr�dit. Ils sont mis � jour d�s que la transaction est faite. Vous pouvez voir jusqu'� 50 enregistrements.
</div>

<table class="tx-history">
<thead>
	<tr>
		<th class="tx-date">Date</th>
		<th class="tx-amount">Activit�</th>
		<th class="tx-description">Description</th>
	</tr>
</thead>
<tbody>
<?php
$tick = 0;

$get_em = mysql_query("SELECT date,amount,descr FROM cms_transactions WHERE userid = '".$my_id."' ORDER BY id DESC LIMIT 50") or die(mysql_error());
while($row = mysql_fetch_assoc($get_em)){

	$tick++;
	if(IsEven($tick)){ $even = "even"; } else { $even = "odd"; }

	printf("	<tr class=\"%s\">
		<td class=\"tx-date\">%s</td>
		<td class=\"tx-amount\">%s</td>
		<td class=\"tx-description\">%s</td>
	</tr>",$even,$row['date'],$row['amount'],$row['descr']);
}
?>
</tbody>
</table>

</div>
	
						
					</div>
				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>
			 
</div><div id="column2" class="column">
				<div class="habblet-container ">		
						<div class="cbb clearfix brown ">
	
							<h2 class="title">Ton porte monnaie
							</h2>
						<div id="purse-habblet">
	<form method="post" action="credits.php" id="voucher-form">
<ul>
    <li class="even icon-purse">
        <div>Tu as actuellement :</div>
        <span class="purse-balance-amount"><?php echo $myrow['credits']; ?> Cr�dits</span>
        <div class="purse-tx"><a href="transactions.php">Mes transactions</a></div>
    </li>

    <li class="odd">
        <div class="box-content">
            <div>Entre un code cr�dits:</div>
            <input type="text" name="voucherCode" value="" id="purse-habblet-redeemcode-string" class="redeemcode" />
            <a href="#" id="purse-redeemcode-button" class="new-button purse-icon" style="float:left"><b><span></span>Submit</b><i></i></a>
        </div>
    </li>
</ul>
<div id="purse-redeem-result">
</div>	</form>
</div>

<script type="text/javascript">
	new PurseHabblet();
</script>
	
						
					</div>
				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>
			 
				<div class="habblet-container ">		
	
						
	
						
					
				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>			 
			 
</div>

<?php

include('templates/community/footer.php');

?>
