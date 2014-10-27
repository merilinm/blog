
    <div class="list-group">
        <?foreach( $tags as $tag ):?>
        <a href="tags/view/<?=$tag['tag_id']?>" class="list-group-item"><?=$tag['tag_name']?>(<?=$tag['count']?>)</a>
        <?endforeach?>
    </div>