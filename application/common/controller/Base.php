<?php
namespace app\common\controller;
use think\facade\Session;
use think\Controller;
class Base extends Controller
{
    /**
     *初始化
     *
     */
    public function initialize()
    {
        if(!Session::get('admin_id')){
            $this -> redirect('login/Index/index');
        } 
    }
}
