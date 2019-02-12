<?php namespace ProcessWire;

/**
 *
 * _main.php template file, called after a page’s template file
 *  All settings and options are in the file _init.php
 *  All functions are in the file _func.php
 *  Basicaly usage fields:
 *  $page->title or $page->get('title') or $page('title')  or page()->title or page()->get('title') or page('title')
 *  LEARN MORE ABOUT MARKUP REGIONS
 *  https://processwire.com/blog/posts/processwire-3.0.49-introduces-a-new-template-file-strategy/
 *  https://processwire.com/blog/posts/processwire-3.0.62-and-more-on-markup-regions/
 *
 */

wireincludeFile("views/_head.php");
?>
  <div id='main' class="main">

    <aside id="sidebar" class="sidebar container">

      <form id='search' class='s-form' style='padding: 10px; margin-bottom: 0;'
            action='<?=pages()->get('template=basic-search')->url?>' method='get'>
            <label for="search-i"><?=setting('search-placeholder')?>
            <input id='search-i' type='text' name='q' class='s-input' placeholder='<?=setting('search-placeholder')?>&hellip;' required></label>
      </form>

      <?php // Page Sidebar
        if (page()->sidebar): ?>
        <div class='sidebar-page-item' style='margin-top: 10px;'>
          <?=page()->sidebar;?>
        </div>
      <?php endif;
      // Sidebars from Options Page
      foreach (setting('options')->sidebars as $sidebar) :?>
        <div class='sidebar-item <?=$sidebar->name;?>' style='margin-top: 15px;'>
          <h3 class='sidebar-heading'>
            <?php editItem($sidebar, 'font-weight: bold');?>
            <?=$sidebar->title;?>
          </h3>
          <?=$sidebar->sidebar_code;?>
          <?=$sidebar->body;?>
        </div>
      <?php endforeach; ?>
    </aside>

    <div id='content-body' class="content-body container">
      <?php // Basic Page Body
        echo page()->body;
      ?>
    </div>

  </div><!-- #/main -->

<?php wireincludeFile("views/_foot.php"); ?>
