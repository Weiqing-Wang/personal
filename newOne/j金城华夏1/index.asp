<!--#include file="INC/Conn.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 4.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title><%=cityname%></title>
<meta name="keywords" content="<%= cityword %>">
<meta name="description" content="<%= citydes %>">
<link href="css/jc.css"  rel="stylesheet" type="text/css" />
    <link href="css/archefoucs.css" rel="stylesheet" />
    <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="js/archefoucs.js" type="text/javascript"></script>
	
	<link rel=stylesheet type=text/css href="css/lrtk.css">
	<script type=text/javascript src="js/lrtk.js"></script>
	<script type=text/javascript src="js/jquery-1.4.2.min.js"></script>
</head>
<body>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<div id="lianxi">
  <div class="lx1">
    <div class="lx2"><img src="images/j_17.jpg" width="175" height="10" /></div>
    <div class="lx3">
      <div class="lx3-1">车险在线报价</div>
      <div class="lx3-2">
        <div class="lx3-3">
          <label for="select"></label>
            <select name="select" class="lx-xl" id="select">
              <option>汽车</option>
            </select>
        </div>
        <div class="lx3-3">
            <label for="textfield"></label>
            <input name="textfield" type="text" class="lx-xl1" id="textfield" />
            <input  class="lx-xl2" />
        </div>
        <div class="lx3-4"><img src="images/j_38.jpg" width="157" height="5" /></div>
      </div>
      <div class="lx3-5">
        <div class="lx3-6">在线客服（在线）</div>
        <div class="lx3-6">在线客服（在线）</div>
        <div class="lx3-6">在线客服（在线）</div>
        <div class="lx3-6">在线客服（在线）</div>
        <div class="lx3-7">在线客服（离线）</div>
      </div>
    </div>
    <div class="lx2"><img src="images/j_67.jpg" width="175" height="20" /></div>
  </div>
  <div class="weixin">
  <h2>微信号：23465731</h2>
  <img src="images/j_77.jpg" width="106" height="107" />
  </div>
</div>
<script type="text/javascript">
function MM_showHideLayers() { //v9.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3) 
  with (document) if (getElementById && ((obj=getElementById(args[i]))!=null)) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v=='hide')?'hidden':v; }
    obj.visibility=v; }
}
</script>
<style type="text/css">
<!--
.ti-3 a:link {
	color: #C60000;
	text-decoration: none;
}
.ti-4 a {
	color: #CE0000;
	text-decoration: none;
}
-->
</style>
<div class="t">
  <div class="t1">
<div class="t1-1">
      <div class="ti-2">你好,欢迎来到金诚华夏！</div>
      <div class="ti-3"><a href="login.asp">请登录</a></div>
      <div class="ti-3"><a href="register.asp">免费注册</a></div>
      <div class="ti-6">
        <a class="ti-7" href="#">微博</a>
        <a class="ti-8" href="#">微博</a>
        <a class="ti-9" href="#">微博</a>
      </div>
      <div class="ti-5">关注我们：</div>
      <div class="ti-4"><a href="#" onClick="window.external.addFavorite('http://#','北京市金城华夏保险代理有限公司')">收藏本站</a></div>
    </div>  </div>
  <div class="t2"><img src="images/j_07.jpg" width="1013" height="103" /></div>
  <div class="t3">
    <div class="t3-1">
      <div class="t3-2">所有保险分类</div>
      <div class="t3-4"><a href="index.asp">首页</a></div>
      <div id="t3-3" onmouseover="MM_showHideLayers('apDiv1','','show')" onmouseout="MM_showHideLayers('apDiv1','','hide')"><a href="buy.asp?id=7">在线购买</a></div>
      <div id="apDiv1" onmouseover="MM_showHideLayers('apDiv1','','show')" onmouseout="MM_showHideLayers('apDiv1','','hide')">
        <div class="aa">
          <ul>
<%
Set Rs=conn.execute("select * from News_cat2 where parentid=1 order by Sort_order asc")
do while not Rs.eof
%>
           <li><a href="buy.asp?id=<%=rs("Id")%>"><%=rs("Catname")%></a></li>
