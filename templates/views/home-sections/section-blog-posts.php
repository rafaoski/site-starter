<?php namespace ProcessWire;?>

<div class="blog-items flex-center" style='justify-content: space-around;'>
<?php foreach ($section->children("limit=2") as $item):
  $img = $item->images->first();?>
  <div class='item-content' style='width: 500px'>
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
        color: aliceblue;
        display: flex; flex-direction: column; align-items: center; justify-content: center;
        margin: 5px; padding: 10px; height: 250px;'
      >
        <p><?=$item->meta_title;?></p>
      </div><!-- ./item-background -->
    </a>
      <?php editItem($item, 'font-weight: bold; margin-top: 5px;');?>
  </div><!-- ./item-content -->
<?php endforeach; ?>
</div><!-- ./about-items -->
