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
// echo cssAsync([urls('templates') . "assets/css/app.css"]);
echo setting('css-files')->each("\n<link rel='stylesheet' href='{value}'>");
// Optional Style
echo "\n<style id='head-style' pw-optional></style>";
// Google Webmaster Tools Werification Code ( /options/advanced-options/gw-code/ )
gwCode(setting('gw-code'));
?>
</head>
<body class='<?=setting('body-classes')->implode(' ')?>'>
<!-- HEADER -->
<header id='header' class="header hero-image" style='background: linear-gradient( rgba(0, 0, 0, 0.91), rgba(2, 35, 50, 0.82) ),
  url("<?=$image ? $image->url : ''?>");
  min-height: 50vh;
  padding: 40px;
  background-size: <?=page()->checkbox ? 'contain' : 'cover';?>; /* Resize the background image to cover the entire container */
  background-attachment: fixed;
  background-repeat: no-repeat; /* Do not repeat the image */
  background-position: center top;'
>

<div class='flex-center'>
  <!-- LOGO -->
    <div id='site-logo' class='site-logo'>
      <?php editItem(pages()->get('/options/'));?>
      <a href="<?=pages('/')->url;?>">
          <span class='site-name'><?=setting('site-name')?></span>
          <?php if(setting('logo')) :?>
          <img src="<?=setting('logo');?>" alt="<?=setting('site-name')?>"
          class='logo <?=setting('logo-class');?>' width="60" style='margin-bottom: -10px;'>
          <?php endif;?><br>
          <span class='site-description'><?=setting('site-description')?></span>
      </a>
    </div><!-- /LOGO -->

<!-- NAVIGATIONS -->
  <div class='navs'>
      <ul class='main-nav'>
          <?=renderNav(setting('home')->children(), true);?>
      </ul>
      <?php if (page()->getLanguages() && modules()->isInstalled("LanguageSupportPageNames")) : ?>
      <ul id="lang-menu" class='lang-menu'>
        <?=langMenu(page(), pages('/'))?>
      </ul>
    <?php endif; ?>
  </div>
</div><!-- /NAVIGATIONS -->

<!-- HEADER SEO-->
  <div id='header-seo' class='header-seo'>
    <h1 id='meta-title' class='meta-title' <?php if(page() == pages('/')) echo "style='color: tomato'";?>>
      <?=page() == pages('/') ? page('meta_title') : page('title');?>
    </h1>
    <h2 id='meta-description' class='meta-description'>
      <?=page('meta_description');?>
    </h2>
</div><!-- /HEADER SEO-->

<!-- EXTERNAL LINKS -->
<div id='external-links' class='external-links'>
  <ul>
    <?php
    // Edit Button
    echo editItem(setting('options'));
    ?>
      <?=externalLink(setting('options')->external_link);?>
  </ul>
</div><!-- /EXTERNAL LINKS -->

<!-- BREADCRUMBS -->
<?php if (page() != pages('/')):?>
  <div id="breadcrumbs" class='breadcrumbs'>
    <?=breadCrumb(page());?>
  </div>
<?php endif;?><!-- /BREADCRUMBS -->

<!-- PRIVACY POLICY -->
  <div id='privacy' class='privacy-panel'>
    <?=privacyPanel(setting('privacy-page'));?>
  </div><!-- /PRIVACY POLICY -->
</header><!-- /HEADER -->

<?php
// Social Share Buttons ( https://www.addtoany.com/ )
if (setting('enable-share-buttons')) {
echo toAny(['f','t','e']);
}
// Edit Button
echo editBtn(page());