<%
Rs.movenext
loop
Rs.close
Set Rs=nothing
%>
		 </ul>
        </div>
       <div class="aa1"><img src="images/112.jpg" width="206" height="158" /></div>
      </div>
      <div id="t3-5"  onmouseover="MM_showHideLayers('apDiv2','','show')" onmouseout="MM_showHideLayers('apDiv2','','hide')"><a href="service.asp?id=2">客户服务</a></div>
      <div id="apDiv2" onmouseover="MM_showHideLayers('apDiv2','','show')" onmouseout="MM_showHideLayers('apDiv2','','hide')">
        <div class="aa">
          <ul>
<%
Set Rs=conn.execute("select * from News_cat3 where parentid=1 order by Sort_order asc")
do while not Rs.eof
%>
           <li><a href="service.asp?id=<%=rs("Id")%>"><%=rs("Catname")%></a></li>
<%
Rs.movenext
loop
Rs.close
Set Rs=nothing
%>
           <li><a href="http://www.bjjtgl.gov.cn/publish/portal0/tab820/" target="_blank">预约验车</a></li>
         </ul>
        </div>
       <div class="aa1"><img src="images/112.jpg" width="206" height="158" /></div>
      </div>
      <div id="t3-6" onmouseover="MM_showHideLayers('apDiv3','','show')" onmouseout="MM_showHideLayers('apDiv3','','hide')"><a href="aboutus.asp?id=3">公司简介</a></div>
      <div id="apDiv3" onmouseover="MM_showHideLayers('apDiv3','','show')" onmouseout="MM_showHideLayers('apDiv3','','hide')">
        <div class="aa">
          <ul>
<%
Set Rs=conn.execute("select * from News_cat1 where parentid=2 order by Sort_order asc")
do while not Rs.eof
%>
           <li><a href="aboutus.asp?id=<%=rs("Id")%>"><%=rs("Catname")%></a></li>
<%
Rs.movenext
loop
Rs.close
Set Rs=nothing
%>
		 </ul>
        </div>
       <div class="aa1"><img src="images/112.jpg" width="200" height="148" /></div>
      </div>
      <div id="t3-7" onmouseover="MM_showHideLayers('apDiv4','','show')" onmouseout="MM_showHideLayers('apDiv4','','hide')"><a href="auto.asp?id=2">汽车生活</a></div>
      <div id="apDiv4" onmouseover="MM_showHideLayers('apDiv4','','show')" onmouseout="MM_showHideLayers('apDiv4','','hide')">
        <div class="aa">
          <ul>
<%
Set Rs=conn.execute("select * from News_cat4 where parentid=1 order by Sort_order asc")
do while not Rs.eof
%>
           <li><a href="auto.asp?id=<%=rs("Id")%>"><%=rs("Catname")%></a></li>
<%
Rs.movenext
loop
Rs.close
Set Rs=nothing
%>
		 </ul>
        </div>
       <div class="aa1"><img src="images/112.jpg" width="190" height="148" /></div>
      </div>
    </div>
  </div>
