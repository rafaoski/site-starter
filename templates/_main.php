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
<!-- MAIN -->
<div id='main' class="main">
<!-- CONTENT BODY -->
  <div id='content-body' class="content-body">
    <?php // Basic Page Body
      echo page()->body;
    ?>
  </div><!-- /CONTENT BODY -->
<!-- SIDEBAR -->
  <aside id="sidebar" class='sidebar' pw-optional>
    <?php // Basic Sidebar
    if (page()->sidebar) echo page()->sidebar;
    // Sidebars ( multiple sidebars )
    if(page()->sidebars):
    foreach (page()->sidebars as $sidebar): ?>
    <div class='sidebar-item <?=$sidebar->name;?>' style='margin-top: 15px;'>
      <h3>
        <span><?php editItem($sidebar, 'font-weight: bold');?>
        <?=$sidebar->title;?></span>
      </h3>
      <?=$sidebar->sidebar_code;?>
      <?=$sidebar->body;?>
    </div>
    <?php endforeach;
    endif; ?>
  </aside><!-- /SIDEBAR -->
</div><!-- /MAIN -->
<?php wireincludeFile("views/_foot.php");
