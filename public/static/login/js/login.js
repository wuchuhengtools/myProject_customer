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
 *@登录操作
 *@type json
 */
$('.login').click(function(){
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
        }
    });
});

