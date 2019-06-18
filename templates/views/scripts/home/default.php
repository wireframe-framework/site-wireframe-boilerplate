<?= $page->renderField('highlights') ?>

<?php if ($page->main): ?>
    <div class="content__column content__column--full">
        <?= $page->main ?>
    </div>
<?php endif; ?>

<?php if ($page->left || $page->right): ?>
    <div class="content__column">
        <?= $page->left ?>
    </div>
    <div class="content__column">
        <?= $page->right ?>
    </div>
<?php endif; ?>
