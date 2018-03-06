<?php
namespace app\index\controller;
//use think\Controller;
use think\Controller;

class Index extends Controller
{
    public function index()
    {
        return 131231;
    }
    public function test(){
        return __function__;
    }
    public function hello($name = 'ThinkPHP5')
    {
        return 'hello,' . $name;
    }
}
