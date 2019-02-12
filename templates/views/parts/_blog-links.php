<?php namespace ProcessWire;

$posts = pages()->get("template=blog-posts");

$categories = pages()->get("template=blog-categories");

echo "<h3>" . setting('recent-posts') . "</h3>";

echo "<ul>";
foreach ($posts->children('limit=3') as $item ) {
    echo "<li><a href='{$item->url}'>{$item->title}</a></li>";
}
echo "</ul>";

echo "<h3>" . $categories->title . "</h3>";

echo "<ul>";
foreach ($categories->children('limit=12') as $item ) {
    echo "<li><a href='{$item->url}'>{$item->title}</a></li>";
}
echo "</ul>";

echo "<h3>" . pages()->get("template=blog-archives")->title . "</h3>";?>

<ul class="uk-list">
  <?=blogArchive(2017);?>
</ul>
