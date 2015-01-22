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
 * customize post type normal [NOTICE, NEWS]
 * this post type has no taxonomy
 */
function add_custom_post_type() {
	_register_custom_post_type('NOTICE', 'notice');
	_register_custom_post_type('NEWS', 'news');
}

function _register_custom_post_type($label, $slag) {
	register_post_type($slag,
		array(
			'label' => $label,
			'labels' => array(
				'name' => $label,
				'singular_name' => $label,
				//'add_new' => $label . '��ǉ�',
				//'new_item' => '�V����' . $label,
				//'view_news' => $label . '��\��',
				//'not_found' => $label . '�͌�����܂���ł���',
				//'not_found_in_trash' => '�S�~����' . $label . '�͂���܂���B',
				//'search_items' => $label . '������',
			),
			'public' => true,
			'show_ui' => true,
			'has_archive' => true,
			'capability_type' => 'post',
			'hierarchical' => true,
			'menu_position' => 5,
			'supports' => array('title', 'editor', 'author', 'thumbnail', 'comments', 'custom-fields',),
			'yarpp_support' => true, // YARPP�v���O�C���p
			'query_var' => true,
			'rewrite' => array('slug' => $slag, 'with_front' => false),
		)
	);
	flush_rewrite_rules();
}
add_action('init', 'add_custom_post_type');

/**
 * customize post type [FAQ]
 * this post type has taxonomies=[post_tag, category]
 */
function add_custom_post_type_faq() {
	_register_custom_post_type_faq('FAQ', 'faq');
}

function _register_custom_post_type_faq($label, $slag) {
	register_post_type($slag,
		array(
			'label' => $label,
			'labels' => array(
				'name' => $label,
				'singular_name' => $label,
				//'add_new' => $label . '��ǉ�',
				//'new_item' => '�V����' . $label,
				//'view_news' => $label . '��\��',
				//'not_found' => $label . '�͌�����܂���ł���',
				//'not_found_in_trash' => '�S�~����' . $label . '�͂���܂���B',
				//'search_items' => $label . '������',
			),
			'public' => true,
			'show_ui' => true,
			'has_archive' => true,
			'capability_type' => 'post',
			'hierarchical' => true,
			'menu_position' => 5,
			'supports' => array('title', 'editor', 'author', 'thumbnail', 'comments', 'custom-fields',),
			'yarpp_support' => true, // YARPP�v���O�C���p
			'query_var' => true,
			'rewrite' => array('slug' => $slag, 'with_front' => false),
			'taxonomies' => array('post_tag', 'category'),
		)
	);
	flush_rewrite_rules();
}
add_action('init', 'add_custom_post_type_faq');


/**
 *
 */
if (is_admin()) {
	include_once 'functions-post-type.php';
	include_once 'functions-tag.php';
}

