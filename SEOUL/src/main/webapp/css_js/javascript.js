   $(function(){  
      $('.imgslide').bxSlider({
    	  mode:'horizontal',
          slideWidth:800, 
          slideHeight:350,
          speed:3000, 
          auto:true,
          captions:true, 
          infiniteLoop:false, 
          hideControlOnEnd:true,
	    });
      
      //전체 체크박스
   
  		$('#allChk').on('change',function(){
  			$('#boardList input[type=checkbox]').prop('checked', $('#allChk').prop('checked'));
  			
  		});
  
   });

   $(function(){
      //마우스 오버, 마우스 아웃
      $("#menulist>li").on({mouseenter:function(){
         $(this).children('ul').css('display','block');
      },mouseleave:function(){
         $(this).children('ul').css('display','none'); 
      }});
   $("#logFrm").submit(function(){
			if($("#userid").val()==""){
				alert("아이디를 입력하세요");
				return false;
			}
			if($("#userid").val().length < 4 || $("#userid").val().length > 12){
				alert("아이디는 4~12자 이내로 입력 가능합니다!");
			}
			if($("#userpwd").val()==""){
				alert("비밀번호를 입력하세요.");
				return false;
			}
			return true;
		});
		
		 
    
   });
