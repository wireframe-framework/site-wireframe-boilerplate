<?php if ($page->highlights->count): ?>
    <div class="highlights">
        <?php foreach ($page->highlights as $highlight): ?>
            <div class="highlights__item">
                <?php if ($highlight->icon): ?>
                    <i class="highlights__icon fas fa-<?= $highlight->icon ?>"></i>
                <?php endif; ?>
                <h2 class="highlights__headline"><?= $highlight->title ?></h2>
                <?= $highlight->summary ?>
            </div>
        <?php endforeach; ?>
    </div>
<?php endif; ?>