</div><div class="nnnn">
  <div class="n1">
    <div class="n1-1">
        <div class="n1-2" onmouseover="MM_showHideLayers('syxl','','show')" onmouseout="MM_showHideLayers('syxl','','hide')"> 
          <div class="n1-3"><img src="images/j_14.jpg" width="21" height="20" /></div>
          <h2><a href="1jchx-q.asp">汽车保险</a></h2>
          <p>私家 &nbsp; <a href="jchx-qz.asp">组合</a></p>
        </div>
        <div id="syxl" onmouseover="MM_showHideLayers('syxl','','show')" onmouseout="MM_showHideLayers('syxl','','hide')">
        <div id="zhe"></div>
        <div id="xxian"></div>
  <table width="408" height="217" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td width="185" height="33" valign="bottom" style="ppadding-left:8px; padding-bottom:5px; border-bottom-style:solid; border-bottom-width:1px; border-bottom-color:#CCC;"><strong>私家车险</strong></td>
      <td width="223" rowspan="3" style="padding-left:12px;"><img src="images/kefu.jpg" width="215" height="121" /></td>
    </tr>
    <tr>
      <td height="34" style="padding-left:8px; padding-bottom:5px; border-bottom-style:solid; border-bottom-width:1px; border-bottom-color:#CCC;"><a href="1jchx-q.asp">商业险多省15%，网点最多，理赔舒心，5000万车主的共同选择。</a></td>
    </tr>
    <tr>
      <td height="37" valign="bottom" style="padding-left:8px; padding-bottom:5px; border-bottom-style:solid; border-bottom-width:1px; border-bottom-color:#CCC;"><strong>组合购买</strong></td>
    </tr>
    <tr>
      <td height="91" style="padding-left:8px; padding-bottom:5px; border-bottom-style:solid; border-bottom-width:1px; border-bottom-color:#CCC;"><a href="1jchx-qz.asp">车险+百万身价</a><br />
        <a href="jchx-yn.asp">车险+人身意外</a>       </td>
      <td width="223" valign="top" style=" padding-left:12px; padding-top:5px;
	  padding-right:12px;">&nbsp;&nbsp;&nbsp;&nbsp;国内旅游保险，也称国内旅行险或旅游意外险，承保旅行期间意外医疗及身故残疾风险....<br/><span style="font-size:14px; font-weight:bold; color:#BA1014;">电话：40000-99600</span></td>
    </tr>
  </table>
</div>
        <div class="n1-2" onmouseover="MM_showHideLayers('syxl1','','show')" onmouseout="MM_showHideLayers('syxl1','','hide')"> 
          <div class="n1-3"><img src="images/j_28.jpg" width="21" height="25" /></div>
          <h2><a href="1jchx-yy.asp">企业保险</a></h2>
          <p>财产 &nbsp; 责任</p>
        </div>
        <div id="syxl1" onmouseover="MM_showHideLayers('syxl1','','show')" onmouseout="MM_showHideLayers('syxl1','','hide')">
        <div id="zhe1"></div>
        <div id="xxian1"></div>
  <table width="423" height="293" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td width="191" height="33" valign="bottom" style="ppadding-left:8px; padding-bottom:5px; border-bottom-style:solid; border-bottom-width:1px; border-bottom-color:#CCC;"><strong>财产保险</strong></td>
      <td width="232" rowspan="3" style="padding-left:12px;"><img src="images/kefu.jpg" width="215" height="121" /></td>
    </tr>
    <tr>
      <td height="56" style="padding-left:8px; padding-bottom:5px; border-bottom-style:solid; border-bottom-width:1px; border-bottom-color:#CCC;"><a href="ccjbx.asp">财产基本险</a>                <a href="jchx-zh.asp">财产综合险</a></br><a href="ccyqx.asp">财产一切险</a>        <a href="jchx-zh1.asp">机器损失险</a></td>
    </tr>
    <tr>
      <td height="42" valign="bottom" style="padding-left:8px; padding-bottom:5px; border-bottom-style:solid; border-bottom-width:1px; border-bottom-color:#CCC;"><strong>责任保险</strong></td>
    </tr>
    <tr>
      <td height="45" style="padding-left:8px; padding-bottom:5px; border-bottom-style:solid; border-bottom-width:1px; border-bottom-color:#CCC;"><a href="jchx-zh10.asp">雇主责任险</a>        <a href="gzzex.asp">公众责任险</a><br/><a href="cpzrx.asp">产品责任险</a>
       </td>
      <td width="232" rowspan="3" valign="top" style=" padding-left:12px; padding-top:5px;
	  padding-right:12px;">&nbsp;&nbsp;&nbsp;&nbsp;国内旅游保险，也称国内旅行险或旅游意外险，承保旅行期间意外医疗及身故残疾风险....<br/><span style="font-size:14px; font-weight:bold; color:#BA1014;">电话：40000-99600</span></td></td>    </tr>
    <tr>
      <td height="43" style="padding-left:8px; padding-bottom:5px; border-bottom-style:solid; border-bottom-width:1px; border-bottom-color:#CCC;"><strong>建筑工程险</strong></td>
    </tr>
    <tr>
      <td height="23" style="padding-left:8px; padding-bottom:5px; border-bottom-style:solid; border-bottom-width:1px; border-bottom-color:#CCC;"><a href="jzgcyqx.asp">建筑工程一切险</a><br/><a href="jchx-zh11.asp">建筑安装工程一切险</a></td>
    </tr>
   
  </table>
