<?php namespace ProcessWire;

$posts = pages()->get("template=blog-posts");
$categories = pages()->get("template=blog-categories");
$archives = pages()->get("template=blog-archives");
// Last Posts
echo "<h3>" . setting('recent-posts') . "</h3>";
echo "<ul>";
foreach ($posts->children('limit=3') as $item ) {
$edit_post = editItem($item);
    echo "<li>$edit_post <a href='{$item->url}'>{$item->title}</a></li>";
}
echo "</ul>";
// Categories
echo "<h3>" . $categories->title . "</h3>";
echo "<ul>";
foreach ($categories->children('limit=12') as $item ) {
$edit_cat = editItem($item);
    echo "<li>$edit_cat <a href='{$item->url}'>{$item->title}</a></li>";
}
echo "</ul>";
// Archives
echo "<h3>$archives->title</h3>";
echo editItem($archives);
?>
<ul class="uk-list">
  <?=blogArchive(2017);?>
</ul>
