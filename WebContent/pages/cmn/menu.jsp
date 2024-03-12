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
	</script>
    <title>���j���[���</title>
    <link href="/kikin/pages/css/common.css" rel="stylesheet" type="text/css" />
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
              <input value="���O�A�E�g" type="button" class="smlButton"  onclick="logout()" />
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
            <form onsubmit="popupError()">
              <input type="submit" value="" class="bigButton" />
            </form>
          </div>
      </div>
      <div id="footer">
        <table>
          <tr style="text-align: center;">
            <td width="21%">
            	<p style="font-size: 12px;">${shainName}</p>
            	<img alt="No image" src="/kikin/pages/pp/image/${shainId}.jpg" width="60px" height="60px" style="border-radius: 50%;"></td>
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