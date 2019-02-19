<?php namespace ProcessWire;
// Get Mail
$save_message = page('save_message');
$contact_mail = page()->e_mail;
$email_subject = page()->email_subject;
$privacy_page = setting('privacy-page')->url;

// Optional
// $from_page = page()->httpUrl;

// Get Map Latitude and Longitude
// https://www.latlong.net/
// https://www.openstreetmap.org/
$latitude = page()->latitude;
$longitude = page()->longitude;
$marker_text = page()->marker_text;
?>

<!-- STYLE -->
<head id='html-head' pw-append>
<?php if (!$user->isLoggedin() && setting('enable-turbolinks')) {
echo "<meta name='turbolinks-visit-control' content='reload'>\n";
}
?>
  <style>
      .hide-robot {
          display: none;
      }
      #map {
          height: 380px;
          box-sizing: unset;
      }
  </style>
</head><!-- /STYLE -->

<!-- CONTENT -->
<div id='content-body'>

<?php if (page('meta_title')): ?>
<div class='medium-panel'>
  <i data-feather='info' style='width: 45px; height: 45px; stroke-width: 1px; color: #1c98d5;'></i>
  <h3><?=page('meta_title');?></h3>
</div>
<?php endif; ?>

<div class="contact-body" style='margin-top: 20px;'>
  <?php // INclude contact form
  wireIncludeFile("views/contact/_c-form",
      [
      'save_message' => $save_message, // true or false
      'contact_page' => page(), // Get Contact Page to save items pages('/contact/')
      'contact_item' => 'contact-item', // Template to create item ( It must have a body field )
      'mail_to' => $contact_mail ?: 'user@gmail.com', // Send To Mail
      'email_subject' => $email_subject, // Mail Subject
      'privacy_page' => $privacy_page, // Privacy Policy Page
      // 'from_page' => $from_page // Get Url Page
      ]
  );?>
</div>

<?=page()->body;?>

</div><!-- /CONTENT -->

<!-- SIDEBAR -->
<div id="sidebar">
<!-- CONTACT INFO -->
  <div class="contact-info medium-panel">
    <?php
      // Get Last Image ( https://processwire.com/docs/fields/images/ )
      $image = page()->images ? page()->images->last() : '';
      wireIncludeFile('views/contact/_contact-info.php', ['item' => page()]);
    ?>
  </div><!-- /CONTACT INFO -->

<!-- CONTACT SIDEBAR -->
  <div class="contact-sidebar" style='
     background: linear-gradient( rgba(0, 0, 0, 0.91), rgba(143, 64, 4, 0.65) ),
     url("<?=$image ? $image->url : ''?>");
     background-size: cover; /* Resize the background image to cover the entire container */
     background-repeat: no-repeat; /* Do not repeat the image */
     background-position: center center;
     color: aliceblue;
     margin-top: 15px;
     padding: 10px;
     display: flex; flex-direction: column; align-items: center; justify-content: center;'
   >

    <?=page()->sidebar;?>

  </div><!-- /CONTACT SIDEBAR -->

</div><!-- /SIDEBAR -->

<!-- MAP -->
<?php if($latitude && $longitude) :?>
<div id="footer" pw-before>
      <div id='map'></div>
</div>
<?php endif; ?><!-- /MAP -->

<?php if($latitude && $longitude) :?>
<pw-region id="bottom-region">

    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.3.4/dist/leaflet.css"/>

    <script src="https://unpkg.com/leaflet@1.3.4/dist/leaflet.js"></script>

    <script>
    var map = L.map('map').setView([<?=$latitude?>, <?=$longitude?>], 13);

    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);

    <?php if($marker_text) :
    // Sanitizer Full Markdown https://processwire.com/api/ref/sanitizer/entities-markdown/g/ ?>
    L.marker([<?=$latitude?>, <?=$longitude?>]).addTo(map)
        .bindPopup("<?=$sanitizer->entitiesMarkdown($marker_text, true)?>")
        .openPopup();
    <?php endif;?>
    </script>

</pw-region>
<?php endif;
