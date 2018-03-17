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
    
    $(document).ready(function(){
        /**
         *是否显示登录按键检测
         *
         */
        function displayButton() {
            var username = $('input[name=username]').val();
            var password = $('input[name=password]').val();
            if(username.length > 0 && password.length > 0){
                $('.login').removeClass('z-disabled');
            }else{
                $('.login').addClass('z-disabled');
            }
        }

        displayButton();//如果记住密码,显示密码
        //检测显示输入按键    
        $('input[name=username],input[name=password]').on('input',function(){
            displayButton();
        }); 
    });
