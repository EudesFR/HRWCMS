<?php
/*---------------------------------------------------+
| HoloCMS - Website and Content Management System
+----------------------------------------------------+
| Copyright &copy; 2008 Meth0d
+----------------------------------------------------+
| HoloCMS is provided "as is" and comes without
| warrenty of any kind.
+---------------------------------------------------*/

if (!defined("IN_HOLOCMS")) { header("Location: ../../index.php"); exit; }

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
	<title><?php echo $shortname; ?> : Inscription </title>

<script type="text/javascript">
var andSoItBegins = (new Date()).getTime();
</script>

<link rel="shortcut icon" href="favicon.ico" type="image/vnd.microsoft.icon" />
<script src="./web-gallery/static/js/visual.js" type="text/javascript"></script>
<script src="./web-gallery/static/js/domready.js" type="text/javascript"></script>
<script src="./web-gallery/static/js/libs.js" type="text/javascript"></script>
<script src="./web-gallery/static/js/common.js" type="text/javascript"></script>
<script src="./web-gallery/static/js/libs2.js" type="text/javascript"></script>
<link rel="stylesheet" href="./web-gallery/v2/styles/style.css" type="text/css" />
<link rel="stylesheet" href="./web-gallery/v2/styles/buttons.css" type="text/css" />
<link rel="stylesheet" href="./web-gallery/v2/styles/boxes.css" type="text/css" />
<link rel="stylesheet" href="./web-gallery/v2/styles/tooltips.css" type="text/css" />
<link rel="stylesheet" href="./web-gallery/v2/styles/process.css" type="text/css" />

<script type="text/javascript">
document.habboLoggedIn = false;
var habboName = null;
var habboReqPath = "";
var habboStaticFilePath = "./web-gallery";
var habboImagerUrl = "/habbo-imaging/";
var habboPartner = "";
window.name = "habboMain";

</script>

