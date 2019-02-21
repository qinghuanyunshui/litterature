<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/html; charset=utf8" http-equiv="Content-Type">
<title>古典文学网_中国古典文学诗词_古典小说名著阅读_古代诗歌诗词鉴赏</title>
<meta name="keywords" content="古典文学,古典诗词,古典名著" />
<meta name="description" content="古典文学网是一家专业的中国古典文学网站，提供中国古典小说、古典诗词、古典名著、中国古代文学故事、古代诗歌诗词等各种中国传统文化著作在线阅读欣赏。" />
<link href="<%=path %>/css/default.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="/include/dedeajax2.js"></script>
<script language="javascript" type="text/javascript"></script>

</head>

<body>
<jsp:include page="jsp/head.jsp"></jsp:include>

<div id="gdmain">


<div class="w1200 center mt40 gw_bbd gw_topbox">
<div class="fr w240 gw_bld gw_topbox" >
<div id="_userlogin">
<div class="userlogin">
<c:if test="${empty user}">
<form name="userlogin" action="user/login.action" method="post">
 <input type="hidden" name="fmdo" value="login" />
        <input type="hidden" name="dopost" value="login" />
        <input type="hidden" name="keeptime" value="604800" />
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="gw_ulbox">
  <tr>
    <td>用户名</td>
  </tr>
  <tr>
    <td>      <input type="text" name="uname" id="textfield" class="gw_ulbox_ip1 fs14" /></td>
  </tr>
  <tr>
    <td>密码</td>
  </tr>
  <tr>
    <td><input type="password" name="pwd" id="textfield2" class="gw_ulbox_ip1 fs14"/></td>
  </tr>
 
  <tr>
    <td>验证码</td>
  </tr>
  
  <tr>
    <td><input type="text" name="vdcode" id="textfield3" class="gw_ulbox_ip1 fs14" style=" width:92px;"/>
      <img id="vdimgck" align="absmiddle" onClick="this.src=this.src+'?'" style="cursor:pointer;margin-left:0px;text-transform:uppercase;" alt="看不清？点击更换" src="/include/vdimgck.php"/></td>
  </tr>
    
  <tr>
    <td class="gw_ulbox_btntd"><button type="submit"  class="gw_ulbox_ip2 fs14 fl"/>登录</button><a href="http://www.2wx.net/member/" class="ml10 fcgw">注册新账户</a> <a href="#" class="ml10 fcgw">忘记密码</a></td>
  </tr>
</table>
</form>
</c:if>
<c:if test="${!empty user}">
<h3>欢迎用户 ${user.getUname() }</h3>
</c:if>
</div>
</div>
</div>
<!-- /userlogin -->
     <script language="javascript" type="text/javascript">CheckLogin();</script>
<div class="fl gw_topbox_lbox">
<div class="fr w470">
<div class="gw_hotnew gw_bbd pdr30">
<p class="fb lh40 fs18 fcgw tac"><a href="/a/2018tg/7.html" target="_blank" title="七绝【云自无心景自幽】" >七绝【云自无心景自幽】</a></p>
  <p class="lh24 fs14 fc9">云自无心景自幽， 飘零浊世羡白鸥。 已是百花皆看后， 最爱庭前一树秋。...
  <a href="/a/2018tg/7.html" target="_blank" style="color:#a85104;">【阅读全文】</a></p>

</div>
<ul class="pdr30 lh30 fs14 mt16">
    <li><span class="fr fc9">12-05</span><a href="/a/2018tg/21.html" target="_blank">思念众诗友</a></li>
<li><span class="fr fc9">12-01</span><a href="/a/2018tg/7.html" target="_blank">七绝【云自无心景自幽】</a></li>
<li><span class="fr fc9">12-01</span><a href="/a/2018tg/14.html" target="_blank">相思阙</a></li>
<li><span class="fr fc9">12-01</span><a href="/a/2018tg/10.html" target="_blank">轱辘体：问讯明月几时圆</a></li>
<li><span class="fr fc9">12-01</span><a href="/a/2018tg/13.html" target="_blank">后来，我是谁的鱼儿，谁是我的海？</a></li>
<li><span class="fr fc9">12-05</span><a href="/a/2018tg/23.html" target="_blank">卜算子・芳菲</a></li>

</ul> 
  </div>
<div class="gw_fbox fl"><div id="slideBox">
		<ul id="show_pic" style="left:0px">
