<?php namespace ProcessWire;

// Send JSON Content-Type header
header('Content-Type: application/json');

// Output page content as JSON (see HomeController::json() for more details)
echo $this->json;
