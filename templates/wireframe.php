<?php namespace ProcessWire;

/**
 * Wireframe bootstrap file
 *
 * This file is responsible for bootstrapping Wireframe and rendering the page. We define some basic
 * site settings here, and adjust Wireframe behaviour further with hooks placed in /site/ready.php.
 *
 * @version 0.2.0
 * @author Teppo Koivula <teppo@wireframe-framework.com>
 * @license Mozilla Public License v2.0 http://mozilla.org/MPL/2.0/
 */

// init Wireframe
$wireframe = $modules->get('Wireframe');
$wireframe->init();

// include site config settings
require_once 'lib/config.php';

// render the page
echo $wireframe->render([
    'site_name' => 'Lorem Ipsum',
    'lang' => 'en',
    'home' => $pages->get(1),
    'menu' => $modules->get('MarkupMenu'),
    'body_class' => implode(array_filter([
        'template-' . ($wire->view->template ?: $page->template),
        $wire->view->template ? 'delegated-template-' . $page->template : '',
        $wire->view->hide_aside || $page->template == 'home' ? 'wide' : '',
    ]), ' '),
]);