<li><a href="/wenzhai/101144.html" target="_blank"><img  alt="水墨意境，美到窒息" height="320" width="460" src="<%=path %>/uploads/allimg/1-1F110232P90-L.jpg" /></a></li>
<li><a href="/wenhua/100659.html" target="_blank"><img  alt="古诗词中的十大隐士：垂钓沧波间，心与浮云闲" height="320" width="460" src="<%=path %>/uploads/allimg/1-1612161040460-L.jpg" /></a></li>
<li><a href="/article/100666.html" target="_blank"><img  alt="十首思乡诗，浓得化不开的故乡情" height="320" width="460" src="<%=path %>/uploads/allimg/1-1612161140410-L.jpg" /></a></li>
<li><a href="/article/100658.html" target="_blank"><img  alt="宋词的巅峰高手：旷达苏东坡，豪放辛弃疾" height="320" width="460" src="<%=path %>/uploads/allimg/1-1612160952550-L.jpg" /></a></li>
<li><a href="/wenzhai/100631.html" target="_blank"><img  alt="魏晋风流：竹林七贤那些放诞不羁的奇葩故事" height="320" width="460" src="<%=path %>/uploads/allimg/1-161215164R70-L.jpg" /></a></li>
		
		</ul>
		<div id="slideText"></div>
		<ul id="iconBall">
			<li class="active"></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			
		</ul>
		<ul id="textBall">
    <li class="active"><a href="javascript:void(0)">水墨意境，美到窒息</a></li>
<li class="active"><a href="javascript:void(0)">古诗词中的十大隐士：垂钓沧波间，心与浮云闲</a></li>
<li class="active"><a href="javascript:void(0)">十首思乡诗，浓得化不开的故乡情</a></li>
<li class="active"><a href="javascript:void(0)">宋词的巅峰高手：旷达苏东坡，豪放辛弃疾</a></li>
<li class="active"><a href="javascript:void(0)">魏晋风流：竹林七贤那些放诞不羁的奇葩故事</a></li>
	
		</ul>
	</div><!--slideBox end--></div>
</div>
</div>
		  <div class="article_ad" style="margin:20px auto; text-align:center;">
                  <script src='/plus/ad_js.php?aid=48' language='javascript'></script>
				  <a href="/"><img src="<%=path %>/images/hfad.jpg" width="1200" height="90"></a>
				 

		   </div>





<div class="gdmain2">


<div class="main-left">


<div class="maindh">
<h2><a href="/gushici/" target="_blank" >诗词</a>/<a href="/guoxue/" target="_blank" >国学</a></h2>
</div>


<div class="mainbottom">


<div class="leftlm">

<div class="lmtt">
<div class="lmttpic"><a href="/article/104108.html" title="古诗词中的8个传统习俗，高雅浪漫" target="_blank" ><img src="<%=path %>/uploads/allimg/1-1F214100Q20-L.jpg" alt="古诗词中的8个传统习俗，高雅浪漫"  width="120" height="120" /></a></div>

  <div class="lmttxx">
  <div class="lmttbt"><a href="/article/104108.html" title="古诗词中的8个传统习俗，高雅浪漫" target="_blank">古诗词中的8个传统习俗，高雅浪漫</a></div>
  <div class="lmttinfo">踏青、折柳、登高、放纸鸢你知道古人都有哪些风俗习惯吗？古人的传统习俗是怎样形成的？诗中又是..<a href="/article/104108.html" target="_blank" style="color:#a85104;">【阅读全文】</a></div>
  </div>


</div>


<div class="lmhot">
<ul>
<li><a href="/article/104728.html"  target="_blank">精美宋词：盈盈秋水，淡淡春山</a></li>
<li><a href="/article/104727.html"  target="_blank">关于描写萤火虫的古诗词：流荧纷飞，谁又想着谁</a></li>
<li><a href="/article/104726.html"  target="_blank">读宋词，怎能错过《好事近》</a></li>
<li><a href="/article/104725.html"  target="_blank">夏天的诗词：盛夏，遇见那些一见倾心的古诗</a></li>
<li><a href="/article/104724.html"  target="_blank"> 大历十才子的经典诗歌作品欣赏</a></li>
<li><a href="/article/104110.html"  target="_blank">十九首古诗：道尽魏晋风流</a></li>
<li><a href="/article/104109.html"  target="_blank">八首诗词望断天涯，何处起相思？</a></li>
<li><a href="/article/104108.html"  target="_blank">古诗词中的8个传统习俗，高雅浪漫</a></li>
<li><a href="/article/104107.html"  target="_blank">献给春天最美的诗词！</a></li>
<li><a href="/article/104083.html"  target="_blank">十首唯美的唐诗五言绝句</a></li>

