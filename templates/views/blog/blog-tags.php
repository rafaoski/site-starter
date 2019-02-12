<?php namespace ProcessWire;
 $tags = page()->children("limit=40");
?>

<div id='content-body' pw-append>

<div style='display: flex; flex-wrap: wrap; justify-content: space-around;'>
  <?php foreach($tags as $tag): ?>
    <div style='margin: 5px;'>
          <?php editItem($tag);?>
          <a href='<?=$tag->url?>' style='display: inline-block'>
          <h3><?=$tag->title?>
            <span style='border-top: 3px solid black;
                  border-left: 3px solid black; border-radius: 50%; padding: 5px 15px;'
                  class='count-category'><?=count($tag->references())?>
            </span>
          </h3>
        </a>
    </div>
  <?php endforeach; ?>

</div>

<?=pagination($tags); ?>

</div><!-- #/content -->

<div id='search' pw-after>
  <?php wireIncludeFile('views/parts/_blog-links.php'); ?>
</div>
