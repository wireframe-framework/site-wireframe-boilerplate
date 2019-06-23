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
- ProcessWire development config file (config-dev.php) is ignored.
- Files starting with a dot (.), a hash/pound character (#), or tilde (~) are ignored.
- Various types of temporary files, SQL databases and dumps, and packaged files are ignored.
- Composer, Node, Grunt, and Bower default install directories are ignored.

### Whitelisted files

At the end of the .gitignore file you'll find a section for whitelisted files. If your site requires
some one-off deviations from the base rules, the easy (and safe) way out would be including more
rules here instead of removing earlier ignore rules.

## Requirements

- ProcessWire 3.0.112 or newer
- PHP 7.1 or newer
- Composer

*Other requirements, such as ProcessWire modules, are installed with Composer.*

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