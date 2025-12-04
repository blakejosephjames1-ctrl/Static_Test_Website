function doNothing() {
    const flash = document.getElementById('flash');
    if (!flash) return;

    flash.style.opacity = '1';
    flash.setAttribute('aria-hidden', 'false');

    setTimeout(() => {
        flash.style.opacity = '0';
        flash.setAttribute('aria-hidden', 'true');
    }, 500);
}