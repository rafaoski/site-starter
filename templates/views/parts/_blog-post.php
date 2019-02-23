<?php namespace ProcessWire;
// Get User Name
$user = pages()->findOne("template=blog-author, get_user.id=$post->createdUser");
// Get Comments
$count_comments = countComments($post, setting('enable-comments'));
// Get Post Image
$image = $post->images ? $post->images->first() : '';
// Img Size
$size = $post->checkbox ? 'contain' : 'cover';
?>
<!-- ARTICLE -->
<article class="blog-article article-<?=$post->name;?>" style='margin-top: 20px;'>

<?php
  // If Not Single Post
  if (page()->template != 'blog-post'): ?>

<!-- ARTICLE TITLE -->
  <h3 class="article-title" style='margin: 0;'>
    <?php editItem($post); ?>
    <a href="<?=$post->url?>" style='font-size: 4rem;'>
      <?=$post->title;?>
    </a>
    <?=countComments($post, setting('enable-comments'));?>
  </h3><!-- /ARTICLE TITLE -->

<!-- ARTICLE META -->
  <p class="article-meta"><?=setting('written-by');?>
    <a href="<?=$user->url;?>"><?=$user->title;?></a>
  <?php
   // Posted On
      echo sprintf( setting('on'),$post->date) . '.';
  // Posted in Categories
      echo setting('posted-in') . ' ';
          if (count($post->categories)) {
            $post->categories->implode(" <small>|</small> ", function($cat) {
              echo "<a href='{$cat->url}'>{$cat->title}</a> ";
            });
          }
?>  </p><!-- /ARTICLE META -->

<!-- ARTICLE IMAGE -->
  <div class="flex-center"
    style='background: linear-gradient( rgba(0, 0, 0, 0.91), rgba(2, 35, 50, 0.82) ), url("<?=$image ? $image->url : ''?>");
    padding: 50px 30px;
    background-size: <?=$post->checkbox ? 'contain' : 'cover';?>; /* Resize the background image to cover the entire container */
    background-attachment: fixed;
    background-repeat: no-repeat; /* Do not repeat the image */
    background-position: center center;'
  >
<?php
if (setting('enable-share-buttons')) {
 // https://github.com/somatonic/MarkupSocialShareButtons
  $options = array(
    "text" => $post->meta_description,
  	"url" => $post->url()
  );
 $share_btn = modules()->MarkupSocialShareButtons->render($options);
 echo str_replace("MarkupSocialShareButtons cf", "m-social-posts flex-center svg-lighten", $share_btn);
}
?>
    <p style='color: aliceblue;'>
    <?=$post->render('body', 'text-medium');?>...</p>
  </div><!-- /ARTICLE IMAGE -->

<!-- READ MORE LINK  -->
  <a style='font-size: 3rem' href="<?=$post->url?>">
        <?=setting('read-more');?>
        <i data-feather="arrow-right-circle"></i>
  </a>

<?php // Else Only Body
  else:
      echo page()->body;
    endif; ?>
</article><!-- /ARTICLE -->
