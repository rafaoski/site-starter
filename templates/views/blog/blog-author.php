<?php namespace ProcessWire;
$heading = '';
// http://cheatsheet.processwire.com/users/users-methods/users-get-name-id-selector/
$user_id = page()->get_user;
// Get All Posts
$posts = pages()->get("template=blog-posts")->children("created_users_id=$user_id, limit=12");
// No Posts Found
if( !count($posts) ) {
	$heading = "<h1>" . setting('author-not-add') . "</h1>";
}
?>
<div id='content-body'>
	<?=$heading;?>
	<?php wireIncludeFile('views/parts/_blog-posts.php', ['posts' => $posts]);?>
	<?=pagination($posts); ?>
</div>

<div id='search' pw-after>
<?php
$img = page()->images->first();
if($img) {
$img = $img->width(600);
echo "<img src='$img->url' alt='$img->description'>";
}
// Blog Links
wireIncludeFile('views/parts/_blog-links.php'); ?>
</div>