</div>
        <div class="n1-2" onmouseover="MM_showHideLayers('syxl2','','show')" onmouseout="MM_showHideLayers('syxl2','','hide')"> 
          <div class="n1-3"><img src="images/j_40.jpg" width="21" height="24" /></div>
          <h2><a href="2jchx-yy.asp">意外险</a></h2>
          <p><a href="jchx-zh12.asp">团体</a> &nbsp; <a href="jchx-zh13.asp">个人</a></p>
        </div>
        <div id="syxl2" onmouseover="MM_showHideLayers('syxl2','','show')" onmouseout="MM_showHideLayers('syxl2','','hide')">
        <div id="zhe2"></div>
        <div id="xxian2"></div>
  <table width="423" height="217" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td width="191" height="33" valign="bottom" style="ppadding-left:8px; padding-bottom:5px; border-bottom-style:solid; border-bottom-width:1px; border-bottom-color:#CCC;"><strong><a href="jchx-zh12.asp">团体意外险</a></strong></td>
      <td width="232" rowspan="3" style="padding-left:12px;"><img src="images/kefu.jpg" width="215" height="121" /></td>
    </tr>
    <tr>
      <td height="34" style="padding-left:8px; padding-bottom:5px; border-bottom-style:solid; border-bottom-width:1px; border-bottom-color:#CCC;"></td>
    </tr>
    <tr>
      <td height="37" valign="bottom" style="padding-left:8px; padding-bottom:5px; border-bottom-style:solid; border-bottom-width:1px; border-bottom-color:#CCC;"><strong><a href="jchx-zh13.asp">个人意外险</a></strong></td>
    </tr>
    <tr>
      <td height="91" colspan="2" style="padding-left:8px; padding-bottom:5px; border-bottom-style:solid; border-bottom-width:1px; border-bottom-color:#CCC;">&nbsp;&nbsp;&nbsp;&nbsp;国内旅游保险，也称国内旅行险或旅游意外险，承保旅行期间意外医疗及身故残疾风险....<br/>        <span style="font-size:14px; font-weight:bold; color:#BA1014;">电话：40000-99600</span></td>
      </td></tr>
  </table>
</div>
        <div class="n1-4" onmouseover="MM_showHideLayers('syxl3','','show')" onmouseout="MM_showHideLayers('syxl3','','hide')">
          <div class="n1-3"><img src="images/j_46.jpg" width="21" height="24" /></div>
          <h2><a href="3jchx-yy.asp">家庭财产险</a></h2>
        </div>
        <div id="syxl3" onmouseover="MM_showHideLayers('syxl3','','show')" onmouseout="MM_showHideLayers('syxl3','','hide')">
        <div id="zhe3"></div>
        <div id="xxian3"></div>
  <table width="423" height="217" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td width="191" height="33" valign="bottom" style="ppadding-left:8px; padding-bottom:5px; border-bottom-style:solid; border-bottom-width:1px; border-bottom-color:#CCC;"><strong>京城人家</strong></td>
      <td width="232" rowspan="3" style="padding-left:12px;"><img src="images/kefu.jpg" width="215" height="121" /></td>
    </tr>
    <tr>
      <td height="34" style="padding-left:8px; padding-bottom:5px; border-bottom-style:solid; border-bottom-width:1px; border-bottom-color:#CCC;"></td>
    </tr>
    <tr>
      <td height="37" valign="bottom" style="padding-left:8px; padding-bottom:5px; border-bottom-style:solid; border-bottom-width:1px; border-bottom-color:#CCC;"><strong>人居两旺</strong></td>
    </tr>
    <tr>
      <td height="91" colspan="2" style="padding-left:8px; padding-bottom:5px; border-bottom-style:solid; border-bottom-width:1px; border-bottom-color:#CCC;">&nbsp;&nbsp;&nbsp;&nbsp;国内旅游保险，也称国内旅行险或旅游意外险，承保旅行期间意外医疗及身故残疾风险....<br/>        <span style="font-size:14px; font-weight:bold; color:#BA1014;">电话：40000-99600</span></td>
      </td>  </tr>
  </table>
