<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>restaurant</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/restaurant/styles.css" type="text/css" rel="stylesheet"/>
    <script src="resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="resources/scripts/axure/axQuery.js"></script>
    <script src="resources/scripts/axure/globals.js"></script>
    <script src="resources/scripts/axutils.js"></script>
    <script src="resources/scripts/axure/annotation.js"></script>
    <script src="resources/scripts/axure/axQuery.std.js"></script>
    <script src="resources/scripts/axure/doc.js"></script>
    <script src="data/document.js"></script>
    <script src="resources/scripts/messagecenter.js"></script>
    <script src="resources/scripts/axure/events.js"></script>
    <script src="resources/scripts/axure/action.js"></script>
    <script src="resources/scripts/axure/expr.js"></script>
    <script src="resources/scripts/axure/geometry.js"></script>
    <script src="resources/scripts/axure/flyout.js"></script>
    <script src="resources/scripts/axure/ie.js"></script>
    <script src="resources/scripts/axure/model.js"></script>
    <script src="resources/scripts/axure/repeater.js"></script>
    <script src="resources/scripts/axure/sto.js"></script>
    <script src="resources/scripts/axure/utils.temp.js"></script>
    <script src="resources/scripts/axure/variables.js"></script>
    <script src="resources/scripts/axure/drag.js"></script>
    <script src="resources/scripts/axure/move.js"></script>
    <script src="resources/scripts/axure/visibility.js"></script>
    <script src="resources/scripts/axure/style.js"></script>
    <script src="resources/scripts/axure/adaptive.js"></script>
    <script src="resources/scripts/axure/tree.js"></script>
    <script src="resources/scripts/axure/init.temp.js"></script>
    <script src="files/restaurant/data.js"></script>
    <script src="resources/scripts/axure/legacy.js"></script>
    <script src="resources/scripts/axure/viewer.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
  </head>
  <body>
    <div id="base" class="">

      <!-- Unnamed (Shape) -->
      <div id="u0" class="ax_shape">
        <img id="u0_img" class="img " src="images/restaurant/u0.png"/>
        <!-- Unnamed () -->
        <div id="u1" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u2" class="ax_image">
        <img id="u2_img" class="img " src="images/restaurant/u2.png"/>
        <!-- Unnamed () -->
        <div id="u3" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u4" class="ax_shape">
        <img id="u4_img" class="img " src="images/restaurant/u4.png"/>
        <!-- Unnamed () -->
        <div id="u5" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Text Field) -->
      <div id="u6" class="ax_text_field">
        <input id="u6_input" type="text" value=""/>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u7" class="ax_shape">
        <img id="u7_img" class="img " src="images/restaurant/u7.png"/>
        <!-- Unnamed () -->
        <div id="u8" class="text">
          <p><span>商家</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u9" class="ax_shape">
        <img id="u9_img" class="img " src="images/restaurant/u9.png"/>
        <!-- Unnamed () -->
        <div id="u10" class="text">
          <p><span>搜索</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u11" class="ax_shape">
        <img id="u11_img" class="img " src="images/restaurant/u11.png"/>
        <!-- Unnamed () -->
        <div id="u12" class="text">
          <p><span>首页</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u13" class="ax_shape">
        <img id="u13_img" class="img " src="images/restaurant/u13.png"/>
        <!-- Unnamed () -->
        <div id="u14" class="text">
          <p><span>餐馆</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u15" class="ax_shape">
        <img id="u15_img" class="img " src="images/restaurant/u13.png"/>
        <!-- Unnamed () -->
        <div id="u16" class="text">
          <p><span>用户</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u17" class="ax_shape">
        <img id="u17_img" class="img " src="images/restaurant/u13.png"/>
        <!-- Unnamed () -->
        <div id="u18" class="text">
          <p><span><a href="Rescomment.action?key=<s:property value="#session.ResDetail.name"/>">词频</a><br></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u19" class="ax_shape">
        <img id="u19_img" class="img " src="images/restaurant/u13.png"/>
        <!-- Unnamed () -->
        <div id="u20" class="text">
          <p><span>查询</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u21" class="ax_shape">
        <img id="u21_img" class="img " src="images/restaurant/u21.png"/>
        <!-- Unnamed () -->
        <div id="u22" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u23" class="ax_shape">
        <img id="u23_img" class="img " src="images/restaurant/u23.png"/>
        <!-- Unnamed () -->
        <div id="u24" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u25" class="ax_shape">
        <img id="u25_img" class="img " src="images/restaurant/u25.png"/>
        <!-- Unnamed () -->
        <div id="u26" class="text">
          <p><span><s:property value="#session.ResDetail.name"/></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u27" class="ax_shape">
        <img id="u27_img" class="img " src="images/restaurant/u27.png"/>
        <!-- Unnamed () -->
        <div id="u28" class="text" style="top:10px">
          <p><span><s:property value="#session.ResDetail.intro"/></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u29" class="ax_shape">
        <img id="u29_img" class="img " src="images/restaurant/u29.png"/>
        <!-- Unnamed () -->
        <div id="u30" class="text">
          <p><span><s:property value="#session.ResDetail.comment.size()"/></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u31" class="ax_shape">
        <img id="u31_img" class="img " src="images/restaurant/u29.png"/>
        <!-- Unnamed () -->
        <div id="u32" class="text">
          <p><span><s:property value="#session.ResDetail.score"/></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u33" class="ax_shape">
        <img id="u33_img" class="img " src="images/restaurant/u33.png"/>
        <!-- Unnamed () -->
        <div id="u34" class="text">
          <p><span>写评论</span></p>
        </div>
      </div>

      <!-- Unnamed (Horizontal Line) -->
      <div id="u35" class="ax_horizontal_line">
        <img id="u35_start" class="img " src="resources/images/transparent.gif" alt="u35_start"/>
        <img id="u35_end" class="img " src="resources/images/transparent.gif" alt="u35_end"/>
        <img id="u35_line" class="img " src="images/restaurant/u35_line.png" alt="u35_line"/>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u36" class="ax_shape">
        <img id="u36_img" class="img " src="images/restaurant/u36.png"/>
        <!-- Unnamed () -->
        <div id="u37" class="text">
          <p><span>全部点评</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u38" class="ax_shape">
        <img id="u38_img" class="img " src="images/restaurant/u38.png"/>
        <!-- Unnamed () -->
        <div id="u39" class="text">
          <p><span>（<s:property value="#session.ResDetail.comment.size()"/>）</span></p>
        </div>
      </div>
      
      </div>
       <div id="u888" class="ax_shape">
       <s:form action="keycomment.action" method="post">
    关键词<input name="key" type="text"> 
	<input value="提交" type="submit"><br>
	</s:form>
	<a href="page.action?targetpage=<s:property value="#session.page-1"/>">上一页</a>
	<s:property value="#session.page"/>
	<a href="page.action?targetpage=<s:property value="#session.page+1"/>">下一页</a>
	<input type="text" name="page" style="width:30px" id="page" value=""/>
    <a href="page.action?targetpage=" onclick="this.href=this.href+document.getElementById('page').value">跳转到此页</a>
    <table id="tb" width="800" border="0">
  		<caption></caption>
  		<tr>
  			<th>用户</th><th>评分</th><th>评论<s:property value="#session.ResDetail.comment.size()"/></th>
  		</tr>
  		<s:iterator  value="#session.ResDetail.comment" id="f" begin="#session.page*10-10" end="#session.page*10-1">
  			<tr>
  				<td aligin="center" width="200"><a href="usercom.action?username=<s:property value="#f.username"/>"><s:property value="#f.username"/></a></td>
  				<td aligin="center" width="400"><s:property value="#f.score"/></td>
  				<td aligin="center" width="1000"><s:property value="#f.content"/></td>
  				</td>
  			</tr>
  		</s:iterator>
  	</table>
     </div> 

      <!-- Unnamed (Shape) -->
      <div id="u40" class="ax_shape">
        <img id="u40_img" class="img " src="images/restaurant/u40.png"/>
        <!-- Unnamed () -->
        <div id="u41" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u42" class="ax_shape">
        <img id="u42_img" class="img " src="images/restaurant/u42.png"/>
        <!-- Unnamed () -->
        <div id="u43" class="text">
          <p><span>大家关注点</span></p>
        </div>
      </div>
      

      <!-- Unnamed (Horizontal Line) -->
      <div id="u44" class="ax_horizontal_line">
        <img id="u44_start" class="img " src="resources/images/transparent.gif" alt="u44_start"/>
        <img id="u44_end" class="img " src="resources/images/transparent.gif" alt="u44_end"/>
        <img id="u44_line" class="img " src="images/restaurant/u44_line.png" alt="u44_line"/>
      </div>

      <!-- Unnamed (Text Field) -->
      <div id="u45" class="ax_text_field">
        <input id="u45_input" type="text" value="搜索评论"/>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u46" class="ax_image">
        <img id="u46_img" class="img " src="images/restaurant/u46.png"/>
        <!-- Unnamed () -->
        <div id="u47" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u48" class="ax_shape">
        <img id="u48_img" class="img " src="images/restaurant/u48.png"/>
        <!-- Unnamed () -->
        <div id="u49" class="text">
          <p><span>味道不错（211）</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u50" class="ax_shape">
        <img id="u50_img" class="img " src="images/restaurant/u48.png"/>
        <!-- Unnamed () -->
        <div id="u51" class="text">
          <p><span>服务热情（124）</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u52" class="ax_shape">
        <img id="u52_img" class="img " src="images/restaurant/u48.png"/>
        <!-- Unnamed () -->
        <div id="u53" class="text">
          <p><span>海鲜不错（88）</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u54" class="ax_shape">
        <img id="u54_img" class="img " src="images/restaurant/u48.png"/>
        <!-- Unnamed () -->
        <div id="u55" class="text">
          <p><span>肉类新鲜（75）</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u56" class="ax_shape">
        <img id="u56_img" class="img " src="images/restaurant/u48.png"/>
        <!-- Unnamed () -->
        <div id="u57" class="text">
          <p><span>性价比较高（50）</span></p>
        </div>
      </div>

   
    </div>
  </body>
</html>

