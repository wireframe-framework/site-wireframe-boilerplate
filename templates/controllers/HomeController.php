<?php

namespace Wireframe\Controller;

/**
 * HomeController is the Controller class for the home template
 */
class HomeController extends \Wireframe\Controller {

    /**
     * Init method
     */
    public function init() {

        // Hide the aside column
        $this->view->hide_aside = true;

        // Alternative JSON view for the home template: when URL segment #1 is
        // set and the value is data.json, the page will be rendered using the
        // json.php (/site/templates/views/scripts/home/json.php) view script,
        // and without any layout file (we don't want "frames" for this view).
        if ($this->input->urlSegment1 === 'data.json') {
            $this->view->setLayout(null)->setView('json');
        }
    }

    /**
     * Generate JSON string from page content
     *
     * Since this is a public method returning a value, said value will become
     * available in the View as $this->json. We could as well pass the data to
     * View in our init() method ($this->view->json = ...) and that would have
     * exactly the same effect.
     *
     * @return string JSON string of page content
     */
    public function json(): string {

        // Define values to include in JSON data
        $data = [
            'title' => $this->page->title,
            'headline' => $this->page->headline,
            'summary' => $this->page->summary,
            'main' => $this->page->main,
            'left' => $this->page->left,
            'right' => $this->page->right,
            'highlights' => $this->page->highlights->each(['title', 'summary', 'icon']),
        ];
        
        // JSON encode the data
        $json = json_encode($data, JSON_UNESCAPED_UNICODE);
        if ($json === false) {
            $json = '{}';
        }

        return $json;
    }

}
