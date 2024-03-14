<!-- kinmuJissekiNyuryokuKakunin.jsp -->
<%@page import="constant.CommonConstant.DayOfWeek"%>
<%
/**
 * �t�@�C�����FkinmuJissekiNyuryokuKakunin.jsp
 *
 * �ύX����
 * 1.0  2010/09/13 Kazuya.Naraki
 */
%>
<%@page contentType="text/html; charset=Shift_JIS" pageEncoding="Shift_JIS"%>
<%@ page import="constant.RequestSessionNameConstant"%>
<%@ page import="constant.CommonConstant"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<bean:define id="color" value="" type="java.lang.String"/>
<bean:size id="kinmuJissekiListSize" name="kinmuJissekiNyuryokuKakuninForm"  property="kinmuJissekiNyuryokuKakuninList"/>
<bean:size id="dateBeanListSize" name="kinmuJissekiNyuryokuKakuninForm"  property="dateBeanList"/>
<html>
  <head>
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="Thu, 01 Dec 1994 16:00:00 GMT">
    <script type="text/javascript" src="/kikin/pages/js/common.js"></script>
    <script type="text/javascript" src="/kikin/pages/js/checkCommon.js"></script>
    <script type="text/javascript" src="/kikin/pages/js/message.js"></script>
    <script type="text/javascript" language="Javascript1.1">
    
	<!--
	/**
	 * �o�^��
	 */
	    function regist() {

	        // �ꗗ�̃T�C�Y
	        var listSize = <%= kinmuJissekiListSize %>;

	        // �J�n���ԃG���[���b�Z�[�W
	        var startTimeErrMsg = '';
	        // �I�����ԃG���[���b�Z�[�W
	        var endTimeErrMsg = '';
	        // �x�e���ԃG���[���b�Z�[�W
	        var breakTimeErrMsg = '';
	        // From - To �G���[���b�Z�[�W
	        var fromToErrMsg = '';
	        // �G���[���b�Z�[�W
	        var errorMsg = '';


	        with(document.forms[0].elements) {

	            for (var i = 0; i < listSize; i++) {

	                // �J�n���Ԃ��擾����B
	                var startTime = namedItem('kinmuJissekiNyuryokuKakuninList['+ i +'].startTime').value;
	                // �I�����Ԃ��擾����B
	                var endTime = namedItem('kinmuJissekiNyuryokuKakuninList['+ i +'].endTime').value;
	                // �x�e���Ԃ��擾����B
	                var breakTime = namedItem('kinmuJissekiNyuryokuKakuninList['+ i +'].breakTime').value;

	                // �w�i�F���N���A����
	                namedItem('kinmuJissekiNyuryokuKakuninList['+ i +'].startTime').style.backgroundColor = 'white';
	                namedItem('kinmuJissekiNyuryokuKakuninList['+ i +'].endTime').style.backgroundColor = 'white';
	                namedItem('kinmuJissekiNyuryokuKakuninList['+ i +'].breakTime').style.backgroundColor = 'white';

	                if(startTime == "" && endTime == "" && breakTime == ""){
	                	continue;
	                }
	                
	                // ���ԃ`�F�b�N
	                if (!startTimeErrMsg) {
	                    if (!checkTime(startTime)) {
	                        var strArr = ['�J�n����'];
	                        startTimeErrMsg = getMessage('E-MSG-000004', strArr);
	                        namedItem('kinmuJissekiNyuryokuKakuninList['+ i +'].startTime').style.backgroundColor = 'red';
	                    }
	                }
	                if (!endTimeErrMsg) {
	                    if (!checkTime(endTime)) {
	                        var strArr = ['�I������'];
	                        endTimeErrMsg = getMessage('E-MSG-000004', strArr);
	                        namedItem('kinmuJissekiNyuryokuKakuninList['+ i +'].endTime').style.backgroundColor = 'red';
	                    }
	                }
	                if (!breakTimeErrMsg) {
	                    if (!checkTime(breakTime)) {
	                        var strArr = ['�x�e����'];
	                        breakTimeErrMsg = getMessage('E-MSG-000004', strArr);
	                        namedItem('kinmuJissekiNyuryokuKakuninList['+ i +'].breakTime').style.backgroundColor = 'red';
	                    }
	                }

	                // from - to �̃`�F�b�N
	                if (!checkTimeCompare(startTime, endTime)) {
	                  if (checkTime(startTime) && checkTime(endTime)) {
	                      fromToErrMsg = getMessageCodeOnly('E-MSG-000005');
	                      namedItem('kinmuJissekiNyuryokuKakuninList['+ i +'].startTime').style.backgroundColor = 'red';
	                      namedItem('kinmuJissekiNyuryokuKakuninList['+ i +'].endTime').style.backgroundColor = 'red';
	                  }
	                }

	            }
	        }

	        // �G���[���b�Z�[�W
	        errorMsg = startTimeErrMsg + endTimeErrMsg + breakTimeErrMsg + fromToErrMsg;

	        if (errorMsg) {
	            alert(errorMsg);
	            // �G���[
	            return false;
	        }

	        doSubmit('/kikin/kinmuJissekiNyuryokuKakuninRegist.do');
	    }

    /**
     * ����
     */
    function submitSearch() {
        doSubmit('/kikin/kinmuJissekiNyuryokuKakuninSearch.do');
    }
    
    -->
    
    </script>
    
    <title>�Ζ����ѓ��͉��</title>

    <link href="/kikin/pages/css/common.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <div id="wrapper">
      <div id="header">
        <table width="100%">
          <tr>
            <td id="headLeft">
              <input value="�߂�" type="button" class="smlButton"  onclick="doSubmit('/kikin/kinmuJissekiNyuryokuKakuninBack.do')" />
            </td>
            <td id="headCenter">
            <div class = "titel">
              �Ζ����ѓ���
            </div>
            </td>
            <td id="headRight">
                <input value="���O�A�E�g" type="button" class="smlButton"  onclick="logout()" />
              </td>
          </tr>
        </table>
      </div>
      <div id="gymBody">
        <html:form action="/shainMstMntRegist" >
          <div style="float: left; width: 100%;">
            <div style="float: left; width: 804px; text-align: left; margin-left:130px;">
              �\���N���F
              <html:select name="kinmuJissekiNyuryokuKakuninForm" property="yearMonth" onchange="submitSearch()">
              <html:optionsCollection name="kinmuJissekiNyuryokuKakuninForm"
                                      property="yearMonthCmbMap"
                                      value="key"
                                      label="value"/>
              </html:select>
            </div>
            <div style="float: left; width: 284px; text-align: left;">
              �Ј�ID&nbsp;<bean:write name="kinmuJissekiNyuryokuKakuninForm" property="shainId"/>
              �F�Ј���&nbsp;<bean:write name="kinmuJissekiNyuryokuKakuninForm" property="shainName"/>
            </div>
          </div>
          <div class="scroll-infinity">
