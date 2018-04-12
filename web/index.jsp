<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1.0" />
  <title>用户登录页面</title>
  <%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  %>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
  <link rel="stylesheet" type="text/css" href="css/bas.css" />
  <style>
    ul{
      border:;
      width:1000px;
      height:80px;
    }
    li{
      padding-right:120px;
      list-style-type:none;
      float:left;
    }

  </style>
  <script type="text/javascript">
      function checkUserName(myUserName)
      {
          var xmlhttp;
          if (window.XMLHttpRequest)
          { // code for IE7+, Firefox, Chrome, Opera, Safari
              xmlhttp=new XMLHttpRequest();
          }
          else
          {// code for IE6, IE5
              xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
          }

          // xmlhttp.open("get","url",true/false); 是否异步请求
          xmlhttp.open("get","myCheckUserName.do?tUserName="+myUserName,true);
          xmlhttp.send();

          xmlhttp.onreadystatechange=function()
          {
              if (xmlhttp.readyState==4 && xmlhttp.status==200)
              {
                  document.getElementById("myspan").innerHTML=xmlhttp.responseText;
              }
          }
      }
      function userRegister(){
          document.loginForm.action = "myRegister.do";
          document.loginForm.submit();
      }
      function userSubmit(){
          document.loginForm.action = "myLogin.do";
          document.loginForm.submit();
      }

  </script>

</head>
<body>
<div class="box">
  <div class="login-box">
    <div class="login-content ">
      <div class="login-title text-center">
        <h1><small>登录</small></h1>
      </div>
      <div class="form">
        <form action="" method="post" name="loginForm" id="formId" >

          <div class="form-group">
            <div class="col-xs-12  ">
              <div class="input-group">
                <span class="input-group-addon"><span class=""></span></span>
                <input type="text" id="username" name="tUserName" class="form-control" placeholder="用户名" value="" onblur="checkUserName(this.value)" /> <span id="myspan" style="color:red"></span>
              </div>
            </div>
          </div>
          <div class="form-group">
            <div class="col-xs-12  ">
              <div class="input-group">
                <span class="input-group-addon"><span class=""></span></span>
                <input type="password" id="password" name="tUserPwd" class="form-control" placeholder="密码" value="" />
              </div>
            </div>
          </div>
          <div class="form-group form-actions">
            <div class="col-xs-4 col-xs-offset-4 " id="idrr">
              <ul>
                <li><button class="btn btn-lg btn-warning btn-block" type="submit" onclick="userSubmit()" />登录1</button></li>
                <li><button class="btn btn-lg btn-success btn-block" type="submit" onclick="userRegister()" />注册</button></li>
              </ul>
            </div>
          </div>


        </form>
      </div><div style="color:red;font:24px 楷体 ;text-align:center;">${information}</div>
    </div>
  </div>

</div>






</body>

</html>