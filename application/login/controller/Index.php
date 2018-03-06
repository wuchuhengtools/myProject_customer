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
        if(Session::get('islogin')){
            return redirect('index/index/index');// 登录定向到主模块
        }else{
            return $this->fetch('login'); 
        }
    }
   

    
}
