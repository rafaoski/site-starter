<?php namespace ProcessWire;
// This is the template file for main /blog/ page that lists blog post summaries.
// If there are more than 12 posts, it also paginates them.
$posts = page()->children('limit=12');
?>

<div id='content-body'>

<?php wireIncludeFile('views/parts/_blog-posts.php', ['posts' => $posts]);?>
<?=pagination($posts);?>

</div><!-- /#content-body -->

<div id='search' pw-after>
  <?php wireIncludeFile('views/parts/_blog-links.php'); ?>
</div>
