<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/inc/top.jspf" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />


<style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);

body{
   font-family: 'Hanna', fantasy;
}


   ul,li{margin:0; padding:0; list-style:none;}
   .imglogo{
      height:250px;
      padding-left: 400px;
      
   }
   .imglogo img{
      width: 300px;
   }
   .containers{
   margin:0 auto;
   width: 1400px;
    height: 800px;
    display: flex;
    align-items: center;
   }
   
   .formdiv{
      width:700px;
      float: right;
   }
   .imgdiv{
      width:700px;
      float: left;
   }
   #registerform{/*form은 block type*/
      margin:0 auto;
      width: 700px;
   }
   
   .label{
      display:inline-block;
      width:120px;
      height: 50px;
      text-align: center;   
   }
   .inputBox{
      width:200px;
      height:30px;
      border:none;border-right:0px; border-top:0px; border-left:0px; border-bottom:1px solid;
   }
   
   input[type=button]{
      background-color:white;
      width: 110px;
      height:50px;
      border-radius: 10px;
      transition-duration: 0.3s;
      border:1px solid rgb(0, 163, 239);
      font-size: 1.1em;
      color:rgb(0, 163, 239);
      opacity: 0.8;
      font-family: 'Hanna', fantasy;
      
      
   }
   

   .birth, .tel{
      width:50px;
      height:30px;
      border:none;border-right:0px; border-top:0px; border-left:0px; border-bottom:1px solid;
      outline:none;
   
   }
   #joinbtn{
      text-align: center;
   }
   .join{
   
   background-color:white;
      width: 100px;
      height:50px;
      border-radius: 10px;
      transition-duration: 0.3s;
      border:1px solid rgb(0, 163, 239);
      font-size: 1.1em;
      color:rgb(0, 163, 239);
      opacity: 0.8;
      font-family: 'Hanna', fantasy;
      margin-right:10px;
      
      
      
   }
   .emailCheck{
      width: 300px;
      heigh
      
   }
   span{
      color:red;
   }
   
   .inputBox{
      outline:none;
   }

.cancle{
   margin-left:10px;
}


</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>
<body>
   <div class="containers">
         
      
         
         <div class="imgdiv"/> <img src="img/ilustcut.png" /></div>
         <div class="formdiv">
            <form method="post" id="registerform" action="/myapp/registerOk">
         <ul>
            <li><label class="label">아이디 <span>*</span></label><input type="text" name="userid" id="userid" class="inputBox"/>
                  <input type="button" id="idChk" value="아이디중복검사"/><br/>
                  <div class="id1"></div>
                  
                  </li>
            <li><label class="label">비밀번호 <span>*</span></label><input type="password" name="userpwd" id="userpwd" class="inputBox"/>
               <div class="pw1"></div></li>
            <li><label class="label">비밀번호확인 <span>*</span></label><input type="password" name="userpwdchk" id="userpwdchk" class="inputBox"/>
               <div class="pw2"></div></li>
                  
            <li><label class="label">이름 <span>*</span></label><input type="text" name="username" id="username" class="inputBox"/>
                  <input type="radio" name="gender" value="남" checked="checked"/>남
                  <input type="radio" name="gender" value="여"/> 여</li>
            <li>
               <label class="label">생년월일</label>
               <input name="publeYear" autocomplete="off" readonly="readonly">
               
            </li>
            <li><label class="label">전화번호</label>
               
               <input type="text" name="tel1" id="tel1" class="tel" maxlength='3' onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"/> <!-- 숫자외 다른문자 입력시 자동으로 지워짐 -->
               <input type="text" name="tel2" id="tel2" class="tel" maxlength='4' onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"/>
               <input type="text" name="tel3" id="tel3" class="tel" maxlength='4' onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"/>
               
            </li>
            
            <li><label class="label">우편번호</label><input type="text" name="zipcode" id="zipcode" class="inputBox"/>
            <input type="button" id="zipSearch" value="우편번호찾기"/>
            </li>
            <li><label class="label">주소</label><input type="text" name="addr" id="addr" class="inputBox"/></li>
            <li><label class="label">상세주소</label><input type="text" name="addrdetail" id="addrdetail" class="inputBox"/></li>
            <li><label class="label">이메일</label><input type="text" id="emailid" name="emailid" class="inputBox"/>@
            <input type="text" name="domain" id="domain" class="inputBox">
            <input type="button" name="emailConfirm" id="emailConfirm" value="인증하기"/>
            </li>
            <li id="joinbtn"><input type="submit" value="가입하기"class="join" /></li>
      </form>
      <div class="emailCheck"></div>
      </div><!--formdiv  -->
   </div><!-- container -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<script>



