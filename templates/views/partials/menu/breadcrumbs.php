<?php namespace ProcessWire; ?>
<?php if ($page->id !== $home->id): ?>
    <nav aria-label="Breadcrumbs" class="breadcrumbs">
        <ul class="breadcrumbs__list">
            <?php foreach ($page->parents as $item): ?>
                <li class="breadcrumbs__list-item">
                    <a class="breadcrumbs__item" href="<?= $item->url ?>">
                        <?= $item->title ?>
                    </a>
                </li>
            <?php endforeach; ?>
            <li class="breadcrumbs__list-item">
                <span class="breadcrumbs__item breadcrumbs__item--active" tabindex="0" aria-label="Current page: <?= $page->title ?>">
                    <?= $page->title ?>
                </span>
            </li>
        </ul>
    </nav>
<?php endif; ?>
