<?php

/**
 * TAGS
 * https://core.trac.wordpress.org/ticket/25532
 *
 */
add_action('post_tag_edit_form', 'foo_render_extra_fields');
function foo_render_extra_fields() {
	$term_id = $_GET['tag_ID'];
	$term = get_term_by('id', $term_id, 'taxonomy');
	$meta = get_option("taxonomy_{$term_id}");
	//Insert HTML and form elements here
	//var_dump($term_id);
}

add_action('edited_taxonomy', 'bar_save_extra_fields', 10, 2);
function bar_save_extra_fields($term_id){
	$form_field_1 = $_REQUEST['field-name-1'];
	$form_field_2 = $_REQUEST['field-name-2'];
	$meta['key_value_1'] = $form_field_1;
	$meta['key_value_2'] = $form_field_2;
	//update_option("taxonomy_{$term_id}", $meta);
	var_dump($_REQUEST);
}

// edit_tag_form, edit_tag_form_fields, `$taxonomy . '_edit_form_fields'
add_action('edit_tag_form_fields', 'action_edit_tag_form_fields');
function action_edit_tag_form_fields() {
	$term_id = $_GET['tag_ID'];
	$term = get_term_by('id', $term_id, 'taxonomy');
	$meta = get_option("taxonomy_{$term_id}");
	$meta_tag_color = <<<EOT
<tr class="form-field term-slug-wrap">
	<th scope="row"><label for="color">Color</label></th>
				<td><input name="color" id="tag-color" value="" size="40" type="text">
	<p class="description">The “slug” is the URL-friendly version of the name. It is usually all lowercase and contains only letters, numbers, and hyphens.</p></td>
</tr>
EOT;
	echo $meta_tag_color;
}

// add_tag_form, add_tag_form_fields, `$taxonomy . '_add_form_fields'
add_action('add_tag_form_fields', 'action_add_tag_form_fields');
function action_add_tag_form_fields() {
	$meta_tag_color = <<<EOT
<div class="form-field term-slug-wrap">
	<label for="tag-color">Color</label>
	<input name="color" id="tag-color" value="" size="40" type="text">
	<p>The “slug” is the URL-friendly version of the name. It is usually all lowercase and contains only letters, numbers, and hyphens.</p>
</div>
EOT;
	echo $meta_tag_color;
}