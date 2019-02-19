<?php namespace ProcessWire;?>

  <h3><?=editItem($item) . ' ' . setting('contact-info');?></h3>

  <ul class="uk-nav-default uk-nav-parent-icon" uk-nav>

    <?php if ($item->phone): ?>
<!-- PHONE -->
      <li>
        <i data-feather='phone' style='width: 35px; height: 35px; stroke-width: 1px'></i>
        <?=$item->phone?>
      </li><!-- /PHONE -->
    <?php endif; ?>

    <?php if ($item->e_mail): ?>
<!-- E-MAIL -->
      <li>
          <a href="mailto:<?=$item->e_mail?>">
            <i data-feather='mail' style='width: 35px; height: 35px; stroke-width: 1px'></i>
            <?=$item->e_mail?>
          </a>
      </li><!-- /E-MAIL -->
    <?php endif; ?>

    <?php if ($item->adress): ?>
<!-- ADRESS -->
      <li>
        <i data-feather='map-pin' style='width: 35px; height: 35px; stroke-width: 1px'></i>
        <?=$item->adress?>
      </li><!-- /ADRESS -->
    <?php endif; ?>
  </ul>
