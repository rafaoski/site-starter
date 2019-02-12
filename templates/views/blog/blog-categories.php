<?php namespace ProcessWire;
 $categories = page()->children("limit=18");
?>

<div id='content-body' pw-append>

<div style='display: flex; flex-wrap: wrap; justify-content: space-around;'>
  <?php foreach($categories as $category): ?>
    <div style='border: 1px solid black; padding: 30px; margin: 10px;'>
      <?php editItem($category);?>
      <a href='<?=$category->url?>' style='display: inline-block'>
          <h3><?=$category->title?>
            <span style='border-top: 3px solid black;
                  border-left: 3px solid black; border-radius: 50%; padding: 5px 15px;'
                  class='count-category'><?=count($category->references())?>
            </span>
          </h3>
      </a>
    </div>
  <?php endforeach; ?>

</div>

<?=pagination($categories); ?>

</div><!-- #/content -->

<div id='search' pw-after>
  <?php wireIncludeFile('views/parts/_blog-links.php'); ?>
</div>
