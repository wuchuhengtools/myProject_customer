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
 *@登录函数
 *@type json
 */
function login(){
    var username = $('input[name=username]').val();
    var password = $('input[name=password]').val();
    var autologin= $("input[type='checkbox']").is(':checked');
    $.ajax({
        type: "POST",
        url: url,
        data: {username:username,password:password,autologin:autologin},
        dataType: "json",
        success: function(data){
            console.log(data);
            if(typeof(data) != 'object') {
                data = JSON.parse(data);
            }
            if(data["error_code"] != 200) {
                $('.z-tip').removeClass('f-dn');
                $('.z-tip').text(data["error_msg"]);
            }else{
                window.location.href=domain_url;
            }
        }
    });
};
/*
 *点击登录
 */
$('.login').click(function(){
    login();
});

/**
 *回车登录
 */
$(document).keyup(function (e) {//捕获文档对象的按键弹起事件  
    if (e.keyCode == 13) {//按键信息对象以参数的形式传递进来了  
        //此处编写用户敲回车后的代码  
        var username = $('input[name=username]').val();
        var password = $('input[name=password]').val();
        if(username.length > 0 && password.length > 0){
            login();
        }
    }  
});  
