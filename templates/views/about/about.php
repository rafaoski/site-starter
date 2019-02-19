<?php namespace ProcessWire;?>

<head id='html-head' pw-append>
<style>
.about-item {
  width: 30%;
  margin: 2px;

}
@media screen and (max-width: 992px) {
  .about-item {
    width: 100%;
  }
}
</style>
</head>

<div pw-append='content-body'>

<div class="flex-center">

<?php foreach (page()->children as $about_item):
      $img = $about_item->images->first;
?>
<div class="about-item">
  <h3 class="about-title" style='margin: 0; margin-bottom: 5px; padding: 0;'>
    <?=editItem($about_item, 'font-weight: bold');?>
    <?=$about_item->title;?></h3>
    <a class='hover' style='display: block;' href="<?=$about_item->url?>">
      <div style='
          background: linear-gradient( rgba(0, 0, 0, 0.91), rgba(143, 64, 4, 0.65) ),
          url("<?=$img ? $img->url : ''?>");
          padding: 20px;
          color: aliceblue;
          background-size: cover; /* Resize the background image to cover the entire container */
          background-repeat: no-repeat; /* Do not repeat the image */
          background-position: center center;'
      >
      <p><?=$about_item->render('body', 'text-small')?></p>
    </div>
  </a>
</div>
    <?php endforeach; ?>

</div>

</div><!-- #/content-body-->
