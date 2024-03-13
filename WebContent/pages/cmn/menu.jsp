<!-- menu.jsp -->
<%@page contentType="text/html; charset=Shift_JIS" pageEncoding="Shift_JIS"%>
<%@ page import="constant.RequestSessionNameConstant"%>
<%@ page import="constant.CommonConstant"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>


<html>
  <head>
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="Thu, 01 Dec 1994 16:00:00 GMT">
    <html:javascript formName="loginForm" />
    <script type="text/javascript" src="/kikin/pages/js/common.js"></script>
    <script type="text/javascript" src="/kikin/pages/js/checkCommon.js"></script>
    <script type="text/javascript" src="/kikin/pages/js/message.js"></script>
	<script>
	
	window.setTimeout(function (){
			document.getElementById('name').style.color = 'white';
		},5000);
	
	function popupError() {
		    var width = screen.width;
		    var height = screen.height;
		    window.open("/kikin/pages/pp/neko.jsp", "name", "width=" + width + ",height=" + height);
		    return false; // フォームのデフォルトの動作をキャンセルする
		  }
	function openPopup() {
	    var width = screen.width;
	    var height = screen.height;
	    var delay = 1000; // ミリ秒単位での待機時間
	    var cnt = 1;
	    for (var i = 1; i <= 15; i++) {
	        var left = parseInt(Math.random() * 1000) + 1;
	        var top = parseInt(Math.random() * 500) + 1;
	        var name = "name" + i;

	        setTimeout((function(left, top, name, cnt) {
	            return function() {
	                switch (cnt) {
	                    case 1:
	                        window.open("/kikin/pages/pp/image/1662.jpg", name, "width=" + width + ",height=" + height + ",left=" + left + ",top=" + top);
	                        break;
	                    case 2:
	                        window.open("/kikin/pages/pp/image/1663.jpg", name, "width=" + width + ",height=" + height + ",left=" + left + ",top=" + top);
	                        break;
	                    case 3:
	                        window.open("/kikin/pages/pp/image/1664.jpg", name, "width=" + width + ",height=" + height + ",left=" + left + ",top=" + top);
	                        break;
	                    case 4:
	                        window.open("/kikin/pages/pp/image/1665.jpg", name, "width=" + width + ",height=" + height + ",left=" + left + ",top=" + top);
	                        break;
	                    case 5:
	                        window.open("/kikin/pages/pp/image/1666.jpg", name, "width=" + width + ",height=" + height + ",left=" + left + ",top=" + top);
	                        break;
	                    case 6:
	                        window.open("/kikin/pages/pp/image/1667.jpg", name, "width=" + width + ",height=" + height + ",left=" + left + ",top=" + top);
	                        break;
	                    case 7:
	                        window.open("/kikin/pages/pp/image/1668.jpg", name, "width=" + width + ",height=" + height + ",left=" + left + ",top=" + top);
	                        break;
	                    case 8:
	                        window.open("/kikin/pages/pp/image/1669.jpg", name, "width=" + width + ",height=" + height + ",left=" + left + ",top=" + top);
	                        break;
	                    case 9:
	                        window.open("/kikin/pages/pp/image/1670.jpg", name, "width=" + width + ",height=" + height + ",left=" + left + ",top=" + top);
	                        break;
	                    case 10:
	                        window.open("/kikin/pages/pp/image/1671.jpg", name, "width=" + width + ",height=" + height + ",left=" + left + ",top=" + top);
	                        break;
	                    case 11:
	                        window.open("/kikin/pages/pp/image/1672.jpg", name, "width=" + width + ",height=" + height + ",left=" + left + ",top=" + top);
	                        break;
	                    case 12:
	                        window.open("/kikin/pages/pp/image/1673.jpg", name, "width=" + width + ",height=" + height + ",left=" + left + ",top=" + top);
	                        break;
	                    case 13:
	                        window.open("/kikin/pages/pp/image/1674.jpg", name, "width=" + width + ",height=" + height + ",left=" + left + ",top=" + top);
	                        break;
	                    case 14:
	                        window.open("/kikin/pages/pp/image/1675.jpg", name, "width=" + width + ",height=" + height + ",left=" + left + ",top=" + top);
	                        break;
	                    case 15:
	                        window.open("/kikin/pages/pp/image/1676.jpg", name, "width=" + width + ",height=" + height + ",left=" + left + ",top=" + top);
	                        break;
	                    default:
	                        break;
	                }
	            };
	        })(left, top, name, cnt), delay * i); // i番目のポップアップをdelay * iミリ秒後に開く
	        cnt++;
	    }
	}
	
	function backLogout() {
		 var width = screen.width;
		 var height = screen.height;
		 window.open("/kikin/pages/pp/movie/sunshine.MP4", "name", "width=" + width + ",height=" + height);
	}
	
	function comboAction() {
		backLogout();
		logout();
	}
	</script>
    <title>メニュー画面</title>
    <link href="/kikin/pages/css/common.css" rel="stylesheet" type="text/css" />
  		<%-- 以下、アニメーション.menu画面用背景選択で使用 --%>
	<%! 
	String bgi;//背景画像
	String img;//画像データパス
	String msg;//キャラクターコメント
	String sze;//画像サイズ
	String hgt;//メッセージの高さ調整
	String anm;//アニメーション用
	int i;
	%>
	<% 
