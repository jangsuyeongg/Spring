/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.50
 * Generated at: 2021-09-16 05:45:03 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.register;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class form_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(4);
    _jspx_dependants.put("/inc/top.jspf", Long.valueOf(1631765189563L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1631495533612L));
    _jspx_dependants.put("/inc/bottom.jspf", Long.valueOf(1631502967600L));
    _jspx_dependants.put("jar:file:/C:/workspaceSpring/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/WebSpring01/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fif_0026_005ftest;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- false 상태면 세션을 home.jsp에서는 사용하지 않겠다는 뜻이므로 true로 바꾸든지 지우든지 하렴 -->\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("   <!-- jspf 친구들은 만들고 나서 web.xml에 등록! -->\r\n");
      out.write("   <title>Home</title>\r\n");
      out.write("   <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.js\" integrity=\"sha512-n/4gHW3atM3QqRcbCn6ewmpxcLAHGaDjpEBu4xZd47N0W2oQ+6q7oc3PXstrJYXcbNU1OHdQ1T7pAP+gi5Yu8g==\" crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\"></script>\r\n");
      out.write("   <link rel=\"stylesheet\" href=\"css_js/style.css\">\r\n");
      out.write("   <script src=\"css_js/script.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<ul id=\"menu\">\r\n");
      out.write("   <li><a href=\"/myapp/\">홈</a></li>\r\n");
      out.write("   ");
      //  c:if
      org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
      boolean _jspx_th_c_005fif_005f0_reused = false;
      try {
        _jspx_th_c_005fif_005f0.setPageContext(_jspx_page_context);
        _jspx_th_c_005fif_005f0.setParent(null);
        // /inc/top.jspf(17,3) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
        _jspx_th_c_005fif_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ logStatus != 'Y' }", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
        int _jspx_eval_c_005fif_005f0 = _jspx_th_c_005fif_005f0.doStartTag();
        if (_jspx_eval_c_005fif_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\r\n");
            out.write("      <!-- request.getContextPath()는 스프링에서는 com.bitcamp.myapp을 나타낼 것 = /myapp/ -->\r\n");
            out.write("      <li><a href=\"");
            out.print( request.getContextPath() );
            out.write("/registerForm\">회원가입</a></li>\r\n");
            out.write("      <li><a href=\"/myapp/login\">로그인</a></li>\r\n");
            out.write("   ");
            int evalDoAfterBody = _jspx_th_c_005fif_005f0.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fif_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
        _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
        _jspx_th_c_005fif_005f0_reused = true;
      } finally {
        org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fif_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fif_005f0_reused);
      }
      out.write("\r\n");
      out.write("   ");
      if (_jspx_meth_c_005fif_005f1(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("</ul>");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write("	#regDiv{width:800px; margin:0 auto; overflow:auto;}\r\n");
      out.write("	#regForm>ul>li{float:left; height:40px; line-height:40px; width:80%;}\r\n");
      out.write("	#regForm>ul>li:nth-child(2n+1){width:20%;}\r\n");
      out.write("	\r\n");
      out.write("	#addr{width:90%;}\r\n");
      out.write("</style>\r\n");
      out.write("<script>\r\n");
      out.write("	$(function(){\r\n");
      out.write("		$(\"#idChk\").click(function(){\r\n");
      out.write("			window.open(\"/myapp/idCheck?userid=\"+$(\"#userid\").val(),\"id\",\"width=500,height=400\");\r\n");
      out.write("		});\r\n");
      out.write("		$(\"#userid\").keyup(function(){\r\n");
      out.write("			$(\"#idChkStatus\").val(\"N\");\r\n");
      out.write("		});\r\n");
      out.write("		//우편번호 찾기 버튼 선택\r\n");
      out.write("		$(\"#zipSearch\").click(()=>{\r\n");
      out.write("			window.open(\"/myapp/zipSearch\",\"zip\",\"width=600,height=800\");\r\n");
      out.write("		});\r\n");
      out.write("		//회원등록 유효성검사\r\n");
      out.write("		$(\"#regForm\").submit(function(){\r\n");
      out.write("			if($(\"#idChkStatus\").val()==\"N\"){\r\n");
      out.write("				alert(\"아이디를 중복검사하세요..\");\r\n");
      out.write("				return false;\r\n");
      out.write("			}\r\n");
      out.write("			return true;\r\n");
      out.write("		})\r\n");
      out.write("	});\r\n");
      out.write("</script>\r\n");
      out.write("<div id=\"regDiv\">\r\n");
      out.write("	<h1>회원가입폼</h1>\r\n");
      out.write("	<form method=\"post\" id=\"regForm\" action=\"/myapp/formOk\">\r\n");
      out.write("	<ul>\r\n");
      out.write("		<li>아이디</li>\r\n");
      out.write("		<li><input type=\"text\" name=\"userid\" id=\"userid\"/>\r\n");
      out.write("			<input type=\"button\" id=\"idChk\" value=\"아이디중복검사하기\"/>\r\n");
      out.write("			<input type=\"hidden\" id=\"idChkStatus\" value=\"N\"/><!-- N:중복검사안됨, Y:중복검사됨 -->\r\n");
      out.write("		</li>\r\n");
      out.write("			\r\n");
      out.write("		<li>비밀번호</li>\r\n");
      out.write("		<li><input type=\"password\" name=\"userpwd\" id=\"userpwd\"/></li>\r\n");
      out.write("		<li>비밀번호확인</li>\r\n");
      out.write("		<li><input type=\"password\" name=\"userpwdchk\" id=\"userpwdchk\"/></li>\r\n");
      out.write("		<li>이름</li>\r\n");
      out.write("		<li><input type=\"text\" name=\"username\" id=\"username\"/></li>\r\n");
      out.write("		<li>연락처</li>\r\n");
      out.write("		<li>\r\n");
      out.write("			<select name=\"tel1\" id=\"tel1\">\r\n");
      out.write("				<script>\r\n");
      out.write("					var telNum =['010','02','031','032','041','042']\r\n");
      out.write("					for(var i=0; i<telNum.length;i++){\r\n");
      out.write("						document.write(\"<option value='\"+telNum[i]+\"'>\"+telNum[i]+\"</option>\");\r\n");
      out.write("					}\r\n");
      out.write("				</script>\r\n");
      out.write("			</select> -\r\n");
      out.write("			<input type=\"text\" name=\"tel2\" id=\"tel2\"/> -\r\n");
      out.write("			<input type=\"text\" name=\"tel3\" id=\"tel3\"/> </li>\r\n");
      out.write("		<li>이메일</li>\r\n");
      out.write("		<li><input type=\"text\" name=\"emailid\"/> @\r\n");
      out.write("			<input type=\"text\" name=\"domain\"/></li>\r\n");
      out.write("		<li>우편번호</li>	\r\n");
      out.write("		<li><input type=\"text\" name=\"zipcode\" id=\"zipcode\">\r\n");
      out.write("			<input type=\"button\" id=\"zipSearch\" value=\"우편번호찾기\"/>\r\n");
      out.write("		</li>\r\n");
      out.write("		<li>주소</li>\r\n");
      out.write("		<li><input type=\"text\" name=\"addr\" id=\"addr\"/></li>\r\n");
      out.write("		<li>상세주소</li>\r\n");
      out.write("		<li><input type=\"text\" name=\"addrdetail\" id=\"addrdetail\"/></li>\r\n");
      out.write("		<li>취미</li>\r\n");
      out.write("		<li>\r\n");
      out.write("			<script>\r\n");
      out.write("				var hobby = ['운동','쇼핑','게임','웹툰','요리','독서','영화관람'];\r\n");
      out.write("				for(var i=0; i<hobby.length; i++){\r\n");
      out.write("					document.write(\"<input type='checkbox' name='hobby' id='hobby\"+i+\"'value='\"+hobby[i]+\"'/>\"+hobby[i]);\r\n");
      out.write("					\r\n");
      out.write("				}\r\n");
      out.write("			</script>\r\n");
      out.write("		</li>\r\n");
      out.write("		<li><input type=\"submit\" value=\"회원가입하기\"/></li>\r\n");
      out.write("		\r\n");
      out.write("		\r\n");
      out.write("	</ul>\r\n");
      out.write("	</form>\r\n");
      out.write("</div>");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div id=\"bottom\">qqqqq</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fif_005f1(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    boolean _jspx_th_c_005fif_005f1_reused = false;
    try {
      _jspx_th_c_005fif_005f1.setPageContext(_jspx_page_context);
      _jspx_th_c_005fif_005f1.setParent(null);
      // /inc/top.jspf(22,3) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fif_005f1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ logStatus == 'Y' }", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fif_005f1 = _jspx_th_c_005fif_005f1.doStartTag();
      if (_jspx_eval_c_005fif_005f1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("      <li>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ logname }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("님 <a href=\"/myapp/logout\">로그아웃</a></li>\r\n");
          out.write("      <li><a href=\"/myapp/registerEdit\">회원정보수정</a></li>\r\n");
          out.write("   ");
          int evalDoAfterBody = _jspx_th_c_005fif_005f1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fif_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f1);
      _jspx_th_c_005fif_005f1_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fif_005f1, _jsp_getInstanceManager(), _jspx_th_c_005fif_005f1_reused);
    }
    return false;
  }
}
