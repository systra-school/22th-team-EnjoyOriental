package action.mth;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import business.dto.LoginUserDto;
import business.dto.bse.KihonShiftDto;
import business.logic.bse.KihonShiftLogic;
import business.logic.comparator.MethodComparator;
import business.logic.utils.CheckUtils;
import business.logic.utils.ComboListUtilLogic;
import business.logic.utils.CommonUtils;
import constant.CommonConstant;
import constant.RequestSessionNameConstant;
import form.common.DateBean;
import form.mth.TsukibetsuShiftNyuuryokuBean;
import form.mth.TsukibetsuShiftNyuuryokuForm;
public class TsukibetsuShiftNyuuryokuImportKihonAction extends TsukibetsuShiftNyuuryokuAbstractAction{
    /**
     * 説明：月別シフト基本シフト反映処理　 追加#034,#054,#055,#056,#057 折居
     *
     * @param mapping アクションマッピング
     * @param form アクションフォーム
     * @param req リクエスト
     * @param res レスポンス
     * @return アクションフォワード
     * @author naraki
     */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest req, HttpServletResponse res) throws Exception {
        log.info(new Throwable().getStackTrace()[0].getMethodName());
        // フォワードキー
        String forward = CommonConstant.SUCCESS;
        // セッション
        HttpSession session = req.getSession();
        // ログインユーザ情報をセッションより取得
        LoginUserDto loginUserDto = (LoginUserDto) session.getAttribute(RequestSessionNameConstant.SESSION_CMN_LOGIN_USER_INFO);
        // フォーム　このまま
        TsukibetsuShiftNyuuryokuForm tsukibetsuShiftForm = (TsukibetsuShiftNyuuryokuForm) form;
        // 対象年月　変更　String yearMonth = CommonUtils.getFisicalDay(CommonConstant.yearMonthNoSl);
        String yearMonth = tsukibetsuShiftForm.getYearMonth();
        //基本シフトデータから値を取得してbeanに格納する処理
        KihonShiftLogic kihonShiftLogic = new KihonShiftLogic();
        // 対象年月の月情報を取得する。
        List<DateBean> dateBeanList = CommonUtils.getDateBeanList(yearMonth);
        //社員分の基本シフトマスタデータを取得する
        Map<String,KihonShiftDto> kihonShiftDtoMap = kihonShiftLogic.getKihonShiftData();
        //データベースに登録されている月別シフト情報を呼び出すためのリスト作成
        List<TsukibetsuShiftNyuuryokuBean> tsukibetsuShiftBeanList = new ArrayList<TsukibetsuShiftNyuuryokuBean>();
        // セレクトボックスの取得
        ComboListUtilLogic comboListUtils = new ComboListUtilLogic();
        Map<String, String> shiftCmbMap = comboListUtils.getComboShift(true);
        //修正#079
        Map<String, String> yearMonthCmbMap = comboListUtils.getComboYearMonth(CommonUtils.getFisicalDay(CommonConstant.yearMonthNoSl), 2, ComboListUtilLogic.KBN_YEARMONTH_NEXT, false);
        //社員ごとの基本シフト情報を格納するデータ
        Map<String,List<String>> weekShift = new LinkedHashMap<String,List<String>>();
        for(KihonShiftDto ShiftDto:kihonShiftDtoMap.values()) {
        	 //社員ごとに基本シフトデータをリスト化
        	List<String> youbiShift = new ArrayList<String>();
        	youbiShift.add(ShiftDto.getShiftIdOnSaturday());
        	youbiShift.add(ShiftDto.getShiftIdOnSunday());
        	youbiShift.add(ShiftDto.getShiftIdOnMonday());
        	youbiShift.add(ShiftDto.getShiftIdOnTuesday());
        	youbiShift.add(ShiftDto.getShiftIdOnWednesday());
        	youbiShift.add(ShiftDto.getShiftIdOnThursday());
        	youbiShift.add(ShiftDto.getShiftIdOnFriday());
        	weekShift.put(ShiftDto.getShainId(),youbiShift);
        }
        //1か月分のシフトデータを作成
        	if (CheckUtils.isEmpty(kihonShiftDtoMap)) {
                // データなし
        		TsukibetsuShiftNyuuryokuBean tsukibetsuShiftBean = new TsukibetsuShiftNyuuryokuBean();
                tsukibetsuShiftBean.setShainId(loginUserDto.getShainId());
                tsukibetsuShiftBean.setShainName(loginUserDto.getShainName());
                tsukibetsuShiftBean.setRegistFlg(true);
                tsukibetsuShiftBeanList.add(tsukibetsuShiftBean);
            } else {
                // データあり
            	//社員ごとに曜日ごとのシフトをTsukibetsuShiftNyuuryokuBeanに格納するループを行う
            	
            	for(KihonShiftDto data:kihonShiftDtoMap.values()) {//社員ごとのループ
            		TsukibetsuShiftNyuuryokuBean tsukibetsuShiftBean = new TsukibetsuShiftNyuuryokuBean();
            		int count = 0;//TsukibetsuShiftNyuuryokuBeanに値を入れる処理を行う際に使用
                	for(int k = 0;k < dateBeanList.size();k++) {//日にち毎にshiftIdに登録する処理
                		//該当する日付の曜日を取得し、数値化
                		int youbi = 0;
                		if((dateBeanList.get(k).getYoubi()).equals("土")) {
                			youbi = 0;
                		}else if((dateBeanList.get(k).getYoubi()).equals("日")) {
                			youbi = 1;
                 		}else if((dateBeanList.get(k).getYoubi()).equals("月")) {
                			youbi = 2;
                		}else if((dateBeanList.get(k).getYoubi()).equals("火")) {
                			youbi = 3;
                		}else if((dateBeanList.get(k).getYoubi()).equals("水")) {
                			youbi = 4;
                		}else if((dateBeanList.get(k).getYoubi()).equals("木")) {
                			youbi = 5;
                		}else if((dateBeanList.get(k).getYoubi()).equals("金")) {
                			youbi = 6;
                		}
                		//以下、TsukibetsuShiftNyuuryokuBean内のメソッドを動的に実行し1日から順番に値を入れる処理
                		// 実行するオブジェクトの生成
                		Method[] methods = tsukibetsuShiftBean.getClass().getMethods();
                		// メソッドのソートを行う
                		Comparator<Method> asc = new MethodComparator();
                		Arrays.sort(methods, asc); // 配列をソート
                		int index = 0;
                		int listSize = dateBeanList.size();
                		
                		for (int i = count; i < methods.length; i++) {
                			// "setShiftIdXX" のメソッドを動的に実行する
                			if (methods[i].getName().startsWith("setShiftId") && listSize > index) {
                			// メソッド実行
                			methods[i].invoke(tsukibetsuShiftBean,weekShift.get(data.getShainId()).get(youbi));
                			
                			index ++;
                			i++;
                			count = i;
                			break;
                			}//if
                		}//for(動的なメソッド実行)
                	}//for（日にち毎）
                	tsukibetsuShiftBean.setShainId(data.getShainId());
            		tsukibetsuShiftBean.setShainName(data.getShainName());
            		tsukibetsuShiftBean.setRegistFlg(false);
                	tsukibetsuShiftBeanList.add(tsukibetsuShiftBean);
                }//for(社員ごと)
                	
        }//if(データあり)
        // フォームにデータをセットする
        tsukibetsuShiftForm.setShiftCmbMap(shiftCmbMap);//データを入れる
        tsukibetsuShiftForm.setYearMonthCmbMap(yearMonthCmbMap);//年月データ
        tsukibetsuShiftForm.setTsukibetsuShiftNyuuryokuBeanList(tsukibetsuShiftBeanList);//社員のID、シフトとかのデータを入れる
        tsukibetsuShiftForm.setDateBeanList(dateBeanList);//日付、曜日のデータを入れる
        tsukibetsuShiftForm.setYearMonth(yearMonth);//年月のデータを入れる
        // ページング用
        tsukibetsuShiftForm.setMaxPage(CommonUtils.getMaxPage(kihonShiftDtoMap.size(), SHOW_LENGTH));
        return mapping.findForward(forward);
    }
}