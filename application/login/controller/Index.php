<?php
namespace app\login\controller;
use think\Controller;
use think\facade\Session;
use think\facade\Request;
use app\common\model\Encrypt;
class Index extends Controller
{
    
    public function __construct(Encrypt $encrypt){

    }
    /**
     *登录页面
     *
     */
    public function index()
    {
        if(Session::get('islogin')){
            return redirect('index/index/index');// 登录定向到主模块
        }else{
            return $this->fetch('index/login'); 
        }
    }
    /*
     *登录操作
     *
     */ 
    public function login(){
        if(Request::type() != 'json' or !Request::isPost()){ 
            $arr = [
                'errorCode'=>409,
            ];
            return json($arr);
        }else{
            $username = Request::param('username');
            $password = Request::param('password');
            $autologin = Request::param('autologin');
            
        }
        
    }

    /**
     * 测试
     */
    public function test(){
        echo 1;
    }
    
}
