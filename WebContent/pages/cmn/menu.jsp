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
		    return false; // �t�H�[���̃f�t�H���g�̓�����L�����Z������
		  }
	function openPopup() {
	    var width = screen.width;
	    var height = screen.height;
	    var delay = 1000; // �~���b�P�ʂł̑ҋ@����
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
	        })(left, top, name, cnt), delay * i); // i�Ԗڂ̃|�b�v�A�b�v��delay * i�~���b��ɊJ��
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
    <title>���j���[���</title>
    <link href="/kikin/pages/css/common.css" rel="stylesheet" type="text/css" />
  		<%-- �ȉ��A�A�j���[�V����.menu��ʗp�w�i�I���Ŏg�p --%>
	<%! 
	String bgi;//�w�i�摜
	String img;//�摜�f�[�^�p�X
	String msg;//�L�����N�^�[�R�����g
	String sze;//�摜�T�C�Y
	String hgt;//���b�Z�[�W�̍�������
	String anm;//�A�j���[�V�����p
	int i;
	%>
	<% 
//	i = 1;//�����p
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
			  /* �؂�ւ��O�̉摜�Ɛ؂�ւ���̉摜��ݒ� */
			background-image: url("/kikin/pages/pp/image/kobanagara1.png"), url('<%= bgi %>');
    		background-size:cover;
			  /* �A�j���[�V������ݒ� */
			  animation: image_anime 1s ease; 
			  /* forwards��ݒ肷���100%�̏�ԂŎ~�܂� */
			  animation-fill-mode: forwards; 
			  /* animation���J�n���鎞�Ԃ�ݒ� */
			  animation-delay: 2s; 
			
		}
		@keyframes image_anime {
		  100% {
		    /* �؂�ւ���̉摜 */
		    background-image: url(<%= bgi %>); 
		  }
			
		}
		#position{
		float:right; 
		width: 1000px; 
		height:230px; 
		margin:auto;�@
		}
		.slideinLeft {//�W���Z�t�G�t�F�N�g
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
		.slideinBottom {//���l�G�t�F�N�g
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
		.slideinTop {//�G�h���[�h�G�t�F�N�g
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
		
		.fade{//�����G�t�F�N�g
			display:inline-block;
			font-size:30px;
       		animation-name:fadeLeftAnime;
			animation-delay:4s;
			animation-duration:3s;
			animation-fill-mode:forwards;
			opacity:0;
		}
		@keyframes fadeLeftAnime{ /*animation-name�Őݒ肵���l������*/
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
              �@
            </td>
            <td id="headCenter">
            <logic:equal name="<%=RequestSessionNameConstant.SESSION_CMN_LOGIN_USER_INFO %>"
                         property="kengenId"
                         value="<%=CommonConstant.Kengen.KANRISYA.getId() %>">
                <span class = "titel" style="margin-left: 70px;">�@���j���[(�Ǘ���)�@</span>
            </logic:equal>

            <logic:equal name="<%=RequestSessionNameConstant.SESSION_CMN_LOGIN_USER_INFO %>"
                         property="kengenId"
                         value="<%=CommonConstant.Kengen.IPPAN.getId() %>">
                <span class = "titel" style="margin-left: 70px;">�@���j���[(���)�@</span>
            </logic:equal>
            </td>
            <td id="headRight">
              <input value="���O�A�E�g" type="button" class="smlButton"  onclick="comboAction()" />
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
              <input type="submit" value="���ʃV�t�g�m�F" class="bigButton" />
            </html:form>
            <html:form action="/hibetsuShiftInit">
              <input type="submit" value="���ʃV�t�g�m�F" class="bigButton" />
            </html:form>
          </div>

          <div class="menuBlock">
            <html:form action="/kinmuJissekiKakuninInit">
              <input type="submit" value="�Ζ����ъm�F" class="bigButton" />
            </html:form>
            <html:form action="/kinmuJissekiNyuryokuKakuninInit">
              <input type="submit" value="�Ζ����ѓ���" class="bigButton" />
            </html:form>
          </div>

          <div class="menuBlock">
            <html:form action="/shukkinKibouKakuninInit">
              <input type="submit" value="�o�Ί�]���m�F" class="bigButton" />
            </html:form>
            <%-- �C����019�@��ʑJ�� --%>
            <html:form action="/tsukibetsuShiftNyuuryokuInit">
            <%-- �C����019�@�I���ww --%>
              <input type="submit" value="���ʃV�t�g����" class="bigButton" />
            </html:form>
          </div>


          <div class="menuBlock">
            <html:form action="/shainMstMnt">
              <input type="submit" value="�Ј��}�X�^�����e�i���X" class="bigButton" />
            </html:form>
            <html:form action="/shiftMstMnt">
              <input type="submit" value="�V�t�g�}�X�^�����e�i���X" class="bigButton" />
            </html:form>
            <html:form action="/kihonShiftInit">
              <input type="submit" value="��{�V�t�g�o�^" class="bigButton" />
            </html:form>
          </div>

        </logic:equal>

        <logic:equal name="<%=RequestSessionNameConstant.SESSION_CMN_LOGIN_USER_INFO %>"
                     property="kengenId"
                     value="<%=CommonConstant.Kengen.IPPAN.getId() %>">
          <div class="menuBlock">
            <html:form action="/tsukibetsuShiftKakuninInit">
              <input type="submit" value="���ʃV�t�g�m�F" class="bigButton" />
            </html:form>
            <html:form action="/hibetsuShiftInit">
              <input type="submit" value="���ʃV�t�g�m�F" class="bigButton" />
            </html:form>
          </div>
          <div class="menuBlock">
            <html:form action="/kinmuJissekiNyuryokuKakuninInit">
              <input type="submit" value="�Ζ����ѓ���" class="bigButton" />
            </html:form>
          </div>

          <div class="menuBlock">
            <html:form action="/shukkinKibouNyuuryokuInit">
              <input type="submit" value="��]�o�Γ�����" class="bigButton" />
            </html:form>
          </div>

          <div class="menuBlock">
            <html:form action="/kihonShiftKakuninInit">
              <input type="submit" value="��{�V�t�g�m�F" class="bigButton" />
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
              �@
            </td>
            <td id="footCenter">
              �@
            </td>
            <td id="footRight">
              <button class = button onclick="openPopup()" style = "float: right;">��</button>
            </td>
          </tr>
        </table>
      </div>
    </div>
  </body>
</html>
  </body>
</html>