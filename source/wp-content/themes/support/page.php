<?php
	get_header();
	$postID = '';
?>
<?php if (is_404()): ?>
                <p>Không Tìm Thấy Nội Dung Tương Ứng.</p>
<?php else: ?>
<?php     if (have_posts()) : ?>
<?php         while (have_posts()) : the_post(); ?>
<?php
				$postID = get_the_ID();
				the_content();
?>
<?php         endwhile; ?>
<?php     endif; ?>
<?php endif; ?>
<?php
	if (!no_sidebar()) {
		get_sidebar();
	}
?>
<?php get_footer(); ?>