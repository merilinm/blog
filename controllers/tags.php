<?php

class tags extends Controller
{
    function index()
    {
        $this->tags = get_all("SELECT tag_name, tag_id, COUNT(post_id) AS count
                                FROM post_tags NATURAL JOIN tag
                                GROUP BY tag_id");
    }
    function view()
    {
        $tag_id =  $this->params[0];
        $this->posts = get_all("SELECT post_id, post_subject FROM post
                                NATURAL JOIN post_tags
                                WHERE tag_id=$tag_id");
    }
}