package com.cyjh.elfin.entity;

import com.anythink.expressad.video.module.a.a;
import com.cyjh.elfin.entity.RootRelatedEntity;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;

/* JADX INFO: loaded from: classes.dex */
public class MsgItem {
    public static final int BACK_AD_REQ_FAIL = 1006;
    public static final int CLEAR_PUSH_ALL_MSG_ITEM = 1003;
    public static final int CLEAR_PUSH_INTERFACE_ITEM = 1002;
    public static final int FENG_LING_RECOMMNED_APK_DOWNLOAD_SUCCESS = 1014;
    public static final int FENG_LING_RECOMMNED_APK_INSTALL_SUCCESS = 1015;
    public static final int GAMES_APK_DOWNLOAD_SUC = 1010;
    public static final int GUIAD_APK_DOWNLOAD_SUC = 2011;
    public static final int IFLYAD_FULLSCREEN_REQ_FAIL = 1009;
    public static final int IFLYAD_FULLSCREEN_TWO_REQ_FAIL = 1013;
    public static final int IFLYAD_PARTSCREEN_REQ_FAIL = 1011;
    public static final int MAINAD_APK_DOWNLOAD_SUC = 2012;
    public static final int MESSAGE_PERMISSIONS_REQUEST = 1014;
    public static final int NOTIFY_DIALOG_DISMISS_MESSAGE = 1005;
    public static final int RED_DOT_GONE_ITEM = 1001;
    public static final int REFRESH_ITEM = 1004;
    public static final int REPLACE_XUNFEI_REQ_FAIL = 1012;
    public static final int REQUEST_NETWORK_FAIL = 1005;
    public static final int REQ_SERVER_TIME_FAIL = 1007;
    public static final int SCRIPT_NEED_START = 2001;
    public static final int SCRIPT_NEED_UPGRADE = 2000;
    public static final int SCRIPT_UI_DIALOG_DISMISS = 1008;
    public static final int SCRIPT_UI_DIALOG_UPDATE = 10082;
    public static final int SCRIPT_UI_SAVE_CFG = 10081;
    private int msgType;

    public static class BindRegCodeBus {
        private long expireTime;

        public BindRegCodeBus(long j) {
            this.expireTime = j;
        }

        public long getExpireTime() {
            String str = "۬ۡۨۘۘۙۦ۟ۙۨۘۥۙۧۤۦۜۖۤ۠ۖۡۢۖۨۘۢۚۡۘۙ۬ۤۦۘ۫ۡۢۧۛۙ۬ۤۚ";
            while (true) {
                switch ((((str.hashCode() ^ 34) ^ 1007) ^ 675) ^ (-651127851)) {
                    case -1558550306:
                        str = "ۜ۟ۖۛ۟ۢۤۦۖۘ۠۬ۜۨۦۛۡۢ۠ۚۤۦۘۨۗۦۘۡۢۚ۫ۤۡ۟ۨۗ۫ۘۖۘۘۦۦۤۘۧۘۢ۬ۜۘۘۧۡۘ";
                        break;
                    case -419686080:
                        return this.expireTime;
                }
            }
        }
    }

    public static class CheckedSwitchAdEvent {
        public boolean isShow;
        public String status;
        public int type;

        public CheckedSwitchAdEvent(String str, boolean z) {
            this.status = str;
            this.isShow = z;
        }

        public CheckedSwitchAdEvent(String str, boolean z, int i) {
            this.status = str;
            this.isShow = z;
            this.type = i;
        }
    }

    public static class ExposureAndClickEvent {
        public static final String CLICK_TYPE = "CLICK";
        public static final String EXPOSURE_TYPE = "EXPOSURE";
        public int index;
        public int isSuccess;
        public String type;

        public ExposureAndClickEvent(int i, int i2, String str) {
            this.index = i;
            this.isSuccess = i2;
            this.type = str;
        }
    }

    public static class ExternalIpEvent {
        public String externalIp;
        public int isSucess;

        public ExternalIpEvent(int i, String str) {
            this.isSucess = i;
            this.externalIp = str;
        }
    }

    public static class GetServerTime {
        public String data;

        public GetServerTime(String str) {
            this.data = str;
        }
    }

    public static class PermissionsEvent {
        public int isSucess;

        public PermissionsEvent(int i) {
            this.isSucess = i;
        }
    }

    public static class RootDataEvent {
        public RootRelatedEntity.RootRelatedData data;

