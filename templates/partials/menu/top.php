<?php namespace ProcessWire;

echo $menu->render([
    'current_page' => $page,
    'placeholders' => [
        'menu_class_modifier' => 'top',
        'aria_label' => 'Main navigation',
    ],
    'include' => [
        'root_page' => true,
    ],
    'exclude' => [
        'level_greater_than' => 1,
    ],
]);