</div>
        <div class="n1-4" onmouseover="MM_showHideLayers('syxl4','','show')" onmouseout="MM_showHideLayers('syxl4','','hide')">
          <div class="n1-3"><img src="images/j_49.jpg" width="25" height="23" /></div>
          <h2><a href="4jchx-yy.asp">货物运输险</a></h2>
        </div>
        <div id="syxl4" onmouseover="MM_showHideLayers('syxl4','','show')" onmouseout="MM_showHideLayers('syxl4','','hide')">
        <div id="zhe4"></div>
        <div id="xxian4"></div>
  <table width="423" height="217" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td width="191" height="33" valign="bottom" style="ppadding-left:8px; padding-bottom:5px; border-bottom-style:solid; border-bottom-width:1px; border-bottom-color:#CCC;"><strong><a href="gnhwysx.asp">国内货物运输险</a></strong></td>
      <td width="232" rowspan="3" style="padding-left:12px;"><img src="images/kefu.jpg" width="215" height="121" /></td>
    </tr>
    <tr>
      <td height="37" valign="bottom" style="padding-left:8px; padding-bottom:5px; border-bottom-style:solid; border-bottom-width:1px; border-bottom-color:#CCC;"><strong><a href="gjhwysx.asp">国外货物运输险</a></strong></td>
    </tr>
    <tr>
      <td height="91" colspan="2" style="padding-left:8px; padding-bottom:5px; border-bottom-style:solid; border-bottom-width:1px; border-bottom-color:#CCC;">&nbsp;&nbsp;&nbsp;&nbsp;国内旅游保险，也称国内旅行险或旅游意外险，承保旅行期间意外医疗及身故残疾风险....<br/>        <span style="font-size:14px; font-weight:bold; color:#BA1014;">电话：40000-99600</span></td>
      </td>
    </tr>
  </table>
</div>
    </div>
    <div class="n1-5">
  <div class="gg" id="gg">
    <div class="ggs">
      <div class="ggBox" id="ggBox"><a href="" title="车险大促赢红包" style="z-index: 3; opacity: 4;"><img src="images/q.jpg" alt="" width="840" /></a><a href="" title="地震保险抢鲜买"><img src="images/2.jpg" alt="" /></a>
	 <a href="" title="省钱就在车生活"><img src="images/j_01.jpg" alt="" /></a> </div>
    </div>
    <div class="ggb">
      <div class="ggBtns" id="ggBtns"> 
	   <a title="" href='javascript:void(0)' class="ggOn"><em>车险大促赢红包</em></a>
	   <a title="" href='javascript:void(0)'><em>地震保险抢鲜买</em></a> 
	   <a title="" href='javascript:void(0)'><em>省钱就在车生活</em></a>    </div>
  </div>
</div>
    </div>
  </div>
  </div>
</div>
<div class="n2">
  <div class="n2-1">怎么买保险适合你</div>
  <div class="n2-2">
    <div class="n2-3"><a href="jchx-cs.asp"><img src="images/j_59.jpg" width="220" height="59" /></a></div>
    <div class="n2-3"><a href="jchx-cs.asp"><img src="images/j_61.jpg" width="220" height="59" /></a></div>
    <div class="n2-3"><a href="jchx-cs.asp"><img src="images/j_63.jpg" width="220" height="59" /></a></div>
    <div class="n2-3"><a href="jchx-cs.asp"><img src="images/j_65.jpg" width="287" height="59" /></a></div>
  </div>
