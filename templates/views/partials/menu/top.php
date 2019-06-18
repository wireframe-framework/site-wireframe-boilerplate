<?php namespace ProcessWire;

echo $menu->render([
    'current_page' => $page,
    'templates' => [
        'item_current' => '<a class="menu__item menu__item--current" href="{item.url}" tabindex="0" aria-label="Current page: {item.title}">{item.title}</a>',
    ],
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
