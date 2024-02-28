/**
 * �t�@�C�����Fcheck.js
 * �e��`�F�b�N����
 *
 * �ύX����
 * 1.0  2010/09/10 Kazuya.Naraki
 */

/**
 * �n���ꂽ���������p�J�i�ł��邩�`�F�b�N����
 * param str �`�F�b�N�Ώە�����
 * return true:���p�J�i false:���p�J�i�ȊO
 */
function checkHankakuKana(str) {

    if (str.match(/^[�-�]*$/)) {
        return true;
    }

    return false;
}

/**
 * �K�{�`�F�b�N
 * param str �`�F�b�N�Ώە�����
 * return true:��łȂ� false:����
 */
function checkRequired(str) {

    if (!str) {
        return false;
    }

    return true;
}

/**
 * �����t�H�[�}�b�g�`�F�b�N
 * param str �`�F�b�N�Ώە�����
 * return true:��łȂ� false:����
 */
function checkTime(str) {
	
	if (typeof str !== 'string') {
        str = String(str);
    }
	
    // ���K�\���ɂ�鏑���`�F�b�N
    if(!str.match(/^\d{2}\:\d{2}$/)){
        return false;
    }
    var vHour = str.substr(0, 2);
    var vMinutes = str.substr(3, 2);

    if(vHour >= 0 && vHour <= 99 && vMinutes >= 0 && vMinutes <= 59){
        return true;
    }else{
        return false;
    }
}

/**
 * �����̑召���`�F�b�N����
 * param str �`�F�b�N�Ώە�����
 * return true:�J�n���I���ȉ� false:�J�n���I�����傫��
 */
function checkTimeCompare(start, end) {

    var vStart = start.replace(":", "");
    var vEnd = end.replace(":", "");

    if (vStart <= vEnd) {
        return true;
    } else {
        return false;
    }
}