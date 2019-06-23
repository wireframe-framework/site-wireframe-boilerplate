<?php

namespace Wireframe\Controller;

class WideBasicPageController extends \Wireframe\Controller {

    /**
     * Init method
     */
    public function init() {

        // For this template we want to use the view scripts of the basic-page
        // template, so we override the default template property with our own
        // one (basic-page).
        $this->view->setTemplate('basic-page');

        // Hide the aside column
        $this->view->hide_aside = true;
    }

}
