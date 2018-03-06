<?php
namespace app\login\controller;
use think\Controller;
use think\facade\Session;
class Index extends Controller
{
    /**
     *登录页面
     *
     */
    public function index()
    {
        
        return $this->fetch('login'); 
    }

    
}
