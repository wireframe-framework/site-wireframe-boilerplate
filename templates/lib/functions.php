<?php namespace ProcessWire;

/**
 * Site functions
 *
 * This file contains site-specific functions, such as common render-helpers.
 */

/**
 * Render menu using MarkupSimpleNavigation
 *
 * @param string $label Label for the menu
 * @param array|string $options Options array or comma-separated string.
 * @param Page $page Current page.
 * @param mixed $rootPage Root page.
 * @throws WireException if provided with invalid options argument.
 * @return string
 */
function renderMenu(string $label, $options = [], Page $page = null, $rootPage = null) : string {

    // process string options
    if (is_string($options)) {
        $temp_options = explode(',', $options);
        $options = [];
        foreach ($temp_options as $option) {
            $option = explode('=', trim($option));
            $options[$option[0]] = $option[1] ?? true;
        }
    }

    // throw an exception if options is invalid
    if (!is_array($options)) {
        throw new WireException('Invalid options array provided.');
    }

    // custom option for BEM style menu class modifier
    $menu_class = 'menu';
    if (!empty($options['menu_class_modifier'])) {
        $menu_class .= ' ' . $menu_class . '--' . $options['menu_class_modifier'];
    }

    // define default options for the menu
    $default_options = [
        'outer_tpl' => '<nav class="' . $menu_class . '" aria-label="' . wire('sanitizer')->entities($label) . '">'
                     . '<ul class="menu__list menu__list--outer">||</ul>'
                     . '</nav>',
        'inner_tpl' => '<ul class="menu__list menu__list--inner">||</ul>',
        'list_field_class' => 'menu__list-item',
        'parent_class' => 'menu__list-item--parent',
        'current_class' => 'menu__list-item--current',
        'has_children_class' => 'menu__list-item--has-children',
        'levels' => true,
        'levels_prefix' => 'menu__list-item--level-',
        'item_tpl' => '<a href="{url}" class="menu__item">{title}</a>',
        'item_current_tpl' => '<a href="{url}" class="menu__item menu__item--current">{title}</a>',
    ];

    // merge options with default options
    $options = array_merge($default_options, $options);

    // initialize MarkupSimpleNavigation and render menu
    $menu = wire('modules')->get('MarkupSimpleNavigation')->render(
        $options,
        $page,
        $rootPage
    );

    return $menu;
    
}