<div class="scroll-infinity__wrap">
  <ul class="scroll-infinity__list scroll-infinity__list--left">
    <li class="scroll-infinity__item"><img src="/kikin/pages/pp/image/yukkuri.png" /></li>                        
    <li class="scroll-infinity__item"><img src="/kikin/pages/pp/image/yukkuri.png" /></li>
    <li class="scroll-infinity__item"><img src="/kikin/pages/pp/image/yukkuri.png" /></li>
    <li class="scroll-infinity__item"><img src="/kikin/pages/pp/image/yukkuri.png" /></li>
    <li class="scroll-infinity__item"><img src="/kikin/pages/pp/image/yukkuri.png" /></li>
    <li class="scroll-infinity__item"><img src="/kikin/pages/pp/image/yukkuri.png" /></li>
  </ul>
  <ul class="scroll-infinity__list scroll-infinity__list--left">
    <li class="scroll-infinity__item"><img src="/kikin/pages/pp/image/yukkuri.png" /></li>                        
    <li class="scroll-infinity__item"><img src="/kikin/pages/pp/image/yukkuri.png" /></li>
    <li class="scroll-infinity__item"><img src="/kikin/pages/pp/image/yukkuri.png" /></li>
    <li class="scroll-infinity__item"><img src="/kikin/pages/pp/image/yukkuri.png" /></li>
    <li class="scroll-infinity__item"><img src="/kikin/pages/pp/image/yukkuri.png" /></li>
    <li class="scroll-infinity__item"><img src="/kikin/pages/pp/image/yukkuri.png" /></li>
  </ul>
