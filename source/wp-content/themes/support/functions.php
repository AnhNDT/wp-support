<?php

/**
 * no-sidebar template
 */
function no_sidebar() {
	$ret = false;
	if (preg_match(';/(contact|download)/;', $_SERVER['REQUEST_URI'])) {
		$ret = true;
	}
	return $ret;
}

/**
 *
 */
if (is_admin()) {
	include_once 'functions-post-type.php';
	include_once 'functions-tag.php';
}