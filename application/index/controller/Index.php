<?php
namespace app\index\controller;
//use think\Controller;
use think\Controller;
use app\common\controller\Base;
class Index extends Base
{
    public function index()
    {
        return $this -> fetch();
    }
}
