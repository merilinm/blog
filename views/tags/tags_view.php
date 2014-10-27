<div class="list-group">
    <?foreach( $posts as $post ):?>
        <a href="posts/view/<?=$post['post_id']?>" class="list-group-item"><?=$post['post_subject']?></a>
    <?endforeach?>
</div>
