<?php namespace ProcessWire;
$authors = page()->children("limit=18"); ?>

<div id='content-body'>
  <div style='display: flex; flex-wrap: wrap; justify-content: space-around;'>
<?php foreach($authors as $author):
$user_id = $author->get_user;
$auth_count = pages()->get("template=blog-posts")->children("created_users_id=$user_id");
$img = $author->images->first();
?>
    <div class='author-<?=$author->title?>'>
      <div style='background: linear-gradient( rgba(0, 0, 0, 0.91), rgba(143, 64, 4, 0.65) ),
            url("<?=$img ? $img->url : ''?>");
            background-size: cover; /* Resize the background image to cover the entire container */
            background-repeat: no-repeat; /* Do not repeat the image */
            background-position: center center;
            color: aliceblue;
            display: flex; flex-direction: column; align-items: center; justify-content: center;
            margin: 5px; padding: 10px; width: 270px;'
      >
      <h3 class='uk-text-warning'><?=$author->title?>
        <span style='border-top: 3px solid tomato;
              border-left: 3px solid tomato; border-radius: 50%; padding: 5px 15px;'
              class='count-posts'><?=count($auth_count);?></span>
      </h3>
      <p class='uk-light'><?=$author->meta_title;?></p>
      </div>
      <a href="<?=$author->url?>"><?=setting('all-posts');?></a><br>
      <?php editItem($author);?>
    </div><!-- ./author -->
<?php endforeach;?>
  </div>
<?php // Pagination
echo pagination($authors); ?>
</div><!-- #content-body -->

<div id='search' pw-after>
  <?php wireIncludeFile('views/parts/_blog-links.php'); ?>
</div>
