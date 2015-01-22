<?php

/**
 * disable autosave of POST
 */
function disable_autosave() {
	wp_deregister_script('autosave');
}
add_action('wp_print_scripts', 'disable_autosave');

