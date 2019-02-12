<?php namespace ProcessWire;
// Get User Name
$user = pages()->findOne("template=blog-author, get_user.id=$page->createdUser");
?>
<head id='html-head' pw-append>
	<script src='<?=urls('jquery');?>' defer></script>
	<script src='<?=urls()->FieldtypeComments?>comments.min.js' defer></script>
	<link rel="stylesheet" href="<?=urls()->FieldtypeComments?>comments.css">
</head>

<div id='content-body'>
	<div id="breadcrumb" pw-prepend>
		<p class='blog-info' style='color: aliceblue; margin-bottom: 10px; font-size: 1.7rem; text-align: left;'>
			<?=blogInfo(page(), $user);?>
		</p>
	</div>

<?=page()->body;?>
<!-- link to prev next blog post -->

<div class="nav-page" style='display: flex; flex-wrap: wrap; justify-content: space-around; padding: 20px;'>
	<?=prNx(page());?>
</div>

<?php
// https://processwire.com/blog/posts/processwire-3.0.107-core-updates/
$links = page()->links();
// If another page has links to this page
if ($links->count()): ?>
<h3><?=setting('also-like');?></h3>
<ul>
 <?=$links->each("<li><a href={url}>{title}</a></li>") . '<br>';?>
</ul>
<?php endif;
// IF Enable Comments
if(setting('enable-comments')) {
// Basic Comments + pagination
echo blogComments(page(), 16);
}
?>
</div>

<div id='search' pw-after>
<?php
$img = page()->images->first();
if($img) {
	$img = $img->width(600);
	echo "<img src='$img->url' alt='$img->description'>";
}
?>
  <?php wireIncludeFile('views/parts/_blog-links.php'); ?>
</div>
