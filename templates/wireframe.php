<?php namespace ProcessWire;

/**
 * wireframe bootstrap file
 *
 * This file is responsible for bootstrapping wireframe and rendering the page. We define some basic
 * site settings here, and adjust wireframe behaviour further with hooks placed in /site/ready.php.
 *
 * @version 0.0.1
 * @author Teppo Koivula <teppo.koivula@gmail.com>
 * @license Mozilla Public License v2.0 http://mozilla.org/MPL/2.0/
 */

// init wireframe
$wireframe = $modules->get('wireframe');
$wireframe->init();

// include common functions
require_once 'lib/functions.php';

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
