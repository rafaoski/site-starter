<?php namespace ProcessWire;?>

<div pw-append='content-body'>
<?php foreach (page()->children as $about_item):
      $img = $about_item->images->first;
?>
<div class="about-item" style='margin: 0; margin-bottom: 20px;'>
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
      <p><?=$about_item->render('body', 'text-medium')?></p>
    </div>
  </a>
</div>
    <?php endforeach; ?>
</div><!-- #/content-body-->
