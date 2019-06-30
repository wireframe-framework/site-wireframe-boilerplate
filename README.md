# site-wireframe-boilerplate

A ProcessWire starter site profile based on the wireframe output framework.

This project is intended as an opinionated starting point for sites powered by the wireframe module,
and contains a number of site features that make more sense as a part of a site profile, rather than
the wireframe module itself.

* More details about the wireframe output framework: https://wireframe-framework.com
* More details about the ProcessWire CMS/CMF: https://processwire.com

## Git ignore (.gitignore) file

Please note that wireframe boilerplate includes an opinionated .gitignore file based on Bare Minimum
Git (https://gist.github.com/salcode/10017553). Please make sure that this file suits your workflow,
and modify it as necessary.

### Purpose

Default .gitignore file serves two primary purposes: it keeps clutter out of your version control
system, and – more importantly – it helps avoid slipping secrets into the VCS. Storing sensitive
data (passwords, keys, etc.) in a VCS is considered a bad practice, and should be avoided.

### Important considerations

Important considerations regarding the .gitignore file:

- ProcessWire modules directory is ignored by default. Wireframe boilerplate expectes module files
  to be bundled using Composer, but you can also add specific module folders manually, or commment
  this rule out in .gitignore.
- ProcessWire assets directory is ignored.
- ProcessWire development config file (config-dev.php) and often used PHP environment variable file
  env.php are both ignored.
- Files starting with a dot (.), a hash/pound character (#), or a tilde (~) are ignored.
- Various types of temporary files, SQL databases and dumps, and packaged files are ignored. This
  includes any file with a .backup, .bak, .old, .tmp, or .temp suffix.
- Composer, Node, Grunt, and Bower default install directories are ignored.

### Installing modules without Composer

Since the /site/modules/ directory is by default included in the .gitignore file ignore rules, files
added beneath it won't show up if you add them and type `git status` in the site directory. This is
by design, since the wireframe boilerplate expects modules to be installed with Composer. That being
said, installing modules without Composer and adding them to your version control system is easy:

- Download or clone the module files into your /site/modules/ directory.
- From your site directory, run `git add -f modules/[module-folder]`.
    - Note that the `-f` flag is very important – if you omit it, Git won't allow you to add content
      into an ignored folder!
- Commit your newly added files to Git with `git commit modules/[module-folder] `.

Another way, obviously, would be to comment out or remove the line in the .gitignore file affecting
the modules directory. If you really want to add all your module files and directories to Git, this
is a perfectly fine thing to do. And finally, you can also manually add individual module folders
into the "whitelisted files" section of your .gitignore file.

### Whitelisted files

At the end of the .gitignore file you'll find a section for whitelisted files. If your site requires
some one-off deviations from the base rules, the easy (and safe) way out would be including more
rules here instead of removing earlier ignore rules.

## Requirements

- ProcessWire 3.0.112 or newer
- PHP 7.1 or newer
- Composer

*Other requirements, such as ProcessWire modules, are installed with Composer.*

### Notes about composer.json require order

In case you're wondering why we have two ProcessWire Composer installers required – hari/pw-module
and wireframe-framework/processwire-composer-installer – there's actually a good reason for this,
even if it's a bit of a hack. First of all, here's how Composer install order works:

* Composer doesn't let us define package install order, but it prioritizes Composer installers.
* If multiple installers compete for one package, the installer installed or loaded later wins.

Since this project depends on the ability of wireframe-framework/processwire-composer-installer to
install packages via the site directory, we're telling Composer it that we need both installers –
and because the one we actually need gets installed later, it overrides the first one, even for
packages that define that one as a dependency.

Additionally we're specifying ProcessWire itself as one of our requirements. We don't really need
it (as a requirement) but this forces Composer to always install it before this project, which in
turn makes it easier for other projects to install both ProcessWire and the Wireframe boilerplate
together without messing up the install order.

*Note: feel free to remove the ProcessWire requirement – that won't break anything. If you remove
or alter the installer requirements, on the other hand, you may not be able to install modules
from the site directory anymore.*

## How to install

1. Obtain a fresh copy of ProcessWire 3.0.112 or newer and upload/unzip it on your server.

2. Download or clone the contents of this repository into /site-wireframe-boilerplate/ within the
   directory you uploaded/unzipped ProcessWire to. You will see other site directories (including
   /site-default/) already there, but these can be safely ignored for the time being.

3. Go to the /site-wireframe-boilerplate/ directory and run `composer install`.

4. Install ProcessWire by accessing the URL it lives in with your web browser. When the installer
   asks you to choose a site profile, choose "Wireframe Boilerplate Site Profile".

## License

This project is licensed under the Mozilla Public License Version 2.0.