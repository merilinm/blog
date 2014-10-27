<div class="span8">
    <h1><?=$post['post_subject']?></h1>
    <p><?=$post['post_text']?></p>
    <div>
        <?foreach ($tags as $tag):?>
            <a href="tags/view/<?=$tag['tag_id']?>"><span class="label label-info"><?=$tag['tag_name']?></span></a>
    <?endforeach?>
        <span class="badge badge-success">Posted 2012-08-02 20:47:04</span><div class="pull-right"></div>
    </div>
 </div>
