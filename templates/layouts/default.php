<!doctype html>
<html lang="<?= $this->lang ?>">

    <head>

        <script>
         document.documentElement.classList.add('js');
        </script>

        <!-- metadata -->
        <?php if ($page->canonical_url): ?>
            <link rel="canonical" href="<?= $page->canonical_url ?>">
        <?php endif; ?>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="generator" content="ProcessWire CMS/CMF">
        <?php if ($page->meta_description): ?>
            <meta name="description" content="<?= $page->meta_description ?>">
        <?php endif; ?>
        <?php if ($page->meta_keywords): ?>
            <meta name="keywords" content="<?= $page->meta_keywords ?>">
        <?php endif; ?>

        <!-- page title -->
        <title><?= $page->get('meta_title|title') ?><?= $page->id === $home->id ? "" : " | {$site_name}" ?></title>

        <!-- stylesheets -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:400,400i,700,700i,900,900i&amp;subset=latin-ext">
        <link rel="stylesheet" href="<?= $config->urls->resources ?>css/main.css">

        <?= $config->pagerHeadTags ?>

    </head>

    <body class="<?= $body_class ?>" itemscope itemtype="http://schema.org/WebPage">

        <a class="logo" href="<?= $home->url ?>">
            <?php if ($home->logo): ?>
                <img src="<?= $home->logo->maxSize(480, 240)->url ?>" alt="<?= $home->logo->description ?>">
            <?php else: ?>
                <i class="fas fa-layer-group"></i> <?= $site_name ?>
            <?php endif; ?>
        </a>

        <?php include $partials->menu->mobile ?>

        <header class="header">
            <div class="header__column">
                <h1 itemprop="headline"><?= $page->get('headline|title') ?></h1>
                <?= $page->summary ?>
                <?php include $partials->menu->top ?>
            </div>
        </header>

        <main>
            <?php include $partials->menu->breadcrumbs ?>
            <div id="content">
                <?= $placeholders->default ?>
            </div>
            <?php if (!$this->hide_aside): ?>
                <aside>
                    <?php include $partials->menu->sub ?>
                    <?= $placeholders->aside ?>
                </aside>
            <?php endif; ?>
        </main>

        <footer class="footer">
            <div class="footer__columns">
                <div class="footer__column"><?= $home->footer_1 ?></div>
                <div class="footer__column"><?= $home->footer_2 ?></div>
            </div>
            <div class="footer__column footer__column--full"><?= $home->footer_3 ?></div>
        </footer>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.6/highlight.min.js"></script>
        <script src="<?= $config->urls->resources ?>js/main.js"></script>

    </body>

</html>
