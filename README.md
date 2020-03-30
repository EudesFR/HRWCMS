<html><img src="https://i.imgur.com/6XWkZ6T.png">
<h3>Special quote from the directory owner :</h3>
  
 <blockquote><justify><i><a href="http://forum.ragezone.com/members/861739.html"><b>Quackster</b></a>, you think you're smarter than everyone else when someone asks you for help, you want to keep everything to yourself like a poor bugger, so just for that, I decided to create a complete v26 pack, 100% French style, so that you understand that you have to share in life, that <a href="https://classichabbo.com/"><b>ClassicHabbo</b></a> is far from being exclusive (let's face it) and that you shouldn't fail people who ask you for help. Fuck you dude, from someone who knows how to share when they see people in need!</i></justify></blockquote>
 
 <h3>Special thanks to</h3>
  <justify>
    <li> <b>Vict0r</b> for this sumptuous CMS.</li>
    <li> <b>Meth0d</b> for his commitment and generosity to the Habbo community in the years 2009 - 2012 and this emulator.</li>
    <li> <b>HabboRetroWeb</b> for this community of beginners who have learned and passed on their skills to other users.</li>
    <li> <b><a href="https://habbo-dev.fr/membre/748-swayn/">Swayn</a></b> for his years of dedication to the Habbo server community, and his golden friendship.</li>
    <li> <b><a href="https://hsource.fr/">HSource</a></b> mainly for own and shared french dcrs.</li>
  </justify>
  
  <h3>Contents of the pack</h3>
  <li>HRW CMS v2.0</li>
  <li>Holograph Emulator</li>
  <li>HSource DCR's</li>
  
 
<h3>Server Requirements</h3>
<li>PHP <b>5.2</b></li>
<li>Apache <b>2.x</b></li>
<li>OPCache <b>Disabled</b></li>
<li>Brain</li>
<li>MySQL (MariaDB)</li>

<hr>

<h3>CMS Installation Guide</h3>
<li>Download the entire pack of this directory</li>
<li>Start by transferring the contents of the "CMS" folder to your website</li>
<li>To do things properly, I strongly advise to dissociate the DCR's from the CMS by creating a sub-domain specially designed to contain the DCR's (but you can, if you want, create a "v26" folder at the root of your website and transfer the DCR's there)</li>
<li>Once the DCR's have been transferred, you will have to go to the root folder, and modify the file "<b>vars.txt</b>", by replacing "<b>http://####SITE####/v26/</b>" by the link of your DCR's</li>
<li>It will then be necessary to import the "<b>holosql.sql</b>" database into your database</li>
<li>Once the CMS, DCR's and SQL have been imported, you'll need to go to "http://<b>YOURSITE</b>/install".</li>
<li>You will then have to follow the installation system and insert the required values</li>
<li>Once the installation process is complete, you will need to remove the files "<b>install.php</b>" and "<b>upgrade.php</b>" from your website</li>
<li>Well done, your CMS is connected to your DB and is ready to be configured to work</li>

<hr>

<h3>Live Preview</h3>
<p>If you wish to get a rendering, go to <a href="https://bobbagalaxy.fr"><b>BobbaGalaxy</b></a> (the server is not turned on because it is not in use)</p>

<hr>

<h3>EMU Installation Guide</h3>
<li>It is strongly recommended to use a <b><a href="https://alls-heberg.fr/windows">VPS Windows 2012 R2 Standard</a></b> or earlier for proper operation.</li>
<li>Once connected to your VPS, you will need to disable all firewalls</li>
<li>In the emulator folder you will find 2 softwares to install before launching the emulator</li>
<li>Once the software is up and running, you'll need to configure the emulator in the "<b>bin\Debug\bin\mysql.ini</b>" file.</li>
<li>Finally, you'll have to run the "bin\Debug\Holograph Emulator" software</li>
<li>Cool, your emulator is up and running and ready to receive users</li>

<hr>

<h3>CLIENT Config Guide</h3>
<li>You'll have to log in and go to "<b>http:/YOURSITE/housekeeping/index.php?p=loader</b>"</li>
<li>You will then need to fill in the information for the DCR's and your VPS in the fields provided</li>
<li>Once you have configured everything, you will need to go to "<b>http:/YOURSITE/housekeeping/index.php?p=server</b>"</li>
<li>Here you will need to fill in the information of your VPS</li>
<li>Clean! You have configured your <b>CMS</b>, your <b>EMU</b>, your <b>DCR's</b> and your <b>CLIENT</b></li>

<hr>
<h3>Play</h3>
<li><b>Shockwave</b> is not any more topical, and the v26 use it to function, you will have to do without Chrome, Opera or Firefox to play your v26, it will then be necessary to install the <a href="https://www.palemoon.org/download.shtml"><b>PaleMoon</b></a> browser which accepts <b>ShockWave</b></li>
<li>If everything has been well configured, and that all the prerequisite features meet the expectations, you will be able to enjoy your v26, have a good game!</li>

<hr>
<h3>Bugs</h3>
<p>Bugs that currently exist in the pack but are easily fixable can be found here :</p>
<li>For the moment, the homepages can't access the images since the domain name containing them has been removed by Habbo, so you'll have to make sure to retrieve and assemble them for free thanks to the different directories on <a href="https://habboemotion.com/category/images"><b>HabboEmotion</b></a> (if you're in a hurry or if you have bases)</li>
<li>A problem has been encountered on my side on the registration page, this problem is fixable, but I haven't had time to fix it yet, so if you're in a hurry and you have PHP knowledge allowing you to, you can fix the bug via the "<b>register.php</b>" file</li>
<li>The change of look on the site encounters a bug, and this bug is probably due to the fact that a swf file is missing at the root of the CMS, I'm working on it, but if you have the solution, don't hesitate to test it!</li>
<li>The link to the avatarimage is outdated, but to fix this problem it's as simple as saying "hello". You just have to intervene in the "me.php" and modify the avatarimage link to the link used on the "community.php" page.</li>

<h3>Message from the owner of this directory about these bugs</h3>
<blockquote><i>These are fixable bugs, you just have to have the skills to fix them. If any of you manage to fix these little bugs before me, I invite you to share them with the community for FREE, otherwise I would have to remove all sources from this directory. This directory, these sources and this tutorial are FREE and MUST remain FREE. This directory is bound to evolve, this is only the first production, future productions will be improved and fixed over time!</i></blockquote>