//	i = 1;//調整用
	i = (int)(Math.random() * 3);
  
	if(i == 0){
		bgi = "/kikin/pages/pp/image/bgi1.jpg";
	}else if(i == 1){
		bgi = "/kikin/pages/pp/image/bgi2.jpg";
	}else{
		bgi = "/kikin/pages/pp/image/bgi3.jpg";
	}
	
	%>
		<style>
		body{
			overflow: hidden;
			width:100%;
			  /* 切り替え前の画像と切り替え後の画像を設定 */
			background-image: url("/kikin/pages/pp/image/kobanagara1.png"), url('<%= bgi %>');
    		background-size:cover;
			  /* アニメーションを設定 */
			  animation: image_anime 1s ease; 
			  /* forwardsを設定すると100%の状態で止まる */
			  animation-fill-mode: forwards; 
			  /* animationを開始する時間を設定 */
			  animation-delay: 2s; 
			
		}
		@keyframes image_anime {
		  100% {
		    /* 切り替え後の画像 */
		    background-image: url(<%= bgi %>); 
		  }
			
		}
		#position{
		float:right; 
		width: 1000px; 
		height:230px; 
		margin:auto;　
		}
		.slideinLeft {//ジョセフエフェクト
			  display: inline-block;
			  animation: slideinLeft 5s;
			}
			
			@keyframes slideinLeft {
			  0% {
			  	opacity:0;
			  }
			  100% {
			  	opacity:1;
			  }
		}		
		.slideinBottom {//巨人エフェクト
			  display: inline-block;
			  animation: slideinBottom 5s;
			}
			
			@keyframes slideinBottom {
			  0% {
			    transform: translateY(280px);
			  }
			  100% {
			    transform: translateY(0);
			  }
		}
		.slideinTop {//エドワードエフェクト
			  display: inline-block;
			  animation: slideinTop 5s;
			}
			
			@keyframes slideinTop {
			  0% {
			  	opacity:0;
			    transform: translateY(-80px);
			  }
			  100% {
			  	opacity:1;
			    transform: translateY(0);
			  }
		}		
		
		.fade{//文字エフェクト
			display:inline-block;
			font-size:30px;
       		animation-name:fadeLeftAnime;
			animation-delay:4s;
			animation-duration:3s;
			animation-fill-mode:forwards;
			opacity:0;
		}
		@keyframes fadeLeftAnime{ /*animation-nameで設定した値を書く*/
			 from {
			    opacity: 0;
			  	transform: translateX(-30px);
			  }
			
			  to {
			    opacity: 1;
			  	transform: translateX(0);
			  }		
  		}
  		
  		}
    </style>
  </head>

  <body>
    <div id="wrapper">
      <div id="header">
        <table>
          <tr>
            <td id="headLeft">
              　
            </td>
            <td id="headCenter">
            <logic:equal name="<%=RequestSessionNameConstant.SESSION_CMN_LOGIN_USER_INFO %>"
                         property="kengenId"
                         value="<%=CommonConstant.Kengen.KANRISYA.getId() %>">
                <span class = "titel" style="margin-left: 70px;">　メニュー(管理者)　</span>
            </logic:equal>

            <logic:equal name="<%=RequestSessionNameConstant.SESSION_CMN_LOGIN_USER_INFO %>"
                         property="kengenId"
                         value="<%=CommonConstant.Kengen.IPPAN.getId() %>">
                <span class = "titel" style="margin-left: 70px;">　メニュー(一般)　</span>
            </logic:equal>
            </td>
            <td id="headRight">
              <input value="ログアウト" type="button" class="smlButton"  onclick="comboAction()" />
            </td>
          </tr>
        </table>
      </div>
      <div id="gymBodyMenu">
        <logic:equal name="<%=RequestSessionNameConstant.SESSION_CMN_LOGIN_USER_INFO %>"
                     property="kengenId"
                     value="<%=CommonConstant.Kengen.KANRISYA.getId() %>">
          <div class="menuBlock">
            <html:form action="/tsukibetsuShiftKakuninInit">
              <input type="submit" value="月別シフト確認" class="bigButton" />
            </html:form>
            <html:form action="/hibetsuShiftInit">
              <input type="submit" value="日別シフト確認" class="bigButton" />
            </html:form>
          </div>

          <div class="menuBlock">
            <html:form action="/kinmuJissekiKakuninInit">
              <input type="submit" value="勤務実績確認" class="bigButton" />
            </html:form>
            <html:form action="/kinmuJissekiNyuryokuKakuninInit">
              <input type="submit" value="勤務実績入力" class="bigButton" />
            </html:form>
          </div>

          <div class="menuBlock">
            <html:form action="/shukkinKibouKakuninInit">
              <input type="submit" value="出勤希望日確認" class="bigButton" />
            </html:form>
            <%-- 修正＃019　画面遷移 --%>
            <html:form action="/tsukibetsuShiftNyuuryokuInit">
            <%-- 修正＃019　終わりww --%>
              <input type="submit" value="月別シフト入力" class="bigButton" />
            </html:form>
          </div>


          <div class="menuBlock">
            <html:form action="/shainMstMnt">
              <input type="submit" value="社員マスタメンテナンス" class="bigButton" />
            </html:form>
            <html:form action="/shiftMstMnt">
              <input type="submit" value="シフトマスタメンテナンス" class="bigButton" />
            </html:form>
            <html:form action="/kihonShiftInit">
              <input type="submit" value="基本シフト登録" class="bigButton" />
            </html:form>
          </div>

        </logic:equal>

        <logic:equal name="<%=RequestSessionNameConstant.SESSION_CMN_LOGIN_USER_INFO %>"
                     property="kengenId"
                     value="<%=CommonConstant.Kengen.IPPAN.getId() %>">
          <div class="menuBlock">
            <html:form action="/tsukibetsuShiftKakuninInit">
              <input type="submit" value="月別シフト確認" class="bigButton" />
            </html:form>
            <html:form action="/hibetsuShiftInit">
              <input type="submit" value="日別シフト確認" class="bigButton" />
            </html:form>
          </div>
          <div class="menuBlock">
            <html:form action="/kinmuJissekiNyuryokuKakuninInit">
              <input type="submit" value="勤務実績入力" class="bigButton" />
            </html:form>
          </div>

          <div class="menuBlock">
            <html:form action="/shukkinKibouNyuuryokuInit">
              <input type="submit" value="希望出勤日入力" class="bigButton" />
            </html:form>
          </div>

          <div class="menuBlock">
            <html:form action="/kihonShiftKakuninInit">
              <input type="submit" value="基本シフト確認" class="bigButton" />
            </html:form>
          </div>

        </logic:equal>
          <div class="menuBlock">
            <form onsubmit="popupError(); return false;">
              <input type="submit" value="" class="bigButton" />
            </form>
          </div>
                  	<%
        	switch(i){
        	case 0:
        		img = "/kikin/pages/pp/image/jojo.png";
        		msg = "/kikin/pages/pp/image/m1.png";
        		sze = "float:right; width:300px; height:230px;";
        		anm = "slideinLeft";
        		break;
        	case 1:
        		img = "/kikin/pages/pp/image/kyojin.png";
        		msg = "/kikin/pages/pp/image/m2.png";
        		sze = "float:right; width:210px; height:230px;";
        		anm = "slideinBottom";
        		break;
        	default:
        		img = "/kikin/pages/pp/image/hagaren.png";
        		msg = "/kikin/pages/pp/image/m3.png";
        		sze = "float:right; width:300; height:230;";
        		anm = "slideinTop";
        	}
        	%>
        	
        <div id = "position" class = "<%= anm %>">
        	<img src = "<%= img %>" style = "<%= sze %>" class = "<%= anm %>">
      		<div class = "fade">
      			<img src = "<%= msg %>" style = "float:right;">
      		</div>
      	</div>
   
      </div>
      <div id="footer">
        <table>
          <tr style="text-align: center;">
            <td width="21%">
            	<p id = "name" style="font-size: 12px;" onload = "change()">${shainName}</p>
            	<img alt="No image" src="/kikin/pages/pp/image/${shainId}.jpg" width="60px" height="60px" style="border-radius: 50%;" onerror="this.onerror=null; this.src='/kikin/pages/pp/image/default.jpg';">
            </td>
            <td id="footLeft">
              　
            </td>
            <td id="footCenter">
              　
            </td>
            <td id="footRight">
              <button class = button onclick="openPopup()" style = "float: right;">癒</button>
            </td>
          </tr>
        </table>
      </div>
    </div>
  </body>
</html>
  </body>
</html>