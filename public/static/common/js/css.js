$(document).ready(function(){
    /**
     *显示当前所在的模块
     *
     */
    function display_module(){
        var lis = $('.m-nav').children('li').children('a');
        for(var i = lis.length - 1;i >= 0;i--){
            var li = lis[i];
            var href = $(li).attr('href');//由dom对象转为jquery对象并获取href的值
            href = window.location.protocol + '//' + window.location.host + href; //模块的路径
            if(window.location.href == href) {
                $(li).addClass('z-sel');//选中模块名和路径相同的
            }
        }
    }
    display_module();
});
