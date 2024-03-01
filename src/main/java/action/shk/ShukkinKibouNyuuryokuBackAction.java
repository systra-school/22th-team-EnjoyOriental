package action.shk;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import constant.CommonConstant;

public class ShukkinKibouNyuuryokuBackAction extends Action{
	// ログ出力クラス
    private Log log = LogFactory.getLog(this.getClass());
    
	public ActionForward execute(
			ActionMapping mapping, 
			ActionForm form,
            HttpServletRequest req, 
            HttpServletResponse res) throws Exception {
        log.info(new Throwable().getStackTrace()[0].getMethodName());
        // フォワードキー
        String forward = "";

        forward = CommonConstant.SUCCESS;

        return mapping.findForward(forward);
    }
}