const config = {
      dateFormat: 'yy-mm-dd',
      showOn : "button",
      buttonText:"날짜 선택",
      changeYear:true,
      yearRange:'1900',
   }
   
         //캘린더
         $(function() {
           $( "input[name='publeYear']" ).datepicker(config);
         });
         
         //아이디 유효성검사
         $(function(){
             var getCheck= RegExp(/^[a-z0-9]{4,12}$/);
            $('#userid').keyup(function(){
                 if(!getCheck.test($("#userid").val())){
                    $(".id1").text("4~12자의 영문 소문자, 숫자만 가능합니다.");
                    $(".id1").attr("style","color:red").css("margin-left","120px").css("margin-top","-20px");
                   }else{
                    $(".id1").text("옳바른 형식입니다.");
                    $(".id1").attr("style","color:green").css("margin-left","120px").css("margin-top","-20px");
                   }
            
            });
         });
         
   
         //아이디 중복체크
         $(function(){
            $("#idChk").click(function(){
               var datas="userid="+$("#userid").val().trim();
                  //console.log(datas);//고구마들어옴.
               $.ajax({
                  url:"/myapp/idCheck",
                  data:datas,
                  success:function(result){
                     console.log(result);
                     if(result==1){
                        $(".id1").text("중복된 아이디 입니다.");
                        $(".id1").attr("style","color:red").css("margin-left","120px").css("margin-top","-20px");
                        
                     }else{
                        $(".id1").text("사용가능한 아이디 입니다.");
                        $(".id1").attr("style","color:green").css("margin-left","120px").css("margin-top","-20px");
                        
                     }
                  }
               });
            });
         });
         

         
</script>
<script>
//비밀번호 유효성 검사
            $(function(){
               var reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
               $('#userpwd').keyup(function(){
               var pw = $("#userpwd").val();
               var id = $("#userid").val();
               if(/(\w)\1\1\1/.test(pw)){
               $(".pw1").text('같은 문자를 4번 이상 사용하실 수 없습니다.');
                $(".pw1").attr("style","color:red").css("margin-left","120px").css("margin-top","-20px");
                }else if(pw.search(id) > -1){
                   $(".pw1").text("비밀번호에 아이디가 포함되었습니다.");
                   $(".pw1").attr("style","color:red").css("margin-left","120px").css("margin-top","-20px");
                }else if(pw.search(/\s/) != -1){
                   $(".pw1").text("비밀번호는 공백 없이 입력해주세요.");
                   $(".pw1").attr("style","color:red").css("margin-left","120px").css("margin-top","-20px");
                }else if(false == reg.test(pw)) {
                  $(".pw1").text('비밀번호는 8자 이상이어야 하며, 숫자/대문자/소문자/특수문자를 모두 포함해야 합니다.');
                  $(".pw1").attr("style","color:red").css("margin-left","120px").css("margin-top","-20px");
                }else{
                   $(".pw1").text("사용가능한 비밀번호 입니다.");
                   $(".pw1").attr("style","color:green").css("margin-left","120px").css("margin-top","-20px");
                }

            });
         });

//비밀번호 확인
         
         
         $(function(){
             $('#userpwdchk').keyup(function(){
                 if($('#userpwd').val()!=$('#userpwdchk').val()){
                    $(".pw2").text("비밀번호가 일치하지 않습니다.");
                    $(".pw2").attr("style","color:red").css("margin-left","120px").css("margin-top","-20px");
                   
                 } else{
                   $(".pw2").text('비밀번호가 일치합니다.');
                   $(".pw2").attr("style","color:green").css("margin-left","120px").css("margin-top","-20px");
                 }

             });
         });
//이메일 인증번호 확인했을때 팝업창

	$(function(){
		$('#emailConfirm').click(function(){
			var datas="email="+$("#emailid").val()+"@"+$("#domain").val();
     				 console.log(datas);//email주소 들어옴.
        $.ajax({
           url:"/myapp/emailSending",
           data:datas,
           success:function(result){
              console.log(result);
              
				let popUrl="/myapp/register/emailCheck?dice="+result;
				let popOption="width = 400px, height=400px, top=300px, left=300px, scrollbars=yes";
				
				window.open(popUrl,"이메일 인증",popOption);	
              
            
           }
        });
     });
		
});


</script>




</body>

</html>