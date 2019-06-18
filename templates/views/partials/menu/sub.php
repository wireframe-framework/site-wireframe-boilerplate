<?php namespace ProcessWire;

echo $menu->render([
    'root_page' => $page->rootParent->id === $home->id ? $page : $page->rootParent,
    'current_page' => $page,
    'placeholders' => [
        'menu_class_modifier' => 'sub',
        'aria_label' => 'Subnavigation',
    ],
]);
