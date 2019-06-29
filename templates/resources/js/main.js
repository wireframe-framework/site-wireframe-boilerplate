// Be nice to IE11
if (typeof NodeList.prototype.forEach !== 'function')  {
    NodeList.prototype.forEach = Array.prototype.forEach;
}
if (!(window.CSS && window.CSS.supports && window.CSS.supports('--fake-var', 0))) {
    document.write('<script src="https:\/\/cdn.jsdelivr.net\/npm\/css-vars-ponyfill@2"><\/script>');
    document.addEventListener("DOMContentLoaded", function () {
        if (typeof cssVars === "function") cssVars();
    });
}

// Mobile menu toggle keyboard support
document.querySelectorAll('.menu-toggle-label').forEach(function(toggleLabel) {
    toggleLabel.addEventListener('keydown', function(event) {
        // 40 = down, 38 = up, 13 = enter, 32 = space
        if ([40, 38, 13, 32].indexOf(event.keyCode) > -1) {
            const mobileMenuInput = event.target.previousElementSibling;
            event.preventDefault();
            mobileMenuInput.checked = event.keyCode === 40 ? true : (event.keyCode === 38 ? false : !mobileMenuInput.checked);
            mobileMenuInput.setAttribute('aria-expanded', mobileMenuInput.checked);
        }
    });
});

// Container for submenu toggle button texts
const submenuToggleTexts = {
    'true': 'Open',
    'false': 'Close'
};

// Container for submenu toggle button icon classes
const submenuToggleIconClasses = {
    'true': 'fa-plus',
    'false': 'fa-times'
};

// Selectors, classes, and IDs for the mobile menu
const menuItemSelector = '.menu--mobile .menu__item--has-children';
const submenuIDPrefix = 'js-toggle-menu--';
const submenuToggleClass = 'menu__item__toggle';
const submenuToggleIconClass = 'fas';

/**
 * Helper function for displaying or hiding a submenu.
 *
 * @param {object} submenu
 * @param {object} submenuToggle
 * @param {string} submenuToggleText
 * @param {object} submenuToggleIcon
 * @param {bool} hiddenState
 */
function toggleSubmenu(submenu, submenuToggle, submenuToggleText, submenuToggleIcon, hiddenState) {
    submenu.hidden = hiddenState;
    submenuToggle.setAttribute('aria-expanded', !submenu.hidden);
    submenuToggleText.nodeValue = submenuToggleTexts[submenu.hidden];
    submenuToggleIcon.classList.remove(submenuToggleIconClasses[!submenu.hidden]);
    submenuToggleIcon.classList.add(submenuToggleIconClasses[submenu.hidden]);
}

document.querySelectorAll(menuItemSelector).forEach(function(menuItem, index) {
    // Get and hide submenu
    const submenu = menuItem.nextSibling;
    const submenuID = submenuIDPrefix + index;
    submenu.hidden = true;
    submenu.setAttribute('id', submenuID);

    // Create toggle button
    const submenuToggle = document.createElement('button');
    submenuToggle.classList.add(submenuToggleClass);
    submenuToggle.setAttribute('aria-controls', submenuID);
    const submenuToggleSpan = document.createElement('span');
    submenuToggleSpan.classList.add('visually-hidden');
    submenuToggle.appendChild(submenuToggleSpan);
    const submenuToggleText = document.createTextNode(submenuToggleTexts[submenu.hidden]);
    submenuToggleSpan.appendChild(submenuToggleText);
    const submenuToggleIcon = document.createElement('i');
    submenuToggleIcon.setAttribute('aria-hidden', true);
    submenuToggleIcon.classList.add(submenuToggleIconClass, submenuToggleIconClasses[submenu.hidden]);
    submenuToggle.appendChild(submenuToggleIcon);

    // Add submenu toggle button click event listener
    submenuToggle.addEventListener('click', function() {
        toggleSubmenu(submenu, submenuToggle, submenuToggleText, submenuToggleIcon, !submenu.hidden);
    });

    // Add submenu toggle button keydown event listener
    submenuToggle.addEventListener('keydown', function(event) {
        // 40 = down, 38 = up, 13 = enter, 32 = space
        if ([40, 38, 13, 32].indexOf(event.keyCode) > -1) {
            event.preventDefault();
            hiddenState = event.keyCode === 40 ? false : (event.keyCode === 38 ? true : !submenu.hidden);
            toggleSubmenu(submenu, submenuToggle, submenuToggleText, submenuToggleIcon, hiddenState);
        }
    });

    // Insert toggle before menu item
    menuItem.parentNode.insertBefore(submenuToggle, menuItem.nextSibling);
});

// To top button visibility
const topLink = document.getElementById('top-link');
if (topLink) {
    window.addEventListener("scroll", function() {
        this.style.display = window.scrollY > 1024 ? 'inline-block' : 'none';
    }.bind(topLink));
}