</ul>
</div>


</div>




<div class="leftlm">

<div class="lmtt">
<div class="lmttpic"><a href="/wenhua/104730.html" title="柳永：才子词人，自是白衣卿相" target="_blank" ><img src="<%=path %>/uploads/allimg/1-1F221112P90-L.jpg" alt="柳永：才子词人，自是白衣卿相"  width="120" height="120" /></a></div>

  <div class="lmttxx">
  <div class="lmttbt"><a href="/wenhua/104730.html" title="柳永：才子词人，自是白衣卿相" target="_blank">柳永：才子词人，自是白衣卿相</a></div>
  <div class="lmttinfo">多情自古伤离别，更那堪、冷落清秋节。今宵酒醒何处， 杨柳岸、晓风残月。此去经年，应是良辰好..<a href="/wenhua/104730.html" target="_blank" style="color:#a85104;">【阅读全文】</a></div>
  </div>

</div>


<div class="lmhot">
<ul>
<li><a href="/wenzhai/105141.html"  target="_blank">三国历史上最悲壮的十句话，绝对戳中你的内心！</a></li>
<li><a href="/wenzhai/105140.html"  target="_blank">曾国藩为人处世的36字诀</a></li>
<li><a href="/wenhua/105138.html"  target="_blank">道家做人，儒家做事，佛家修心</a></li>
<li><a href="/wenhua/104731.html"  target="_blank">风流才子元稹，多情薄情亦深情</a></li>
<li><a href="/wenhua/104730.html"  target="_blank">柳永：才子词人，自是白衣卿相</a></li>
<li><a href="/wenhua/104729.html"  target="_blank">钱钟书：谈中国诗</a></li>
<li><a href="/wenzhai/104723.html"  target="_blank">对酒当歌�D�D评古代十大酒兴诗人</a></li>
<li><a href="/wenzhai/104717.html"  target="_blank">连环画版《金瓶梅》，图文并茂</a></li>
<li><a href="/article/104106.html"  target="_blank">诗歌是个人朝圣，与集体无关</a></li>
<li><a href="/article/104105.html"  target="_blank">诗词肯定是小众化的，为什么要普及？</a></li>

</ul>
</div>


</div>



</div>


</div>



<div class="main-right">

<div class="mainrlm">

<div class="rlmdh"><h2><a href="/tougao/" target="_blank" >原创投稿</a></h2></div>

<div class="lmhotlist">
<ul>
 <li><span>罗沧</span><a href="/article/100566.html" target="_blank">怀念情思</a></li>
<li><span>半落梅花</span><a href="/article/100548.html" target="_blank">好事近两阙（词林正韵）</a></li>
<li><span>皇甫未来</span><a href="/article/100532.html" target="_blank">锦堂春慢~拟婉约词</a></li>
<li><span>林泉吟梦</span><a href="/article/100529.html" target="_blank">唐多令・暮春伤怀</a></li>
<li><span>风起浪</span><a href="/article/100528.html" target="_blank">关羽在华容道为何放走曹操？</a></li>
<li><span>王享先</span><a href="/article/100437.html" target="_blank">�f子外儒�鹊赖乃季S</a></li>
<li><span>庸言</span><a href="/article/100436.html" target="_blank">李煜|那个在亡国后才加冕的“千古词帝”</a></li>
<li><span>罗沧</span><a href="/article/100421.html" target="_blank">名诗讲解</a></li>
<li><span>王享先</span><a href="/article/100402.html" target="_blank">�f子�Α杆郎�」�识Y的看法</a></li>
<li><span>林泉吟梦</span><a href="/article/100405.html" target="_blank">满庭芳・荒园踏春</a></li>
<li><span>半落梅花</span><a href="/article/100393.html" target="_blank">我与古典文学网</a></li>
<li><span>流浪的心</span><a href="/article/100342.html" target="_blank">行香子・春</a></li>
<li><span>江一夫</span><a href="/article/100338.html" target="_blank">水调歌头・黄河</a></li>
<li><span>罗沧</span><a href="/article/100305.html" target="_blank">名文剖析</a></li>
<li><span>半落梅花</span><a href="/article/100304.html" target="_blank">西江月（词林正韵）</a></li>

</ul>
</div>

</div>


</div>





</div>




<div class="gdmain2">




<div class="main-right">

<div class="mainrlm">





</div>


</div>





</div>






<div class="gdmain3">

