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


<div class="container">
    <div class="row">
        <div class="panel panel-default widget">
            <div class="panel-heading">
                <span class="glyphicon glyphicon-comment"></span>
                <h3 class="panel-title">
                    Recent Comments</h3>
                <span class="label label-info"></span>
            </div>

            <?foreach( $comments as $comment ):?>
            <div class="panel-body">
                <ul class="list-group">
                    <li class="list-group-item">
                        <div class="row">
                            <div class="col-xs-2 col-md-1">
                                <img src="http://placehold.it/80" class="img-circle img-responsive" alt="" /></div>
                            <div class="col-xs-10 col-md-11">
                                <div>
                                    <div class="mic-info">
                                        By: <a href="#"> <?=$comment['user_id']?></a> <?=$comment['comment_created']?>
                                    </div>
                                </div>
                                <div class="comment-text">
                                    <?=$comment['comment_text']?>
                                </div>
                                <div class="action">
                                    <button type="button" class="btn btn-primary btn-xs" title="Edit">
                                        <span class="glyphicon glyphicon-pencil"></span>
                                    </button>
                                    <button type="button" class="btn btn-success btn-xs" title="Approved">
                                        <span class="glyphicon glyphicon-ok"></span>
                                    </button>
                                    <button type="button" class="btn btn-danger btn-xs" title="Delete">
                                        <span class="glyphicon glyphicon-trash"></span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </li>
                    <?endforeach?>
                </ul>
                <a href="#" class="btn btn-primary btn-sm btn-block" role="button"><span class="glyphicon glyphicon-refresh"></span> More</a>
            </div>

        </div>
    </div>
</div>

