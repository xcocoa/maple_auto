package cn.haorui.sdk.core.ad;

import cn.haorui.sdk.core.domain.HRAdInfo;
import com.anythink.expressad.d.b;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BaseAdSlot implements AdSlot {
    public int adPatternType;
    private int ad_type;
    private String ader_id;
    public String appId;
    public String appName;
    private String app_feature;
    private String app_intor_url;
    private String app_intro;
    private List<HRAdInfo.PermissionBean> app_permission;
    private String app_permission_url;
    private String app_privacy;
    private String app_size;
    private String app_ver;
    private String cat;
    private int cbc;
    private String cid;
    public String[] clickUrl;
    public String clickid;
    public Integer comments;
    public String[] dUrl;
    private HRAdInfo.DClickData dclk;
    public String deep_link;
    public String desc;
    private String developer;
    private int direct_market;
    public String[] dn_active;
    public String[] dn_inst_start;
    public String[] dn_inst_succ;
    public String[] dn_start;
    public String[] dn_succ;
    public Integer downNum;
    public String[] dp_fail;
    public String[] dp_start;
    public String[] dp_succ;
    private int ecpm;
    private String[] errorUrl;
    private int expire_timestamp;
    public String fromId;
    public String fromLogo;
    private String icon;
    public String iconUrl;
    public String[] imageUrls;
    public int interactionType;
    private long loadedTime;
    public String[] monitorUrl;
    public String packageName;
    private String payment_types;
    public String posId;
    private int power_index;
    private String privacy_agreement;
    private String req_id;
    public String[] responUrl;
    private String s_code;
    private String s_ext;
    public Float score;
    public String title;
    private String[] wx_fail;
    private String wx_path;
    private String[] wx_start;
    private String[] wx_succ;
    private String wx_username;
    private int power_delay = b.b;
    private int power_count = 1;
    private int clk_type = 3;
    private int drawing = 2;
    private int act_type = 2;

    public abstract class Builder<T extends Builder, K extends BaseAdSlot> {
        public Builder() {
        }

        public abstract K build();

        public abstract T returnThis();

        public T setActType(int i) {
            BaseAdSlot.this.act_type = i;
            return (T) returnThis();
        }

        public T setAdPatternType(int i) {
            BaseAdSlot.this.adPatternType = i;
            return (T) returnThis();
        }

        public T setAdType(int i) {
            BaseAdSlot.this.ad_type = i;
            return (T) returnThis();
        }

        public T setAderId(String str) {
            BaseAdSlot.this.ader_id = str;
            return (T) returnThis();
        }

        public T setAppFeature(String str) {
            BaseAdSlot.this.app_feature = str;
            return (T) returnThis();
        }

        public T setAppId(String str) {
            BaseAdSlot.this.appId = str;
            return (T) returnThis();
        }

        public T setAppIntro(String str) {
            BaseAdSlot.this.app_intro = str;
            return (T) returnThis();
        }

        public T setAppIntroUrl(String str) {
            BaseAdSlot.this.app_intor_url = str;
            return (T) returnThis();
        }

        public T setAppName(String str) {
            BaseAdSlot.this.appName = str;
            return (T) returnThis();
        }

        public T setAppPrivacy(String str) {
            BaseAdSlot.this.app_privacy = str;
            return (T) returnThis();
        }

        public T setAppSize(String str) {
            BaseAdSlot.this.app_size = str;
            return (T) returnThis();
        }

        public T setAppVer(String str) {
            BaseAdSlot.this.app_ver = str;
            return (T) returnThis();
        }

        public T setCBC(int i) {
            BaseAdSlot.this.cbc = i;
            return (T) returnThis();
        }

        public T setCat(String str) {
            BaseAdSlot.this.cat = str;
            return (T) returnThis();
        }

        public T setCid(String str) {
            BaseAdSlot.this.cid = str;
            return (T) returnThis();
        }

        public T setClickType(int i) {
            BaseAdSlot.this.clk_type = i;
            return (T) returnThis();
        }

        public T setClickUrl(String[] strArr) {
            BaseAdSlot.this.clickUrl = strArr;
            return (T) returnThis();
        }

        public T setClickid(String str) {
            BaseAdSlot.this.clickid = str;
            return (T) returnThis();
        }

        public T setComments(Integer num) {
            BaseAdSlot.this.comments = num;
            return (T) returnThis();
        }

        public T setDClickData(HRAdInfo.DClickData dClickData) {
            BaseAdSlot.this.dclk = dClickData;
            return (T) returnThis();
        }

        public T setDUrl(String[] strArr) {
            BaseAdSlot.this.dUrl = strArr;
            return (T) returnThis();
        }

        public T setDeepLink(String str) {
            BaseAdSlot.this.deep_link = str;
            return (T) returnThis();
        }

        public T setDesc(String str) {
            BaseAdSlot.this.desc = str;
            return (T) returnThis();
        }

        public T setDeveloper(String str) {
            BaseAdSlot.this.developer = str;
            return (T) returnThis();
        }

        public T setDirectMarket(int i) {
            BaseAdSlot.this.direct_market = i;
            return (T) returnThis();
        }

        public T setDn_active(String[] strArr) {
            BaseAdSlot.this.dn_active = strArr;
            return (T) returnThis();
        }

        public T setDn_inst_start(String[] strArr) {
            BaseAdSlot.this.dn_inst_start = strArr;
            return (T) returnThis();
        }

        public T setDn_inst_succ(String[] strArr) {
            BaseAdSlot.this.dn_inst_succ = strArr;
            return (T) returnThis();
        }

        public T setDn_start(String[] strArr) {
            BaseAdSlot.this.dn_start = strArr;
            return (T) returnThis();
        }

        public T setDn_succ(String[] strArr) {
            BaseAdSlot.this.dn_succ = strArr;
            return (T) returnThis();
        }

        public T setDownNum(Integer num) {
            BaseAdSlot.this.downNum = num;
            return (T) returnThis();
        }

        public T setDp_fail(String[] strArr) {
            BaseAdSlot.this.dp_fail = strArr;
            return (T) returnThis();
        }

        public T setDp_start(String[] strArr) {
            BaseAdSlot.this.dp_start = strArr;
            return (T) returnThis();
        }

        public T setDp_succ(String[] strArr) {
            BaseAdSlot.this.dp_succ = strArr;
            return (T) returnThis();
        }

        public T setDrawing(int i) {
            BaseAdSlot.this.drawing = i;
            return (T) returnThis();
        }

        public T setEcpm(int i) {
            BaseAdSlot.this.ecpm = i;
            return (T) returnThis();
        }

        public T setErrorUrl(String[] strArr) {
            BaseAdSlot.this.errorUrl = strArr;
            return (T) returnThis();
        }

        public T setExpireTimestamp(int i) {
            BaseAdSlot.this.expire_timestamp = i;
            return (T) returnThis();
        }

        public T setFromId(String str) {
            BaseAdSlot.this.fromId = str;
            return (T) returnThis();
        }

        public T setFromLogo(String str) {
            BaseAdSlot.this.fromLogo = str;
            return (T) returnThis();
        }

        public T setIcon(String str) {
            BaseAdSlot.this.icon = str;
            return (T) returnThis();
        }

        public T setIconUrl(String str) {
            BaseAdSlot.this.iconUrl = str;
            return (T) returnThis();
        }

        public T setImageUrls(String[] strArr) {
            BaseAdSlot.this.imageUrls = strArr;
            return (T) returnThis();
        }

        public T setInteractionType(int i) {
            BaseAdSlot.this.interactionType = i;
            return (T) returnThis();
        }

        public T setLoadedTime(long j) {
            BaseAdSlot.this.loadedTime = j;
            return (T) returnThis();
        }

        public T setMonitorUrl(String[] strArr) {
            BaseAdSlot.this.monitorUrl = strArr;
            return (T) returnThis();
        }

        public T setPackageName(String str) {
            BaseAdSlot.this.packageName = str;
            return (T) returnThis();
        }

        public T setPaymentTypes(String str) {
            BaseAdSlot.this.payment_types = str;
            return (T) returnThis();
        }

        public T setPermissionUrl(String str) {
            BaseAdSlot.this.app_permission_url = str;
            return (T) returnThis();
        }

        public T setPermisssList(List<HRAdInfo.PermissionBean> list) {
            BaseAdSlot.this.app_permission = list;
            return (T) returnThis();
        }

        public T setPosId(String str) {
            BaseAdSlot.this.posId = str;
            return (T) returnThis();
        }

        public T setPowerCount(int i) {
            BaseAdSlot.this.power_count = i;
            return (T) returnThis();
        }

        public T setPowerDelay(int i) {
            BaseAdSlot.this.power_delay = i;
            return (T) returnThis();
        }

        public T setPowerIndex(int i) {
            BaseAdSlot.this.power_index = i;
            return (T) returnThis();
        }

        public T setPrivacyAgreement(String str) {
            BaseAdSlot.this.privacy_agreement = str;
            return (T) returnThis();
        }

        public T setReqId(String str) {
            BaseAdSlot.this.req_id = str;
            return (T) returnThis();
        }

        public T setResponUrl(String[] strArr) {
            BaseAdSlot.this.responUrl = strArr;
            return (T) returnThis();
        }

        public T setS_code(String str) {
            BaseAdSlot.this.s_code = str;
            return (T) returnThis();
        }

        public T setS_ext(String str) {
            BaseAdSlot.this.s_ext = str;
            return (T) returnThis();
        }

        public T setScore(Float f) {
            BaseAdSlot.this.score = f;
            return (T) returnThis();
        }

        public T setTitle(String str) {
            BaseAdSlot.this.title = str;
            return (T) returnThis();
        }

        public T setWxFail(String[] strArr) {
            BaseAdSlot.this.wx_fail = strArr;
            return (T) returnThis();
        }

        public T setWxStart(String[] strArr) {
            BaseAdSlot.this.wx_start = strArr;
            return (T) returnThis();
        }

        public T setWxSuccess(String[] strArr) {
            BaseAdSlot.this.wx_succ = strArr;
            return (T) returnThis();
        }

        public T setWx_path(String str) {
            BaseAdSlot.this.wx_path = str;
            return (T) returnThis();
        }

        public T setWx_username(String str) {
            BaseAdSlot.this.wx_username = str;
            return (T) returnThis();
        }
    }

    public int getAct_type() {
        return this.act_type;
    }

    public int getAdPatternType() {
        return this.adPatternType;
    }

    public int getAd_type() {
        return this.ad_type;
    }

    public String getAder_id() {
        return this.ader_id;
    }

    public String getAppId() {
        return this.appId;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public String getAppName() {
        return this.appName;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public String getApp_feature() {
        return this.app_feature;
    }

    public String getApp_intor_url() {
        return this.app_intor_url;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public String getApp_intro() {
        return this.app_intro;
    }

    public List<HRAdInfo.PermissionBean> getApp_permission() {
        return this.app_permission;
    }

    public String getApp_permission_url() {
        return this.app_permission_url;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public String getApp_privacy() {
        return this.app_privacy;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public String getApp_size() {
        return this.app_size;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public String getApp_ver() {
        return this.app_ver;
    }

    public String getCat() {
        return this.cat;
    }

    public int getCbc() {
        return this.cbc;
    }

    public String getCid() {
        return this.cid;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public String[] getClickUrl() {
        return this.clickUrl;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public String getClickid() {
        return this.clickid;
    }

    public int getClk_type() {
        return this.clk_type;
    }

    public Integer getComments() {
        return this.comments;
    }

    public HRAdInfo.DClickData getDclk() {
        return this.dclk;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public String getDeep_link() {
        return this.deep_link;
    }

    public String getDesc() {
        return this.desc;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public String getDeveloper() {
        return this.developer;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public int getDirect_market() {
        return this.direct_market;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public String[] getDn_active() {
        return new String[0];
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public String[] getDn_inst_start() {
        return this.dn_inst_start;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public String[] getDn_inst_succ() {
        return this.dn_inst_succ;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public String[] getDn_start() {
        return this.dn_start;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public String[] getDn_succ() {
        return this.dn_succ;
    }

    public Integer getDownNum() {
        return this.downNum;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public String[] getDp_fail() {
        return this.dp_fail;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public String[] getDp_start() {
        return this.dp_start;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public String[] getDp_succ() {
        return this.dp_succ;
    }

    public int getDrawing() {
        return this.drawing;
    }

    public int getEcpm() {
        return this.ecpm;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public String[] getErrorUrl() {
        return this.errorUrl;
    }

    public int getExpire_timestamp() {
        return this.expire_timestamp;
    }

    public String getFromId() {
        return this.fromId;
    }

    public String getFromLogo() {
        return this.fromLogo;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public String getIcon() {
        return this.icon;
    }

    public String getIconUrl() {
        return this.iconUrl;
    }

    public String[] getImageUrls() {
        return this.imageUrls;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public int getInteractionType() {
        return this.interactionType;
    }

    public long getLoadedTime() {
        return this.loadedTime;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public String[] getMonitorUrl() {
        return this.monitorUrl;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public String getPackageName() {
        return this.packageName;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public String getPayment_types() {
        return this.payment_types;
    }

    public String getPosId() {
        return this.posId;
    }

    public int getPower_count() {
        return this.power_count;
    }

    public int getPower_delay() {
        return this.power_delay;
    }

    public int getPower_index() {
        return this.power_index;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public String getPrivacy_agreement() {
        return this.privacy_agreement;
    }

    public String getReq_id() {
        return this.req_id;
    }

    public String[] getResponUrl() {
        return this.responUrl;
    }

    public String getS_code() {
        return this.s_code;
    }

    public String getS_ext() {
        return this.s_ext;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public Float getScore() {
        return this.score;
    }

    public String getTitle() {
        return this.title;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public String[] getWx_fail() {
        return this.wx_fail;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public String getWx_path() {
        return this.wx_path;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public String[] getWx_start() {
        return this.wx_start;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public String[] getWx_succ() {
        return this.wx_succ;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public String getWx_username() {
        return this.wx_username;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public String[] getdUrl() {
        return this.dUrl;
    }

    public void setClickUrl(String[] strArr) {
        this.clickUrl = strArr;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public void setImageUrls(String[] strArr) {
        this.imageUrls = strArr;
    }

    public void setMonitorUrl(String[] strArr) {
        this.monitorUrl = strArr;
    }

    @Override // cn.haorui.sdk.core.ad.AdSlot
    public void setdUrl(String[] strArr) {
        this.dUrl = strArr;
    }
}
