<?php namespace ProcessWire;
// Start Loop
foreach ($posts as $post):
// Get User Name
$user = pages()->findOne("template=blog-author, get_user.id=$post->createdUser");?>
<div class='blog-post <?=$post->name;?>' style='
    background: linear-gradient( rgba(0, 0, 0, 0.91), rgba(2, 35, 50, 0.82) ),
    url("<?=count($post->images) ? $post->images->first->url : ''?>");
    color: aliceblue;
    padding: 20px;
    margin-bottom: 10px;
    background-size: <?=$post->checkbox ? 'contain' : 'cover';?>; /* Resize the background image to cover the entire container */
    background-repeat: no-repeat; /* Do not repeat the image */
    background-position: center top;'
>
<h3 style='margin-bottom: 10px;'>
<?=$post->title;?>
<?php
// Edit Button
editItem($post, 'margin-top: 10px; color: #1c98d5;');
?>
</h3>
<p class='blog-info' style='color: aliceblue; margin-bottom: 10px; font-size: 1.7rem;'>
<?=blogInfo($post, $user);?>
</p>
<p style='color: #dfe0d6;'><?=$post->render('body', 'text-small');?>..</p>
<a href="<?=$post->url?>" style='color: #1c98d5;'><?=setting('read-more');?> &raquo;</a>
</div><!-- ./blog-post -->
<?php endforeach;
