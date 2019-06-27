<?php namespace ProcessWire;

/**
 * Replace [icon class="xxx] with <i class="xxx"></i>
 *
 * @param HookEvent $event
 */
function replaceIconShortcodes(HookEvent $event) {

    // if found, replace icon shortags within rendered content
    if (strpos($event->return, '[icon class="') !== false) {
        $event->return = preg_replace('/\[icon class="([\-_a-z0-9 ]+)"\]/Ui', '<i class="$1"></i>', $event->return);
    }
}
if ($page->template !== 'admin') {
    $wire->addHookAfter('Wireframe::render', 'replaceIconShortcodes');
}
