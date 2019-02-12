<?php namespace ProcessWire;
// Get First Image ( https://processwire.com/docs/fields/images/ )
$image = page()->images ? page()->images->first() : '';
$turbolinks = '';
if (!$user->isLoggedin() && setting('enable-turbolinks')) {
$turbolinks = "\n<script src='" . setting('turbolinks') . "' defer></script>";
}
?>
<!doctype html>
<html lang="<?=setting('lang');?>" prefix="og: http://ogp.me/ns#">
<head id='html-head'>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<?php if (setting('favicon')): ?>
<link rel="icon" href="<?=setting('favicon');?>"/>
<?php endif;
// SeoMaestro https://processwire.com/talk/topic/20817-seomaestro/
echo page()->seo()->render();
// Pagination
echo seoPagination(page());
// JS files
echo setting('js-files')->each("\n<script src='{value}' defer></script>");
echo $turbolinks;
// CSS Files
echo cssAsync([urls('templates') . "assets/css/app.css"]);
// echo setting('css-files')->each("\n<link rel='stylesheet' href='{value}'>");
// Optional Style
echo "\n<style id='head-style' pw-optional></style>";
// Google Webmaster Tools Werification Code ( /options/advanced-options/gw-code/ )
gwCode(setting('gw-code'));
?>
</head>
<body class='<?=setting('body-classes')->implode(' ')?>'>
  <header id='header' class="header hero-image" style='
      background: linear-gradient( rgba(0, 0, 0, 0.91), rgba(2, 35, 50, 0.82) ),
      url("<?=$image ? $image->url : ''?>");
      min-height: 70vh;
      padding: 40px;
      background-size: <?=page()->checkbox ? 'contain' : 'cover';?>; /* Resize the background image to cover the entire container */
      background-attachment: fixed;
      background-repeat: no-repeat; /* Do not repeat the image */
      background-position: center top;'
  >

  <div class='site-logo'>
    <?php editItem(pages()->get('/options/'));?>
    <a href="<?=pages('/')->url;?>">
    <span class='site-name'><?=setting('site-name')?></span>
    <?php if(setting('logo')) :?>
    <img src="<?=setting('logo');?>" alt="<?=setting('site-name')?>"
    class='logo <?=setting('logo-class');?>' width="60" style='margin-bottom: -10px;'>
    <?php endif;?>
    <br>
    <span class='site-description'><?=setting('site-description')?></span>
  </a>
    </div><!-- ./site-logo -->

    <ul class='main-nav'>
        <?=renderNav(setting('home')->children(), true);?>
    </ul>

    <div id='header-seo' class='header-seo'>
      <?php if (page() == pages('/')): ?>
        <h1 class='home-title'>
        <?=page('meta_title');?>
      <?php else: ?>
        <h1 class='page-title'>
        <?=page('title');?> /
      <?php endif; ?>
        </h1>
        <h2 class='meta-title'>
        <?=page('meta_description');?>
      </h2>
      <?php if (page() != pages('/')):?>
      <div id="breadcrumb" style='color: aliceblue; text-align: right; padding: 10px;'>
        <?=breadCrumb(page());?>
      </div>
      <?php endif;?>
    </div><!-- #/header-seo -->

    <div id='privacy' class='privacy-panel'>
      <?=privacyPanel(setting('privacy-page'));?>
    </div>

  </header>
<?php 
// Social Share Buttons ( https://www.addtoany.com/ )
if (setting('enable-share-buttons')) {
echo toAny(['f','t','e']);
}
// Edit Button
echo editBtn(page());
