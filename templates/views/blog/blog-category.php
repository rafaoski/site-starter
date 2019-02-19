<?php namespace ProcessWire;
// Get All Posts
$category = pages()->get("template=blog-posts")->children("categories=$page, limit=12");
// No Posts Found
// if( !count($category) ) {
// // Add this page to the trash bin because it is not assigned to any entry
// 	$page->trash();
// // Show 404
// 	throw new Wire404Exception();
// }
?>

<div id='content-body'>
  <?php wireIncludeFile('views/parts/_blog-posts.php', ['posts' => $category]);?>
  <?=pagination($category);?>
</div>

<div id='sidebar' pw-prepend>
  <?php wireIncludeFile('views/parts/_blog-links.php'); ?>
</div>
