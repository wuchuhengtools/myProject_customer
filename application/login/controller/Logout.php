<?php

namespace app\login\controller;
use think\Controller;
use think\Request;
use think\facade\Session;
class Logout extends Controller
{
    /**
     *退出登录
     *
     */
    public function index() {
        Session::delete('admin_id');
        $this->redirect('login/index/index');//定向到登录页面
    }
}