<div class="main3dh"><h2>精彩图文</h2></div>

<div class="jctw">

<ul>
<li><a href="/wenhua/101164.html" title="庄子真的是大忽悠吗？" target="_blank" ><img src="<%=path %>/uploads/allimg/1-1F112114K60-L.jpg" alt="庄子真的是大忽悠吗？" width="200" height="150" /></a><a href="/wenhua/101164.html"  target="_blank">庄子真的是大忽悠吗？</a></li>
<li><a href="/wenzhai/101145.html" title="诗词中的八种人生苦境" target="_blank" ><img src="<%=path %>/uploads/allimg/1-1F110233H20-L.jpg" alt="诗词中的八种人生苦境" width="200" height="150" /></a><a href="/wenzhai/101145.html"  target="_blank">诗词中的八种人生苦境</a></li>
<li><a href="/lsdj/renwu/101134.html" title="朱元璋为何会越长越丑？" target="_blank" ><img src="<%=path %>/uploads/allimg/1-1F1101955290-L.jpg" alt="朱元璋为何会越长越丑？" width="200" height="150" /></a><a href="/lsdj/renwu/101134.html"  target="_blank">朱元璋为何会越长越丑？</a></li>
<li><a href="/wenhua/100661.html" title="古代十大文豪 活得却很窝囊" target="_blank" ><img src="<%=path %>/uploads/allimg/1-1612161104010-L.jpg" alt="古代十大文豪 活得却很窝囊" width="200" height="150" /></a><a href="/wenhua/100661.html"  target="_blank">古代十大文豪 活得却很窝囊</a></li>
<li><a href="/wenzhai/100638.html" title="张载及其“横渠四句”" target="_blank" ><img src="<%=path %>/uploads/allimg/1-1612152034030-L.jpg" alt="张载及其“横渠四句”" width="200" height="150" /></a><a href="/wenzhai/100638.html"  target="_blank">张载及其“横渠四句”</a></li>
<li><a href="/wenzhai/100637.html" title="《易经》传递的生活之道" target="_blank" ><img src="<%=path %>/uploads/allimg/1-1612152024200-L.jpg" alt="《易经》传递的生活之道" width="200" height="150" /></a><a href="/wenzhai/100637.html"  target="_blank">《易经》传递的生活之道</a></li>
<li><a href="/wenzhai/100636.html" title="庄子用蜗牛角解释人与宇宙关系" target="_blank" ><img src="<%=path %>/uploads/allimg/1-1612152015060-L.jpg" alt="庄子用蜗牛角解释人与宇宙关系" width="200" height="150" /></a><a href="/wenzhai/100636.html"  target="_blank">庄子用蜗牛角解释人与宇宙关系</a></li>
<li><a href="/lsdj/renwu/100632.html" title="《三国演义》里的十大悲情人物" target="_blank" ><img src="<%=path %>/uploads/allimg/1-1612151G333J8.jpg" alt="《三国演义》里的十大悲情人物" width="200" height="150" /></a><a href="/lsdj/renwu/100632.html"  target="_blank">《三国演义》里的十大悲情人物</a></li>
<li><a href="/wenhua/100628.html" title="潘金莲为何撩不到武松" target="_blank" ><img src="<%=path %>/uploads/allimg/1-1612151615040-L.jpg" alt="潘金莲为何撩不到武松" width="200" height="150" /></a><a href="/wenhua/100628.html"  target="_blank">潘金莲为何撩不到武松</a></li>
<li><a href="/wenzhai/100619.html" title="高贵，缘于羞涩" target="_blank" ><img src="<%=path %>/uploads/allimg/1-16120Q33952-lp.jpg" alt="高贵，缘于羞涩" width="200" height="150" /></a><a href="/wenzhai/100619.html"  target="_blank">高贵，缘于羞涩</a></li>

</ul>

</div>

</div>




<div class="gdmain2">


<div class="main-left">


<div class="maindh">
<h2>热点排行</h2>
</div>


<div class="mainbottom">


<div class="leftlm">



<div class="lmhot">
<ul>
 <li><a href="/lsdj/renwu/105139.html" target="_blank">曾国藩：真正聪明的人，都是下笨功夫</a></li>
