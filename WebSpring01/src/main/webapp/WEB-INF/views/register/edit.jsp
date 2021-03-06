<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
   #regDiv{width:800px;margin:0 auto;overflow:auto;}
   #regForm>ul>li{float:left; height:40px; line-height:40px; width:80%;}
   #regForm>ul>li:nth-child(2n+1){width:20%;}

   #addr{width:90%;}
</style>
<script>
   $(()=>{
     
      //우편번호 찾기 버튼 선택
      $("#zipSearch").click(()=>{
         window.open("/myapp/zipSearch","zip","width=600,height=800");
      });
      
      //회원등록 유효성 검사
      $('#regForm').submit(function(){
         if($("#userpwd").val()==""){
        	 alert("비밀번호를 입력후 수정하세요.");
        	 return false;
         }
         return true;
      });
   });
   
   
</script>

<div id='regDiv'>
   <h1>회원수정폼</h1>
   <form method='post' id='regForm' action='/myapp/editOk'>
   <ul>
      <li>아이디</li>
      <li><input type='text' name='userid' id='userid' value="${vo.userid }" readonly/></li>
      <li>비밀번호</li>
       <li><input type='password' name='userpwd' id='userpwd'/></li>
       <li>이름</li>
       <li>${vo.username }</li>
       <li>연락처</li>
       <li>
          <select name='tel1' id='tel1'>
             <script>
                var telNum = ['010','02','031','032','041','042']
                var tel = '${vo.tel1}' //'031'
                for(var i=0;i<telNum.length;i++){
                   document.write("<option value='"+telNum[i]+"'");
                   if(tel==telNum[i]) document.write("selected");
                   document.write(">"+telNum[i]+"</option>");
                }
             </script>
          </select>
          <input type='text' name='tel2' id='tel2' value="${vo.tel2 }"/>
          <input type='text' name='tel3' id='tel3' value="${vo.tel3 }"/>
       </li>
       <li>이메일</li>
       <li><input type='text' name='emailid' value="${vo.emailid }">@
          <input type='text' name='domain' value="${vo.domain }"></li>
       <li>우편번호</li>
       <li><input type='text' name='zipcode' id='zipcode' value="${vo.zipcode }">
          <input type='button' id='zipSearch' value='우편번호찾기'>
       </li>
       <li>주소</li>
       <li><input type='text' name='addr' id='addr' value="${vo.addr }"/></li>
       <li>상세주소</li>
       <li><input type='text' name='addrdetail' id='addrdetail' value="${vo.addrdetail }"/></li>
       <li>취미</li>
       <li>
          <script>
             var hobby = ['운동','쇼핑','게임','웹툰','요리','여행','독서','등산','영화관람','IT'];
             var hobbyStr = '${vo.hobbyStr}'.split("/"); //이미 선택한 취미
             var tag = "";
             for(var i=0;i<hobby.length;i++){
                tag += "<input type='checkbox' name='hobby' id='hobby"+i+"'value='"+hobby[i]+"' ";
                
                for(var j=0; j<hobbyStr.length; j++){
                   if(hobby[i] == hobbyStr[j]) tag += "checked "
                }
                tag += "/>"+ hobby[i];
                
                }
                
                document.write(tag);
             
          </script>
       </li>
       <li><input type='submit' value = '회원정보수정하기'></li>
   </ul>
   </form>
</div>