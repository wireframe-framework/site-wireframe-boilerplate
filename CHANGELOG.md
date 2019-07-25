# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- SearchEngine module, Search template, and controller and view for the Search template.
- Blockquote CSS styles.

### Fixed
- Fixed minor layout issue resulting from main content area being less than 100% wide.

## [0.9.1] - 2019-07-08

### Fixed
- Fixed a reference to renamed method View::setScript() (now View::setView()).

## [0.9.0] - 2019-07-07

### Changed
- Updated required version of Wireframe to 0.4.0.

### Removed
- Removed lib/functions.php, as it wasn't really needed.

## [0.8.0] - 2019-07-03

### Added
- CSS styles for content images, content tables, and the hr element.

### Changed
- Updated required version of Wireframe to 0.3.0.

## [0.7.0] - 2019-06-30

### Added
- Custom configuration file added to the lib directory.

### Changed
- Moved MarkupMenu configuration settings to custom config file and made "Current page" label translatable.
- Bumped required versions of wireframe-framework/processwire-composer-installer, teppokoivula/markup-menu, and wireframe-framework/wireframe.

## [0.6.5] - 2019-06-29

### Fixed
- Additional accessibility fixes and improvements.

## [0.6.4] - 2019-06-29

### Changed
- Changed highlights field heading level from h3 to h2 (a11y).
- Minor style improvements to aside section highlights field headings.

## [0.6.3] - 2019-06-29

### Fixed
- Minor sub menu style fixes.

## [0.6.2] - 2019-06-29

### Fixed
- Additional accessibility improvements (color contrast).

## [0.6.1] - 2019-06-29

### Fixed
- Link hover/focus style fixes.

## [0.6.0] - 2019-06-29

### Added
- To top link and skip content link.
- New CSS variables and button classes.

### Fixed
- Various smaller layout and style fixes.
- Removed partially included highlight.js.

### Changed
- Reordered some parts of the CSS styles.

## [0.5.4] - 2019-06-27

### Changed
- Various accessibility improvements, mainly for site navigation.
- Some minor layout improvements.

## [0.5.3] - 2019-06-27

### Fixed
- Removed HTML minification from ready.php, since it was causing issues with script blocks.

## [0.5.2] - 2019-06-27

### Fixed
- Backwards compatibility for IE11 with css-vars-ponyfill and some JavaScript magic.

### Changed
- Minor visual changes.

## [0.5.1] - 2019-06-26

### Fixed
- Fixed an issue where mobile menu toggle button could overflow menu item text.

## [0.5.0] - 2019-06-26

### Added
- Added head script tag for setting a 'js' class to document root as early as possible.
- Added JavaScript based toggle feature to mobile menu subtrees.
- Added utility CSS class 'visually-hidden'.

### Changed
- Changed header background to new dark blue color (a11y).

## [0.4.0] - 2019-06-23

### Changed
- Wireframe updated to the latest version (0.2.0).
- View related templates directories reorganized to match the new default structure from Wireframe.

## [0.3.1] - 2019-06-23

### Fixed
- Added assets directory so that ProcessWire installer will work as expected.

## [0.3.0] - 2019-06-23

### Added
- Install instructions, requirements, etc. were added to the README file.
- install.sql added for the ProcessWire installation process.

### Changed
- .gitignore file updated based on the Bare Minimum Git project. Added default ignore for the modules directory.
- Update Wireframe, MarkupMenu, and processwire-composer-installer dependencies to latest versions.

## [0.2.1] - 2019-06-23

### Changed
- Updated the required version of MarkupMenu.

## [0.2.0] - 2019-06-19

### Added
- Added MarkupMenu default configuration to /site/config.php.

### Changed
- Updated MarkupMenu module.
- Switched last few MarkupSimpleNavigation references to MarkupMenu.

## [0.1.0] - 2019-06-18

### Added
- Initial commit.