</div>
 <div class="n3">
   <div class="n3-1">
     <div class="n3-2">产品导航</div>
     <div class="n3-3"></div>
   </div>
   <div class="n3-4"> <a href="Insure.asp?id=17">
     <div class="n3-5"></div>
     </a>
       <div class="n3-6"><img src="images/j-1.jpg" width="2" height="159" /></div>
     <a href="claims.asp?id=23">
       <div class="n3-7"></div>
     </a>
       <div class="n3-6"><img src="images/j-1.jpg" width="2" height="159" /></div>
     <a href="Repair.asp?id=29">
       <div class="n3-8"></div>
     </a>
       <div class="n3-6"><img src="images/j-1.jpg" width="2" height="159" /></div>
     <a href="High-end.asp?id=35">
       <div class="n3-9"></div>
     </a>
       <div class="n3-6"><img src="images/j-1.jpg" width="2" height="159" /></div>
     <a href="added.asp?id=41">
       <div class="n3-10"></div>
     </a>
       <div class="n3-6"><img src="images/j-1.jpg" width="2" height="159" /></div>
     <a href="purchase.asp?id=45">
       <div class="n3-11"></div>
     </a> </div>
 </div>
 <div class="n4">
   <div class="n4-1">
     <div class="n4-2"><table width="446" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td>
<!-- 代码 开始 -->      
<div style="HEIGHT:269px; width:446 " id=idTransformView>
<ul id=idSlider class=slider>
  <div style="POSITION: relative; width:446px; height:269;">
      <ul class=txtbg></ul>
      <span>热情专业的服务团队</span>
      <a href="#"><img alt="热情专业的服务团队" src="images/01.jpg" width=446 height=269></a>
  </div>
  <div style="POSITION: relative; width:446px; height:269;">
      <ul class=txtbg></ul>
      <span>汽车精品展示区</span>
      <a href="#"><img alt="汽车精品展示区" src="images/02.jpg" width=446 height=269></a>
  </div>
  
  <div style="POSITION: relative; width:446px; height:269;">
    <ul class=txtbg></ul>
    <span>车辆维修区</span>
    <a href="#"><img alt="车辆维修区" src="images/03.jpg" width=446 height=269></a>
  </div>
  <div style="POSITION: relative; width:446px; height:269;">
      <ul class=txtbg></ul>
      <span>洗车区</span>
      <a href="#"><img alt="洗车区" src="images/04.jpg" width=446 height=269></a>
  </div>
  <div style="POSITION: relative; width:446px; height:269;">
      <ul class=txtbg></ul>
      <span>专业维修检测设备</span>
      <a href="#"><img alt="专业维修检测设备" src="images/05.jpg" width=446 height=269></a>
  </div>
</ul>
</div>

<div>
<ul id=idNum class=hdnum>
  <li><img src="images/01.jpg"></li>
  <li><img src="images/02.jpg"></li>
  <li><img src="images/03.jpg"></li>
  <li><img src="images/04.jpg"></li>
  <li><img src="images/05.jpg"></li>
</ul>
<script language=javascript>
  mytv("idNum","idTransformView","idSlider",269,5,true,2000,5,true,"onmouseover");
  //按钮容器aa，滚动容器bb，滚动内容cc，滚动宽度dd，滚动数量ee，滚动方向ff，延时gg，滚动速度hh，自动滚动ii，
  </script>
</div>
<!-- 代码 结束 --></td>
    </tr>
  </table>
</div>
   </div>
   <div class="n4-5">
     <div class="n4-6"><a href="#"><img src="images/j_114.jpg" width="305" height="194" /></a></div>
     <div class="n4-7"><a href="#"><img src="images/j_120.jpg" width="150" height="129" /></a></div>
     <div class="n4-8"><a href="#"><img src="images/j_121.jpg" width="150" height="129" /></a></div>
   </div>
   <div class="n4-9">
     <div class="n4-10">
       <div class="n4-11">金城华夏保险</div>
       <div class="n4-12"><a href="jchx-l.asp?id=2">更多</a></div>
     </div>
     <div class="n4-13">
       <ul>
<%
Set Rs=conn.execute("select top 9 * from News5 where News_type = 2 and flag=1 order by addtime desc")
do while not Rs.eof
%>
         <li><a href="article.asp?id=<%=Rs("News_id")%>"><%=CutStr(Rs("News_title"),25)%></a></li>
<%
Rs.movenext
loop
Rs.close
Set Rs=nothing
%>	
      </ul>
     </div>
   </div>
 </div>
<div class="n5"></div>
<!--#include file="foot.asp" -->
</body>
</html>