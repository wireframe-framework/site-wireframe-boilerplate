<?php namespace ProcessWire;

/**
 * Site Configuration File
 *
 * This file contains additional configuration settings specific to a particular
 * site. By default we're including it via /site/templates/wireframe.php, but it
 * can be safely included in any other custom location as well.
 */

/**
 * MarkupMenu default options
 *
 * @var array
 */
$config->MarkupMenu = [
    'templates' => [
        'nav' => '<nav class="{classes} menu--{menu_class_modifier}" id="{menu_class_modifier}-menu" aria-label="{aria_label}">%s</nav>',
        'item_current' => '<a class="{classes}" href="{item.url}" aria-label="' . __('Current page') . ': {item.title}">{item.title}</a>',
    ],
];
