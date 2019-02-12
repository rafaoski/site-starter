<?php namespace ProcessWire;
// Get All Posts
$tag = pages()->get("template=blog-posts")->children("tags=$page, limit=12");
// No Posts Found
// if( !count($tag) ) {
// // Add this page to the trash bin because it is not assigned to any entry
// 	$page->trash();
// // Show 404
// 	throw new Wire404Exception();
// }
?>

<div id='content-body'>
  <?php wireIncludeFile('views/parts/_blog-posts.php', ['posts' => $tag]);?>
  <?=pagination($tag);?>
</div>

<div id='search' pw-after>
  <?php wireIncludeFile('views/parts/_blog-links.php'); ?>
</div>
