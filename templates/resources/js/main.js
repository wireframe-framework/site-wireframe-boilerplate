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

document.querySelectorAll(menuItemSelector).forEach((menuItem, index) => {
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

    // Add submenu toggle button event listener
    submenuToggle.addEventListener('click', () => {
        submenu.hidden = !submenu.hidden;
        submenuToggle.setAttribute('aria-expanded', !submenu.hidden);
        submenuToggleText.nodeValue = submenuToggleTexts[submenu.hidden];
        submenuToggleIcon.classList.remove(submenuToggleIconClasses[!submenu.hidden]);
        submenuToggleIcon.classList.add(submenuToggleIconClasses[submenu.hidden]);
    });

    // Insert toggle before menu item
    menuItem.parentNode.insertBefore(submenuToggle, menuItem);
});