</div>
</div>
          <div id="mannaka2">
            <div style="overflow: hidden; width: 1080px;">
            <table class="tblHeader" border="1" cellpadding="0" cellspacing="0">
              <tr>
                <td width="80px" align="center">
                  ���t
                </td>
                <td width="50px" align="center">
                  �j
                </td>
                <td width="100px" align="center">
                  �V�t�g
                </td>
                <td width="100px" align="center">
                  �J�n����
                </td>
                <td width="100px" align="center">
                  �I������
                </td>
                <td width="100px" align="center">
                  �x�e
                </td>
                <td width="100px" align="center">
                  ��������
                </td>
                <td width="100px" align="center">
                  ���ԊO
                </td>
                <td width="100px" align="center">
                  �x��
                </td>
                <td width="220px" align="center">
                  ���l
                </td>
              </tr>
            </table>
          </div>
            <div style="overflow: auto; height: 400px; width: 1088px;">
            <logic:iterate id="kinmuJissekiNyuryokuKakuninList" name="kinmuJissekiNyuryokuKakuninForm" property="kinmuJissekiNyuryokuKakuninList" indexId="idx">
              <table class="tblBody" border="1" cellpadding="0" cellspacing="0">
                <tr>
                  <html:hidden name="kinmuJissekiNyuryokuKakuninList" property="shainId" />
                  <td width="80px" align="center">
                    <bean:write name="kinmuJissekiNyuryokuKakuninList" property="kadouDayDisp" /><br>
                  </td>
                  <bean:define id="youbi" name="kinmuJissekiNyuryokuKakuninList" property="youbi"/>
				  <bean:define id="shukujitsuFlg" name="kinmuJissekiNyuryokuKakuninList" property="shukujitsuFlg"/>
				  
                  <%
                  if (DayOfWeek.SATURDAY.getRyaku().equals(youbi)) {
                      color = "fontBlue";
                  } else if (DayOfWeek.SUNDAY.getRyaku().equals(youbi) || ((boolean)shukujitsuFlg)) {
                      color = "fontRed";
                  } else {
                      color = "fontBlack";
                  }
                  %>

                  <td width="50px" align="center" class="<%=color %>">
                    <bean:write name="kinmuJissekiNyuryokuKakuninList" property="youbi" /><br>
                  </td>
                  <td width="100px" align="center">
                    <bean:write name="kinmuJissekiNyuryokuKakuninList" property="symbol" /><br>
                  </td>
                  <td width="100px" align="center">
                    <html:text style="text-align:center" size="5" maxlength="5" name="kinmuJissekiNyuryokuKakuninList" property="startTime" indexed="true"></html:text><br>
                  </td>
                  <td width="100px" align="center">
                    <html:text style="text-align:center" size="5" maxlength="5" name="kinmuJissekiNyuryokuKakuninList" property="endTime" indexed="true"></html:text><br>
                  </td>
                  <td width="100px" align="center">
                    <html:text style="text-align:center" size="5" maxlength="5" name="kinmuJissekiNyuryokuKakuninList" property="breakTime" indexed="true"></html:text><br>
                  </td>
                  <td width="100px" align="center">
                    <bean:write name="kinmuJissekiNyuryokuKakuninList" property="jitsudouTime" /><br>
                  </td>
                  <td width="100px" align="center">
                    <bean:write name="kinmuJissekiNyuryokuKakuninList" property="jikangaiTime" /><br>
                  </td>
                  <td width="100px" align="center">
                    <bean:write name="kinmuJissekiNyuryokuKakuninList" property="kyuujitsuTime" /><br>
                  </td>
                  <td width="220px" align="left">
                    <html:text style="text-align:left" size="26" name="kinmuJissekiNyuryokuKakuninList" property="bikou" indexed="true"></html:text><br>
                  </td>
                </tr>
              </table>
            </logic:iterate>
          </div>
          </div>
        </html:form>
      </div>
      <div id="footer">
        <table>
          <tr>
              <td id="footLeft">
                �@
              </td>
              <td id="footCenter">
                �@
              </td>
              <td id="footRight">
                <input value="�o�^"  type="button" class="smlButton"  onclick="regist()" style="position: absolute; z-index: 50; margin-left: 300px;"/>
              </td>
          </tr>
        </table>
    </div>
    </div>
  </body>
</html>