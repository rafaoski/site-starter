<?php namespace ProcessWire;
// Get User Name
$user = pages()->findOne("template=blog-author, get_user.id=$page->createdUser");
?>
<head id='html-head' pw-append>
	<script src='<?=urls('jquery');?>' defer></script>
	<script src='<?=urls()->FieldtypeComments?>comments.min.js' defer></script>
	<link rel="stylesheet" href="<?=urls()->FieldtypeComments?>comments.css">
</head>
<!-- BREADCRUMBS -->
<div id="breadcrumbs" pw-before>
	<div id="blog-info">
		<p>
			<?=blogInfo(page(), $user);?>
		</p>
	</div>
</div><!-- /BREADCRUMBS -->

<!-- CONTENT -->
<div id='content-body'>

<!-- SOCIAL SHARE BUTTONS -->
<div style='margin-top: 20px;'>
	<?php
	// Social Share Buttons
	if (setting('enable-share-buttons')) {
		$share_btn = modules()->MarkupSocialShareButtons->render();
		echo str_replace("MarkupSocialShareButtons cf", "m-social-post flex-center", $share_btn);
	}
	?><!-- SOCIAL SHARE BUTTONS -->
</div>


<!-- BLOG POST -->
<?php
wireIncludeFile('views/parts/_blog-post.php', ['post' => page()]);
?><!-- BLOG POST -->

<!-- PREVIOUS NEXT BLOG POST -->
<div class="nav-page flex-center" style='margin: 20px; font-weight: bold; justify-content: space-around;'>
	<?=prNx(page());?>
</div><!-- /PREVIOUS NEXT BLOG POST -->

<?php
// https://processwire.com/blog/posts/processwire-3.0.107-core-updates/
$links = page()->links();
// If another page has links to this page
if ($links->count()): ?>
<h3><?=setting('also-like');?></h3>
<ul>
 <?=$links->each("<li><a style='font-weight: bold;' href={url}>{title}</a></li>");?>
</ul>
<?php endif;
// IF Enable Comments
if(setting('enable-comments')) {
// Basic Comments + pagination
echo blogComments(page(), 16);
}
?>
</div><!-- /CONTENT -->

<!-- SIDEBAR -->
<div id='sidebar' pw-prepend>
<?php
$img = page()->images->first();
if($img) {
	$img = $img->width(600);
	echo "<img src='$img->url' alt='$img->description'>";
}
// Blog Links
wireIncludeFile('views/parts/_blog-links.php'); ?>
</div><!-- /SIDEBAR -->
