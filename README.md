# site-wireframe-boilerplate
A ProcessWire starter site profile based on the wireframe output framework

## Git ignore (.gitignore file)

Please note that wireframe boilerplate includes an opinionated .gitignore file
based on Bare Miminum Git (https://gist.github.com/salcode/10017553). Please
check that this file matches your workflow, and modify it as needed.

### Purpose

Default .gitignore file serves two primary purposes: it keeps clutter out of
your version control system, and – more importantly – it helps avoid slipping
secrets into the VCS. Storing sensitive data (passwords, keys, etc.) in a VCS
is generally considered a bad practice, and should be avoided.

### Important considerations

Important considerations regarding the .gitignore file:

- ProcessWire modules directory is ignored by default. Wireframe boilerplate
  expecteds module files to be bundled using Composer, but you can also add
  specific module folders manually or commment this rule out in .gitignore.
- ProcessWire assets directory is ignored.
- ProcessWire development config file (config-dev.php) is ignored.
- Files starting with a dot (.), a hash/pound character (#), or tilde (~) are
  ignored.
- Various types of temporary files, SQL databases and dumps, and packaged files
  are ignored.
- Composer, Node, Grunt, and Bower default install directories are ignored.

### Whitelisted files

At the end of the .gitignore file you'll find a section for whitelisted files.
If your project includes a smallish number of one-off deviations from the base
rules, the easy (and safe) way out would be including more rules here instead
of removing earlier ignore rules.
