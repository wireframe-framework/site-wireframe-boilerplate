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

// Toggle keyboard support
document.querySelectorAll('.toggle-label').forEach(function(toggleLabel) {
    toggleLabel.addEventListener('keydown', function(event) {
        // 40 = down, 38 = up, 13 = enter, 32 = space
        if ([40, 38, 13, 32].indexOf(event.keyCode) > -1) {
            const toggleInput = event.target.previousElementSibling;
            event.preventDefault();
            toggleInput.checked = event.keyCode === 40 ? true : (event.keyCode === 38 ? false : !toggleInput.checked);
            toggleInput.setAttribute('aria-expanded', toggleInput.checked);
        }
    });
});

// JS show
document.querySelectorAll('.js-show').forEach(function (item) {
    item.removeAttribute('hidden');
});

// JS hide
document.querySelectorAll('.js-hide').forEach(function (item) {
//    item.setAttribute('hidden', true);
});

/**
 * Helper function for displaying or hiding an element with JS toggle.
 *
 * @param {object} target
 * @param {bool} hiddenState
 */
function toggleTarget(target, toggle, hiddenState) {
    hiddenState = Boolean(hiddenState === undefined ? !(target.hasAttribute('hidden') || target.classList.contains('js-hide')) : !hiddenState);
    target.hidden = hiddenState;
    toggle.setAttribute('aria-expanded', !target.hidden);
    if (hiddenState) {
        target.classList.add('js-hide');
        toggle.classList.remove('js-toggle--active');
    } else {
        target.classList.remove('js-hide');
        toggle.classList.add('js-toggle--active');
    }
}

// JS toggle
document.querySelectorAll('.js-toggle').forEach(function (jsToggle) {
    jsToggle.addEventListener('click', function(event) {
        toggleTarget(document.getElementById(event.currentTarget.getAttribute('aria-controls')), event.currentTarget);
    });
    jsToggle.addEventListener('keydown', function(event) {
        // 40 = down, 38 = up, 13 = enter, 32 = space
        if ([40, 38, 13, 32].indexOf(event.keyCode) > -1) {
            event.preventDefault();
            toggleTarget(
                document.getElementById(event.currentTarget.getAttribute('aria-controls')),
                event.currentTarget,
                event.keyCode === 40 ? true : (event.keyCode === 38 ? false : undefined)
            );
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