<link rel="stylesheet" href="./web-gallery/v2/styles/registration.css" type="text/css">
<script src="./web-gallery/static/js/registration.js" type="text/javascript"></script>

    <script type="text/javascript">
        L10N.put("register.tooltip.name", "Ton nom peut contenir des chiffres, des lettres et les caract&egrave;res -=?!@:.");
        L10N.put("register.tooltip.password", "Ton mot de passe doit contenir au moins 6 caract&egrave;res et peut &ecirc;tre compos&eacute; de lettres ou de chiffres.");
        L10N.put("register.error.password_required", "Entre un mot de passe");
        L10N.put("register.error.password_too_short", "Ton mot de passe doit au moins contenir 6 caract&egrave;res");
        L10N.put("register.error.retyped_password_required", "Retapes ton mot de passe");
        L10N.put("register.error.retyped_password_notsame", "Tes mots de passe ne correspondent pas");
        L10N.put("register.error.retyped_email_required", "Retapes ton adresse email");
        L10N.put("register.error.retyped_email_notsame", "Les emails ne correspondent pas");
        L10N.put("register.tooltip.namecheck", "Cliques ici pour voir si ton nom est disponible");
        L10N.put("register.tooltip.retypepassword", "Retapes ton mot de passe");
        L10N.put("register.tooltip.personalinfo.disabled", "Choisis d&eacute;j&agrave; ton nom <?php echo $shortname; ?>.");
        L10N.put("register.tooltip.namechecksuccess", "Super! Ton nom es disponible!");
        L10N.put("register.tooltip.passwordsuccess", "Ton mot de passe est s&eacute;curis&eacute;");
        L10N.put("register.tooltip.passwordtooshort", "Le mot de passe que tu as chosi est trop court");
        L10N.put("register.tooltip.passwordnotsame", "Retape tes mots de passe.");
        L10N.put("register.tooltip.invalidpassword", "Le mot de passe a tu as choisi est invalide");
        L10N.put("register.tooltip.email", "Tapes ton adresse email. Nous te conseillons de mettre la vraie, si tu as un probl&egrave;me par la suite.");
        L10N.put("register.tooltip.retypeemail", "Retape ton adresse email");
        L10N.put("register.tooltip.invalidemail", "Merci d'entrer une adresse email valide.");
        L10N.put("register.tooltip.emailsuccess", "Tu as tap&eacute; des emails valide!");
        L10N.put("register.tooltip.emailnotsame", "Ton email est invalide");
        L10N.put("register.tooltip.enterpassword", "Merci d'entrer un mot de passe.");
        L10N.put("register.tooltip.entername", "Entre un nom avec des caract&egrave;res valide.");
        L10N.put("register.tooltip.enteremail", "Merci d'entrer une adresse email");
        L10N.put("register.tooltip.enterbirthday", "Entre une date de naissance");
        L10N.put("register.tooltip.acceptterms", "Accepte les conditions d'utilisation");
        L10N.put("register.tooltip.invalidbirthday", "Please supply a valid birthdate");
        L10N.put("register.tooltip.emailandparentemailsame","You parent\'s email and your email cannot be the same, please provide a different one.");
        L10N.put("register.tooltip.entercaptcha","Entre le code");
        L10N.put("register.tooltip.captchavalid","Code invalide");
        L10N.put("register.tooltip.captchainvalid","Code invalide, retape le");

        RegistrationForm.parentEmailAgeLimit = -1;
        L10N.put("register.message.parent_email_js_form", "<div\>\n\t<div class=\"register-label\"\>Because you are under 16 and in accordance with industry best practice guidelines, we require your parent or guardian\'s email address.</div\>\n\t<div id=\"parentEmail-error-box\"\>\n        <div class=\"register-error\"\>\n            <div class=\"rounded rounded-blue\"  id=\"parentEmail-error-box-container\"\>\n                <div id=\"parentEmail-error-box-content\"\>\n                    Please enter your email address.\n                </div\>\n            </div\>\n        </div\>\n\t</div\>\n\t<div class=\"register-label\"\><label for=\"register-parentEmail-bubble\"\>Parent or guardian\'s email address</label\></div\>\n\t<div class=\"register-label\"\><input type=\"text\" name=\"bean.parentEmail\" id=\"register-parentEmail-bubble\" class=\"register-text-black\" size=\"15\" /\></div\>\n\n\n</div\>");

        RegistrationForm.isCaptchaEnabled = true;
        L10N.put("register.message.captcha_js_form", "<div\>\n\t<div class=\"register-label\"\><img src=\"./captcha/captcha.jpg\" alt=\"\" width=\"200\" height=\"50\" /\></div\>\n\t<div class=\"register-label\"\><label for=\"register-captcha-bubble\"\>Tape le code de confirmation ci-dessous</label\></div\>\n\t<div class=\"register-input\"\><input type=\"text\" name=\"bean.captchaResponse\" id=\"register-captcha-bubble\" class=\"register-text-black\" value=\"\" size=\"15\" /\></div\>\t\n</div\>");

        L10N.put("register.message.age_limit_ban", "<div\>\n<p\>\n Tu es trop jeune pour t'inscrire! Reviens dans quelques minutes.\n</p\>\n\n<p style=\"text-align:right\"\>\n<input type=\"button\" class=\"submit\" id=\"register-parentEmail-cancel\" value=\"Cancel\" onclick=\"RegistrationForm.cancel(\'?ageLimit=true\')\" /\>\n</p\>\n</div\>");
        RegistrationForm.ageLimit = -1;
        HabboView.add(function() { Rounder.addCorners($("register-avatar-editor-title"), 4, 4, "rounded-container"); RegistrationForm.init(true); });
    </script>

<meta name="description" content="<?php echo $sitename; ?> is a virtual world where you can meet and make friends." />
<meta name="keywords" content="<?php echo $shortname; ?>,<?php echo $sitename; ?>,virtual world,play games,enter competitions,make friends" />

<!--[if lt IE 8]>
<link rel="stylesheet" href="./web-gallery/v2/styles/ie.css" type="text/css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" href="./web-gallery/v2/styles/ie6.css" type="text/css" />
<script src="./web-gallery/static/js/pngfix.js" type="text/javascript"></script>
<script type="text/javascript">
try { document.execCommand('BackgroundImageCache', false, true); } catch(e) {}
</script>

<style type="text/css">
body { behavior: url(./web-gallery/csshover.htc); }
</style>
<![endif]-->
<meta name="build" content="21.0.68 - Registration - HoloCMS" />
</head>