        public RootDataEvent(RootRelatedEntity.RootRelatedData rootRelatedData) {
            this.data = rootRelatedData;
        }
    }

    public static class UpdateMessageToDialog {
        private String message;

        public UpdateMessageToDialog(String str) {
            this.message = str;
        }

        public String getMessage() {
            String str = "ۢۨۜ۬ۡۦۙۖۢۢۘۖۜۡۘۢۜۢۖۡۦۘ۫ۨۜۛۤۥۘۤۢۡۧۨ۫ۢ۟ۡۥۛۜۘۘ۫ۧ";
            while (true) {
                switch ((((str.hashCode() ^ 564) ^ 95) ^ 26) ^ (-374837186)) {
                    case -1051930194:
                        return this.message;
                    case 1109104055:
                        str = "ۖۘۦۖۚ۫۠ۖ۬ۗۧۢۘۧۛۤ۫ۚۙۡۦ۟ۚۚۜۘۦۘۥۧۨۤۥۜۡۗ۟ۘۛۥۥ۟ۧۦ۬ۗ۟ۙ";
                        break;
                }
            }
        }
    }

    public static class WebPageDownButtonEvent {
        private int msgType;

        public WebPageDownButtonEvent(int i) {
            this.msgType = i;
        }

        public int getMsgType() {
            String str = "ۤ۫ۜۙ۠ۢۤۦۦۨۚۘۡۛۗۛ۠۫۬ۛۦۘۗۜۘۘۨۢۨ۬ۜۡۖۘۢ۟ۖۢ۠۠۫ۗ۠ۖۦۚۧۦ";
            while (true) {
                switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.GET_TEXTCOLOR_VALUE) ^ 996) ^ 497) ^ (-796687858)) {
                    case 626714194:
                        return this.msgType;
                    case 1283743158:
                        str = "ۗ۟ۦۘۧۙ۬ۘۦۘۜۚۤۥۦۖۘۙۧۥۘۤۖۜۡۤ۟ۖۧۢۙۨۨۘ";
                        break;
                }
            }
        }
    }

    public MsgItem(int i) {
        this.msgType = i;
    }

    public int getMsgType() {
        String str = "۠۫ۗۤ۟ۙۜۦۥۡۧ۬ۚ۬ۜۨۚۨ۠ۧۨۦۗۙۧۧۦۘۤۜۚۦۜۡۘۤ۬ۛۤۚۜۥۛۖ۬۟ۧۤۖۦۦ۬ۗ";
        while (true) {
            switch ((((str.hashCode() ^ 495) ^ a.O) ^ 933) ^ 61117500) {
                case 134602612:
                    return this.msgType;
                case 1248762459:
                    str = "ۖۗۜۘۜ۬ۘ۬ۜۖۙۘۦۘۜۨۚۚۙۡ۠۠۬ۥۚۖۚ۬ۥۘۖۥۧ";
                    break;
            }
        }
    }

    public void setMsgType(int i) {
        String str = "۟ۦۖۘۥ۠ۘ۫۠ۜۘ۟ۤ۠ۤۥۘ۠ۙۨۛۖۨ۬ۦۘۢۜۦۗۘۡۡۜۖۚۦ";
        while (true) {
            switch ((((str.hashCode() ^ 657) ^ 143) ^ 920) ^ 1714449920) {
                case -1346857250:
                    return;
                case 450482418:
                    str = "۟ۛۡۖۘۧۚ۫ۚۢ۠ۥ۠ۛۖۘۤۤۨۘۤۛۥۘۚۙۨۛۘۨۘۤۨ۬";
                    break;
                case 1587331297:
                    str = "ۜۗۘ۟ۙۖۘۗۥۚۖ۫ۡۚۧۖۘۛۘ۟۟۬۬۠ۡ۠۠ۦۘ۬ۨۜۥۜۘۦ۬ۡۘۧ۫ۢۤ۫ۚۡۥۘۧۥۨۘ";
                    break;
                case 1787579889:
                    this.msgType = i;
                    str = "۠ۖۜۖۦۚۘۥۜۢۘۗۘۙۧۧۚۖ۫ۡۖۥۘۧۘ۫ۛۢ۫ۛ۠ۥۢ۟ۛۢۢ۟۬ۧ۠ۥ۟ۤۢۥۘۚۙ";
                    break;
            }
        }
    }
}
