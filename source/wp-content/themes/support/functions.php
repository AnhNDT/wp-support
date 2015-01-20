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
 * disable autosave of POST
 */
function disable_autosave() {
	wp_deregister_script('autosave');
}
add_action('wp_print_scripts', 'disable_autosave');

/**
 * customize post type
 */
function add_custom_post_type() {
	_register_custom_post_type('NOTICE', 'notice');
	_register_custom_post_type('NEWS', 'news');
}
function add_custom_post_type_faq() {
	_register_custom_post_type_faq('FAQ', 'faq');
}
function _register_custom_post_type($label, $slag) {
	register_post_type($slag,
		array(
			'label' => $label,
			'labels' => array(
				'name' => $label,
				'singular_name' => $label,
				//'add_new' => $label . 'を追加',
				//'new_item' => '新しい' . $label,
				//'view_news' => $label . 'を表示',
				//'not_found' => $label . 'は見つかりませんでした',
				//'not_found_in_trash' => 'ゴミ箱に' . $label . 'はありません。',
				//'search_items' => $label . 'を検索',
			),
			'public' => true,
			'show_ui' => true,
			'has_archive' => true,
			'capability_type' => 'post',
			'hierarchical' => true,
			'menu_position' => 5,
			'supports' => array('title', 'editor', 'author', 'thumbnail', 'comments', 'custom-fields',),
			'yarpp_support' => true, // YARPPプラグイン用
			'query_var' => true,
			'rewrite' => array('slug' => $slag, 'with_front' => false),
		)
	);
	flush_rewrite_rules();
}
function _register_custom_post_type_faq($label, $slag) {
	register_post_type($slag,
		array(
			'label' => $label,
			'labels' => array(
				'name' => $label,
				'singular_name' => $label,
				//'add_new' => $label . 'を追加',
				//'new_item' => '新しい' . $label,
				//'view_news' => $label . 'を表示',
				//'not_found' => $label . 'は見つかりませんでした',
				//'not_found_in_trash' => 'ゴミ箱に' . $label . 'はありません。',
				//'search_items' => $label . 'を検索',
			),
			'public' => true,
			'show_ui' => true,
			'has_archive' => true,
			'capability_type' => 'post',
			'hierarchical' => true,
			'menu_position' => 5,
			'supports' => array('title', 'editor', 'author', 'thumbnail', 'comments', 'custom-fields',),
			'yarpp_support' => true, // YARPPプラグイン用
			'query_var' => true,
			'rewrite' => array('slug' => $slag, 'with_front' => false),
			'taxonomies' => array('post_tag', 'category'),
		)
	);
	flush_rewrite_rules();
}
add_action('init', 'add_custom_post_type_faq');
add_action('init', 'add_custom_post_type');