<?php

class posts extends Controller{

    function view(){
        $post_id =  $this->params[0];
        $this->post = get_first("SELECT * FROM post
                                NATURAL JOIN USER
                                WHERE post_id='$post_id'");
    }

	function index(){
        $this->posts = get_all("SELECT * FROM post");
		$this->users = get_all("SELECT * FROM user");
	}

    function index_ajax(){
		echo "\$_POST:<br>";
        var_dump($_POST);
    }

	function index_post(){
		echo "\$_POST:<br>";
		var_dump($_POST);
	}
}