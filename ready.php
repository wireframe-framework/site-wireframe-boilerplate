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

/**
 * Minify HTML markup
 *
 * Concept itself is very simple, ie. getting event return value from
 * $event->return, modifying it and replacing original value with new
 * one. Here I've brought in some more advanced stuff mainly to prove
 * that hooks can be used for quite a few interesting things.
 *
 * @param HookEvent $event
 */
function minifyHTML(HookEvent $event) {
    
    // event return value contains rendered markup
    $markup = $event->return;
    
    // we don't want to attempt minifying markup unless it's actually HTML
    if (strpos($markup, "<html") === false) return;
    
    // Set PCRE recursion limit to sane value = STACKSIZE / 500
    if (php_uname('s') == "Windows") {
        ini_set("pcre.recursion_limit", "524"); // 256KB stack. Win32 Apache
    } else {
        ini_set("pcre.recursion_limit", "16777");  // 8MB stack. *nix
    }

    // remove HTML comments from markup
    if (strpos($markup, "<!--") !== false) {
        $markup = preg_replace("/\s<!-- .*? -->\s/s", "", $markup);
    }
    
    // minify markup with some regexp magic. Source for this solution and
    // those ini_set rows above was this excellent StackOverflow answer:
    // http://stackoverflow.com/questions/5312349/#answer-5324014
    $minified_markup = preg_replace(
        '%             # Collapse whitespace everywhere but in blacklisted elements.
        (?>            # Match all whitespans other than single space.
          [^\S ]\s*    # Either one [\t\r\n\f\v] and zero or more ws,
          | \s{2,}     # or two or more consecutive-any-whitespace.
        )              # Note: The remaining regex consumes no text at all...
        (?=            # Ensure we are not in a blacklist tag.
          [^<]*+       # Either zero or more non-"<" {normal*}
          (?:          # Begin {(special normal*)*} construct
            <          # or a < starting a non-blacklist tag.
            (?!/?(?:textarea|pre|script)\b)
          [^<]*+       # more non-"<" {normal*}
        )*+            # Finish "unrolling-the-loop"
        (?:            # Begin alternation group.
          <            # Either a blacklist start tag.
          (?>textarea|pre|script)\b
            | \z       # or end of file.
          )            # End alternation group.
        )              # If we made it here, we are not in a blacklist tag.
        %Six',
        ' ', 
        $markup
    );

    // add a comment containing decrease percentage (just for fun, really)
    $decrease = round((1-mb_strlen($minified_markup)/mb_strlen($markup))*100, 2);
    $comment = "<!-- " . date('j.n.Y H:i:s') . " ({$decrease}%) -->";
    $return = str_replace("</html>", "</html>{$comment}", $minified_markup);

    $event->return = $return;

}
if (!$config->debug) {
    $wire->addHookAfter('Wireframe::render', 'minifyHTML');
}
