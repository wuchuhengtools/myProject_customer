   /*
    * -------------------------------------------------------
    *
    * @version  1.0
    * @author   wuchuheng
    * email     wuchuheng@163.com
    * @date     2018/03/06
    * @update
    * -------------------------------------------------------
    */
    
    /**
     *显示登录按键
     *
     */
    $('input[name=username],input[name=password]').on('input',function(){
        var username = $('input[name=username]').val();
        var password = $('input[name=password]').val();
        var length   = username.length+password.length;
        if(length > 0){
            $('.login').removeClass('z-disabled');
        }else{
            $('.login').addClass('z-disabled');
        }
    });
