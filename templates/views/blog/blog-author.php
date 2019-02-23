<?php namespace ProcessWire;
$info = '';
// http://cheatsheet.processwire.com/users/users-methods/users-get-name-id-selector/
$user_id = page()->get_user;
// Get All Posts
$posts = pages()->get("template=blog-posts")->children("created_users_id=$user_id, limit=12");
// No Posts Found
if( !count($posts) ) {
	$info = "<h1>" . setting('author-not-add') . "</h1>";
}
?>
<!-- CONTENT -->
<div id='content-body'>
<?php
// Information If the posts are not assigned to the user
echo $info;
// Blog Posts
foreach ($posts as $post) {
	 wireIncludeFile('views/parts/_blog-post.php', ['post' => $post]);
}
?>

<?php // Pagination
echo pagination($posts); ?>

</div><!-- /CONTENT -->

<!-- SIDEBAR -->
<div id='sidebar' pw-prepend>
<h3 style='margin: 0;'><?=setting('more-about') . '<b>' . page()->title . '</b>';?></h3>
<?php
$img = page()->images->first();
if($img) {
$img = $img->width(600);
echo "<img src='$img->url' alt='$img->description'>";
}
?>
<!-- AUTHOR LINKS -->
<ul class='author-links flex-center' style='margin-top: -25px; margin-bottom: -10px;'>
  <?php
  // Edit Button
  echo editItem(setting('options'));
  ?>
  <?=externalLink(page()->external_link);?>
</ul><!-- /AUTHOR LINKS -->

<?php
// Page body
echo page()->body;
?>

<?php
// Blog Links
wireIncludeFile('views/parts/_blog-links.php'); ?>
</div><!-- /SIDEBAR -->
