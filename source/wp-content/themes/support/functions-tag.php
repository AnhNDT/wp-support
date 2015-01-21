<?php

/**
 * TAGS
 * ref. 
 * http://adambrown.info/p/wp_hooks/hook/edit_%7B$taxonomy%7D
 * http://wpseek.com/hook/delete_taxonomy/
 * https://core.trac.wordpress.org/ticket/25532
 * http://wordpress.stackexchange.com/questions/28467/custom-columns-on-edit-tags-php-main-page
 * http://sabramedia.com/blog/how-to-add-custom-fields-to-custom-taxonomies
 */

/**
 *
 */
function action_created_post_tag_save_tag_css($term_id, $tt_id) {
	$tag_ID = $term_id;
	//$taxonomy = $_REQUEST['taxonomy']; // 'post_tag'
	$custom_tag_css = $_REQUEST['custom_tag_css'];
	update_option("post_tag_{$tag_ID}", $custom_tag_css);
}
add_action('created_post_tag', 'action_created_post_tag_save_tag_css', 10, 2);

function action_edited_post_tag_save_tag_css() {
	$tag_ID = $_REQUEST['tag_ID'];
	//$taxonomy = $_REQUEST['taxonomy']; // 'post_tag'
	$custom_tag_css = $_REQUEST['custom_tag_css'];
	update_option("post_tag_{$tag_ID}", $custom_tag_css);
}
add_action('edited_post_tag', 'action_edited_post_tag_save_tag_css');

function action_delete_post_tag_save_tag_css($term_id, $tt_id, $deleted_term) {
	$tag_ID = $term_id;
	delete_option("post_tag_{$tag_ID}");
}
add_action('delete_post_tag', 'action_created_post_tag_save_tag_css', 10, 3);

/**
 *
 */
function action_edit_tag_form_fields() {
	$tag_ID = $_GET['tag_ID'];
	//$term = get_term_by('id', $term_id, 'taxonomy');
	$custom_tag_css = get_option("post_tag_{$tag_ID}");
	$tag_css_html = <<<EOT
<tr class="form-field term-slug-wrap">
	<th scope="row"><label for="custom_tag_css">CSS</label></th>
				<td><input name="custom_tag_css" id="custom_tag_css" value="{$custom_tag_css}" size="40" type="text">
	<p class="description">The CSS is text format for viewing more attractive.</p></td>
</tr>
EOT;
	echo $tag_css_html;
}
add_action('edit_tag_form_fields', 'action_edit_tag_form_fields'); // edit_tag_form, edit_tag_form_fields, `$taxonomy . '_edit_form_fields'

/**
 *
 */
function action_add_tag_form_fields() {
	$tag_css_html = <<<EOT
<div class="form-field term-slug-wrap">
	<label for="custom_tag_css">CSS</label>
	<input name="custom_tag_css" id="custom_tag_css" value="" size="40" type="text">
	<p>The CSS is text format for viewing more attractive.</p>
</div>
EOT;
	echo $tag_css_html;
}
add_action('add_tag_form_fields', 'action_add_tag_form_fields'); // add_tag_form, add_tag_form_fields, `$taxonomy . '_add_form_fields'

/**
 *
 */
function filter_post_tag_columns($columns){
	$columns['CSS'] = 'CSS';
	return $columns;
}
add_filter('manage_edit-post_tag_columns', 'filter_post_tag_columns');

function filter_post_tag_columns_content($value, $column, $tag_ID){
	$custom_tag_css = get_option("post_tag_{$tag_ID}");
	if (isset($custom_tag_css)) {
		$value .= $custom_tag_css;
	}
	return $value;
}
add_filter('manage_post_tag_custom_column', 'filter_post_tag_columns_content', 10, 3);

