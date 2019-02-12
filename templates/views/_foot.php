<?php namespace ProcessWire;?>
<footer id='footer' class="footer">
  <p class='copyright'>
    <?=editItem(pages()->get('/options/'), 'font-weight: bold;');?>
    <small class='small'>&copy; <?=date('Y')?> &bull;</small>
    <a href='<?=setting('options')->url_1 ? setting('options')->url_1 : pages('/')->url;?>'>
      <?=setting('options')->text_1;?>
    </a>
  </p>
</footer>
<?php
// Display region debugging info
echo debugRegions();
// Google Fonts https://fonts.google.com/
echo googleFonts(['Jura&amp;subset=latin-ext']);
// Google Analytics Tracking Code ( /options/advanced-options/ga-code/ )
gaCode(setting('ga-code'));
?>
<pw-region id="bottom-region"></pw-region>
<script>
<?php
$turbolinks_load = !$user->isLoggedin() && setting('enable-turbolinks') ? 'turbolinks:load' : 'load';?>
window.addEventListener('<?=$turbolinks_load;?>', function() {
  feather.replace();
})
</script>
</body>
</html>