<li><a href="/wenhua/105138.html" target="_blank">道家做人，儒家做事，佛家修心</a></li>
<li><a href="/wenhua/104731.html" target="_blank">风流才子元稹，多情薄情亦深情</a></li>
<li><a href="/wenhua/104730.html" target="_blank">柳永：才子词人，自是白衣卿相</a></li>
<li><a href="/wenhua/104729.html" target="_blank">钱钟书：谈中国诗</a></li>
<li><a href="/wenzhai/104717.html" target="_blank">连环画版《金瓶梅》，图文并茂</a></li>
<li><a href="/article/104110.html" target="_blank">十九首古诗：道尽魏晋风流</a></li>
<li><a href="/wenhua/104090.html" target="_blank">《笑傲江湖》中的中国政治</a></li>
<li><a href="/wenhua/104089.html" target="_blank">《三国演义》中99个不符史实之处</a></li>
<li><a href="/article/102752.html" target="_blank">洞见儒家思想精髓的32个关键词</a></li>
<li><a href="/article/102749.html" target="_blank">千年的沉淀与升华，品悟儒者的八大智慧结晶</a></li>
<li><a href="/article/102737.html" target="_blank">一句话读懂《诗经》最美的篇章</a></li>
<li><a href="/article/101214.html" target="_blank">那些让你读了又读，感动了又感动的古诗词</a></li>
<li><a href="/article/101213.html" target="_blank">鬼谷子七十二术，旷世奇人的绝顶谋略！</a></li>
<li><a href="/article/101201.html" target="_blank">《止学》：一部湮没已久的智慧绝学</a></li>

</ul>
</div>


</div>




<div class="leftlm">



<div class="lmhot">
<ul>
<li><a href="/article/100614.html" target="_blank">王维《酌酒与裴迪》诗歌鉴赏</a></li>
<li><a href="/article/101061.html" target="_blank">庄子：千年前绝世一人，千年后依旧孑然一身</a></li>
<li><a href="/article/101062.html" target="_blank">这样的古文，多年后再读，依然唇齿生香</a></li>
<li><a href="/wenzhai/101115.html" target="_blank">自律，是人生最尊贵的标配</a></li>
<li><a href="/wenzhai/100655.html" target="_blank">物极必反，适度则宜</a></li>
<li><a href="/article/100595.html" target="_blank">《明史・马世奇传》原文及翻译</a></li>
<li><a href="/article/100620.html" target="_blank">去留本无意，心静即是禅</a></li>
<li><a href="/wenhua/100679.html" target="_blank">武威九大古遗迹，你知道多少？</a></li>
<li><a href="/article/101057.html" target="_blank">《宋史・许翰传》原文及翻译</a></li>
<li><a href="/wenhua/104090.html" target="_blank">《笑傲江湖》中的中国政治</a></li>
<li><a href="/article/101173.html" target="_blank">传统武德的儒家文化内涵</a></li>
<li><a href="/wenhua/104730.html" target="_blank">柳永：才子词人，自是白衣卿相</a></li>
<li><a href="/wenhua/101167.html" target="_blank">庄子说“盗亦有道”的故事</a></li>
<li><a href="/article/102044.html" target="_blank">第四十二回 张家堡厮打成相识 英雄馆举鼎遇故人</a></li>
<li><a href="/article/104105.html" target="_blank">诗词肯定是小众化的，为什么要普及？</a></li>

</ul>
</div>


</div>



</div>


</div>



<div class="main-right">

<div class="mainrlm">

<div class="rlmdh"><h2>最近更新</h2></div>

<div class="lmhotlist">
<ul>
    <li><span>12-06</span><a href="/a/2018tg/26.html" target="_blank">一个叫冬的季节</a></li>
<li><span>12-06</span><a href="/a/2018tg/25.html" target="_blank">鞍山，冬天</a></li>
<li><span>12-05</span><a href="/a/2018tg/22.html" target="_blank">绵山怀古（诗三首）</a></li>
<li><span>12-05</span><a href="/a/2018tg/24.html" target="_blank">秋日情吟</a></li>
<li><span>12-05</span><a href="/a/2018tg/23.html" target="_blank">卜算子・芳菲</a></li>
<li><span>12-05</span><a href="/a/2018tg/21.html" target="_blank">思念众诗友</a></li>
<li><span>12-05</span><a href="/a/2018tg/20.html" target="_blank">碾伯春早</a></li>
<li><span>12-05</span><a href="/a/2018tg/19.html" target="_blank">初冬轻吟</a></li>
<li><span>12-05</span><a href="/a/2018tg/18.html" target="_blank">初雪中情吟</a></li>
<li><span>12-02</span><a href="/a/2018tg/17.html" target="_blank">多情自古红尘悲苦，生有何欢死亦何憾</a></li>
<li><span>12-02</span><a href="/a/2018tg/16.html" target="_blank">滚滚红尘，如有你相伴，不羡鸳鸯不羡仙</a></li>
<li><span>12-02</span><a href="/a/2018tg/15.html" target="_blank">望穿云水，谁的锦书翩然而至</a></li>
<li><span>12-01</span><a href="/a/2018tg/14.html" target="_blank">相思阙</a></li>
<li><span>12-01</span><a href="/a/2018tg/13.html" target="_blank">后来，我是谁的鱼儿，谁是我的海？</a></li>
<li><span>12-01</span><a href="/a/2018tg/12.html" target="_blank">谁念凰兮无所依</a></li>

