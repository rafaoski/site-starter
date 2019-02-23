<?php namespace ProcessWire;?>
<footer id='footer' class="footer">
<!-- SEARCH FORM -->
  <div>
    <form id='search' class='s-form' style='padding: 10px; margin-bottom: 0; color: tomato;'
          action='<?=pages()->get('template=basic-search')->url?>' method='get'>
          <label style='font-size: 2rem; font-weight: normal;' for="search-input">
          <?=editItem(pages()->get("template=basic-search"));?>
          <i data-feather='search' style='stroke-width: 1px'></i>
          <?=setting('search-placeholder')?>
          <input id='search-input' type='text' name='q' class='s-input' style='border: 1px solid #4e4e4e; color: aliceblue;'
                 placeholder='<?=setting('search-placeholder')?>&hellip;' required></label>
    </form>
  </div><!-- /SEARCH FORM -->
<!-- COPYRIGHT -->
  <div>
    <p class='copyright'>
      <?=editItem(pages()->get('/options/'), 'font-weight: bold;');?>
      <small class='small'>&copy; <?=date('Y')?> &bull;</small>
      <a href='<?=setting('options')->url_1 ? setting('options')->url_1 : pages('/')->url;?>'>
        <?=setting('options')->text_1;?>
      </a>
    </p>
  </div><!-- /COPYRIGHT -->
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
