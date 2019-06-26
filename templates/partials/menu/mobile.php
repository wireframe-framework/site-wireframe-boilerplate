<?php namespace ProcessWire; ?>

<input type="checkbox" id="mobile-menu-toggle" class="menu-toggle" hidden>
<label for="mobile-menu-toggle" class="menu-toggle-label"><i class="fas fa-bars"></i></label>

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
