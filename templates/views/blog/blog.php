<?php namespace ProcessWire;
// Get All Posts
$posts =  pages()->get("template=blog-posts");
?>

<div id='content-body'>
<div>
  <?php editItem($posts, 'margin-top: 10px;');?>
  <a style='display: inline-block;' href='<?=$posts->url?>'>
      <h3 style='font-size: 5rem; margin-bottom: 0'>
        <?=setting('all-posts');?>
      </h3>
  </a>
  <p style='margin-bottom: 0; color: black;'>
    <?=$posts->meta_description?></p>

</div>

<div class='more-blog-pages'>
<?php
// Get Some Blog Pages
$blog_pages = [
  'categories' => pages()->get("template=blog-categories"),
  'tags' => pages()->get("template=blog-tags"),
  'authors' => pages()->get("template=blog-authors"),
  'archives' => pages()->get("template=blog-archives"),
];
foreach ($blog_pages as $item): ?>
<div class='item-more-blog'>
  <?php editItem($item, 'margin-top: 10px;');?>
  <a style='display: inline-block' href='<?=$item->url?>'>
    <h3 style='font-size: 4rem; margin-bottom: 0; margin-top: 15px;'>
      / <?=$item->title?>
       <small style='font-size: 2rem; color: black' ><?=$item->meta_title?></small>
    </h3>
  </a>
</div>

<?php endforeach; ?>
</div><!-- ./more-blog-pages -->

</div><!-- #/content-body -->

<div id='search' pw-after>
  <?php wireIncludeFile('views/parts/_blog-links.php'); ?>
</div>