</ul>
</div>

</div>


</div>





</div>


		  <div class="article_ad" style="margin:20px auto; text-align:center;">
                  <script src='/plus/ad_js.php?aid=37' language='javascript'></script>
		   </div>





<div class="clear"></div>



<div class="clear"></div>
<jsp:include page="jsp/foot.jsp"></jsp:include>
<script type="text/javascript">
var glide =new function(){
	function $id(id){return document.getElementById(id);};
	this.layerGlide=function(auto,oEventCont,oTxtCont,oSlider,sSingleSize,second,fSpeed,point){
		var oSubLi = $id(oEventCont).getElementsByTagName('li');
		var oTxtLi = $id(oTxtCont).getElementsByTagName('li');
		var interval,timeout,oslideRange;
		var time=1; 
		var speed = fSpeed 
		var sum = oSubLi.length;
		var a=0;
		var delay=second * 1000; 
		var setValLeft=function(s){
			return function(){
				oslideRange = Math.abs(parseInt($id(oSlider).style[point]));	
				$id(oSlider).style[point] =-Math.floor(oslideRange+(parseInt(s*sSingleSize) - oslideRange)*speed) +'px';		
				if(oslideRange==[(sSingleSize * s)]){
					clearInterval(interval);
					a=s;
				}
			}
		};
		var setValRight=function(s){
			return function(){	 	
				oslideRange = Math.abs(parseInt($id(oSlider).style[point]));							
				$id(oSlider).style[point] =-Math.ceil(oslideRange+(parseInt(s*sSingleSize) - oslideRange)*speed) +'px';
				if(oslideRange==[(sSingleSize * s)]){
					clearInterval(interval);
					a=s;
				}
			}
		}
		
		function autoGlide(){
			for(var c=0;c<sum;c++){oSubLi[c].className='';oTxtLi[c].className='';};
			clearTimeout(interval);
			if(a==(parseInt(sum)-1)){
				for(var c=0;c<sum;c++){oSubLi[c].className='';oTxtLi[c].className='';};
				a=0;
				oSubLi[a].className="active";
				oTxtLi[a].className = "active";
				interval = setInterval(setValLeft(a),time);
				timeout = setTimeout(autoGlide,delay);
			}else{
				a++;
				oSubLi[a].className="active";
				oTxtLi[a].className = "active";
				interval = setInterval(setValRight(a),time);	
				timeout = setTimeout(autoGlide,delay);
			}
		}
	
		if(auto){timeout = setTimeout(autoGlide,delay);};
		for(var i=0;i<sum;i++){	
			oSubLi[i].onmouseover = (function(i){
				return function(){
					for(var c=0;c<sum;c++){oSubLi[c].className='';oTxtLi[c].className='';};
					clearTimeout(timeout);
					clearInterval(interval);
					oSubLi[i].className = "active";
					oTxtLi[i].className = "active";
					if(Math.abs(parseInt($id(oSlider).style[point]))>[(sSingleSize * i)]){
						interval = setInterval(setValLeft(i),time);
						this.onmouseout=function(){if(auto){timeout = setTimeout(autoGlide,delay);};};
					}else if(Math.abs(parseInt($id(oSlider).style[point]))<[(sSingleSize * i)]){
							interval = setInterval(setValRight(i),time);
						this.onmouseout=function(){if(auto){timeout = setTimeout(autoGlide,delay);};};
					}
				}
			})(i)			
		}
	}
}

//调用语句
glide.layerGlide(
	true,         //设置是否自动滚动
	'iconBall',   //对应索引按钮
	'textBall',   //标题内容文本
	'show_pic',   //焦点图片容器
	460,          //设置滚动图片位移像素
	2,			  //设置滚动时间2秒 
	0.1,          //设置过渡滚动速度
	'left'		  //设置滚动方向“向左”
);
</script>
</body>
</html>