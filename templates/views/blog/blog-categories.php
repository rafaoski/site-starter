<?php namespace ProcessWire;
 $categories = page()->children("limit=18");
?>

<!-- CONTENT -->
<div id='content-body' pw-append>

<div class='flex-center'>
  <?php foreach($categories as $category): ?>
      <?php editItem($category);?>
      <a class='medium-panel hover' href='<?=$category->url?>' style='margin: 10px;'>
          <h3><?=$category->title?>
            <span style='border-top: 3px solid black;
                  border-left: 3px solid black; border-radius: 50%; padding: 5px 15px;'
                  class='count-category'><?=count($category->references())?>
            </span>
          </h3>
      </a>
  <?php endforeach; ?>
</div>

<?php // Pagination
echo pagination($categories); ?>

</div><!-- /CONTENT -->

<!-- SIDEBAR -->
<div id='sidebar' pw-prepend>
  <?php wireIncludeFile('views/parts/_blog-links.php'); ?>
</div><!-- /SIDEBAR -->
