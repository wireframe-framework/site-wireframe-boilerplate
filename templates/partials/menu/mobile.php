<?php namespace ProcessWire; ?>

<input type="checkbox" id="mobile-menu-toggle" class="menu-toggle" aria-controls="mobile-menu" hidden>
<label for="mobile-menu-toggle" class="menu-toggle-label" tabindex="0">
    <i class="fas fa-bars" aria-hidden="true"></i>
    <span class="visually-hidden"><?= __('Toggle mobile menu') ?></span>
</label>

<?php
echo $menu->render([
    'root_page' => $home,
    'current_page' => $page,
    'collapsed' => false,
    'placeholders' => [
        'menu_class_modifier' => 'mobile',
        'aria_label' => 'Navigation',
    ],
]);
