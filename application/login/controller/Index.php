<?php
namespace app\login\controller;
use think\Controller;
use think\facade\Session;
use think\facade\Request;
use think\Db as Db;
use app\common\model\Encrypt as Encrypt;
use think\facade\Cookie;
class Index extends Controller
{
    /**
     *初始化
     *
     */
    public function initialize()
    {
        if(Session::get('admin_id')){
            $this->redirect('explore/Index/index');// 登录定向到探索模块
        }
    }

    /**
     *登录页面
     *
     */
    public function index()
    {
        $Encrypt = new Encrypt;
        $username = "";
        $password = "";
        $autologin = "";
        if(Cookie::get('userinfo')){
            $unlock_url = $Encrypt->unlock_url(Cookie::get('userinfo'));
            $userinfo   = json_decode($unlock_url,true);
            $username   = $userinfo["username"];
            $password   = $userinfo["password"];
            $autologin  = "checked='checked'";
        }
        $this->assign([
            "username"  => $username,
            "password"  => $password,
            "autologin" => $autologin
        ]);
        return $this->fetch('index/login'); 
    }
    /*
     *登录操作
     *
     */ 
    public function login(){
        $Db  = new Db;
        $Encrypt = new Encrypt;
        if(Request::type() != 'json' or !Request::isPost()){ 
            $arr = [
                'errorCode'=>409,
            ];
            return json($arr);
        }else{
            $username   = Request::param('username');
            $password   = Request::param('password');
            $autologin  = Request::param('autologin');
            $hasUser    = $Db::name('admin')->where(['username'=>$username])->find();
            if(!$hasUser){
                return json([
                    'error_code'    => 401,
                    'error_msg'     => '帐号或密码不正确'
                ]);
            }
            if(md5($password) != $hasUser['password']){
                return json([
                    'error'         => 401,
                    'error_msg'     => '帐号或密码不正确'
                ]);
            } 
            if(1 != $hasUser['status']) {
                return json([
                    'error'         => 0,
                    'error_msg'     =>'帐号已被禁止！']);
            }
            // 写入数据
            Db::startTrans();
            try{
                $data = [
                    'currentlogin'  => time(),
                    'lastlogin'     => $hasUser['currentlogin'],
                    'curentip'      => Request::ip(),
                    'lastip'        => $hasUser['curentip'],
                    'isonline'      => 1
                ];
                Db::name('admin')->where('id',$hasUser['id'])->update($data);
                //登录日志
                Db::name('log')->insert([
                    'operation' => '登录成功!',
                    'admin_id'  => $hasUser['id'],
                    'time'      => time(),
                    'ip'        => Request::ip()
                ]);
                // 提交事务
                Db::commit();    
                Session::set('admin_id',$hasUser['id']);
                //socket保存密码和删除密码
                if($autologin == 'true'){
                    $set = Db::name('set')->find(); 
                    $socket_json = json_encode([
                        'username' => Request::param('username'),
                        'password' => Request::param('password'),
                    ]); 
                    $lockText = $Encrypt->lock_url($socket_json);
                    Cookie::set('userinfo',$lockText,$set['remember']);
                }else{
                    !Cookie::get('userinfo')? :Cookie::delete('userinfo');
                }
                return json(['error_code'=>200,'error_msg'=>'登录成功！']);
            } catch (\Exception $e) {
                // 回滚事务
                Db::rollback();
                return json (['error_code'=>406,'error_mg'=>'登录失败！']);
            }
        } 
    }
}
