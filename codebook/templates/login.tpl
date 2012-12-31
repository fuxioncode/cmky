<script>
$(function(){
	$("#bt_login").click(function(){
		$("#login_form").fadeIn();
	});
	
	$("#bt_login_close").click(function(){
		$("#login_form").fadeOut();
	});
	$("#login_submit").click(function(){
		$.post("/ser/codebook/login_check",{ username:$("#login_username").val(),password:$("#login_password").val()},function(data){
			$("#login_message").fadeIn();
			$("#login_message").html(data.username+":"+data.message);
			$("#login_message").fadeOut(5000);
		},"json");
	});
});
</script>	
<style type="text/css">
      .form-signin {
        max-width: 300px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }
	#login_form{
		height:0px
	}
    </style>

    <div id="login_form" class="navbar navbar-inverse navbar-fixed-top">
      <form class="form-signin pull-right" style="margin-right:100px">
		<p align="right"> <a id="bt_login_close" class="icon-remove-sign" style="cursor: pointer;"></a></p>
        <h2 class="form-signin-heading">请登录</h2><span id="login_message"></span>
        <input type="text" id="login_username" class="input-block-level" placeholder="用户名">
        <input type="password" id="login_password" class="input-block-level" placeholder="密码">
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> 记住账号
        </label>
        <a class="btn btn-large btn-primary" id="login_submit" >登录</a>
      </form>

    </div> <!-- /container -->