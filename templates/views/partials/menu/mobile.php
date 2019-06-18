<?php namespace ProcessWire; ?>

<input type="checkbox" id="mobile-menu-toggle" class="menu-toggle" hidden>
<label for="mobile-menu-toggle" class="menu-toggle-label"><i class="fas fa-bars"></i></label>

<?= renderMenu('Navigation', 'menu_class_modifier=mobile', null, $home) ?>
