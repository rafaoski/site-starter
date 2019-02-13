<?php namespace ProcessWire;?>

<div id='content-body' pw-append>
<?php
$sections = pages('/options/')->home_sections;
// Home Sections
$sections = pages('/')->home_sections;
if ($sections):
foreach ($sections as $section_options):
$section= pages()->get("template=$section_options->name");?>
  <section class='home-sections <?=$section->name?>' style='margin-top: 10px'>
    <h3 class='section-heading'>
      <strong><?php editItem($section_options);?> <?=$section_options->text_1;?><br>
      </strong>
    </h3>
    <?php wireincludeFile("views/home-sections/section-{$section_options->name}",
          ['section' => $section, 'section_options' => $section_options]); ?>
    <a href="<?=$section->url;?>">
      <?=setting('read-more');?> &raquo;
    </a><br>
  </section>
<?php endforeach;
endif; ?>
</div><!-- #/content-body -->
