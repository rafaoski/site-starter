<?php namespace ProcessWire;?>

<p><?php // /templates/fields/text-medium.php
    echo $section->render('body', 'text-medium');
?><br>
<?php editItem($section, 'font-weight: bold');?></p>

<div class="about-items" style='display: flex; flex-wrap: wrap; justify-content: space-around;'>
<?php foreach ($section->children("limit=3") as $item):
  $img = $item->images->first();?>
  <div class='item-content'>
    <h3 style='margin-bottom: 5px;'>
      <?=$item->title;?>
    </h3>
    <a class='hover' style='display: block;' href="<?=$item->url;?>">
      <div class='item-background' style='
        background: linear-gradient( rgba(0, 0, 0, 0.91), rgba(143, 64, 4, 0.65) ),
        url("<?=$img ? $img->url : ''?>");
        background-size: cover; /* Resize the background image to cover the entire container */
        background-repeat: no-repeat; /* Do not repeat the image */
        background-position: center center;
        display: flex; flex-direction: column; align-items: center; justify-content: center;
        margin: 5px; padding: 10px; width: 270px;'
      >
        <p><?=$item->meta_description;?></p>
      </div><!-- ./item-background -->
    </a>
      <?php editItem($item, 'font-weight: bold; margin-top: 5px;');?>
  </div><!-- ./item-content -->
<?php endforeach; ?>
</div><!-- ./about-items -->
