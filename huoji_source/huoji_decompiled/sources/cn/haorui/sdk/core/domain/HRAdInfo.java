package cn.haorui.sdk.core.domain;

import android.text.TextUtils;
import com.anythink.expressad.d.b;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class HRAdInfo {
    private String action_text;
    private int ad_type;
    private String ader_id;
    private long all_timeout;
    private String app_feature;
    private String app_intro;
    private String app_intro_url;
    private String app_name;
    private List<PermissionBean> app_permission;
    private String app_permission_url;
    private String app_privacy;
    private String app_size;
    private String app_ver;
    private String big_group;
    private int cache;
    private String cat;
    private int cbc;
    private String cid;
    private String[] clickUrl;
    private Integer clickable_range;
    private String clickid;
    private String clk_area;
    private Integer comments;
    private String content;
    private Integer creative_type;
    private String[] dUrl;
    private DClickData dclk;
    private String deep_link;
    private String developer;
    private int direct_market;
    private String[] dn_active;
    private String[] dn_inst_start;
    private String[] dn_inst_succ;
    private String[] dn_start;
    private String[] dn_succ;
    private Integer down_num;
    private String[] dp_fail;
    private String[] dp_start;
    private String[] dp_succ;
    private String[] errorUrl;
    private int expire_timestamp;
    private String from;
    private String from_id;
    private String from_logo;
    private boolean hasAdSailAd;
    private Integer height;
    private String icon;
    private String icon_title;
    private int insert_style;
    private boolean isUsed;
    private int is_eyes;
    private LayoutBean layout;
    private long loadedTime;
    private String[] monitorUrl;
    private long once_timeout;
    private String package_name;
    private String payment_types;
    private String pid;
    private int power_index;
    private int power_type;
    private int priority;
    private String privacy_agreement;
    private String req_id;
    private String[] responUrl;
    private String[] rstUrl;
    private String s_code;
    private String s_ext;
    private Float score;
    private SdkAdInfo[] sdk;
    private SdkMonitor sdk_monitor;
    private String[] srcUrls;
    private int style_id;
    private Integer target_type;
    private String title;
    private String[] video_complete;
    private String video_cover;
    private long video_duration;
    private String video_endcover;
    private Long video_keep_time;
    private String[] video_mute;
    private String[] video_one_half;
    private String[] video_one_quarter;
    private String[] video_pause;
    private String[] video_replay;
    private String[] video_resume;
    private String[] video_start;
    private String[] video_three_quarter;
    private String[] video_unmute;
    private Integer width;
    private String[] wx_fail;
    private String wx_path;
    private String[] wx_start;
    private String[] wx_succ;
    private String wx_username;
    private int ecpm = -1;
    private int clk_type = 3;
    private int drawing = 2;
    private String fpool_id = "";
    private String abt_group_id = "";
    private int close_btn = 2;
    private int power_count = 1;
    private int power_delay = b.b;
    private boolean videoAutoPlay = true;
    private int loadNum = 2;
    private int act_type = 2;
    private boolean videoMute = true;

    public static class DClickData {
        private int power = 1;
        private int ptime;

        public int getPower() {
            return this.power;
        }

        public int getPtime() {
            return this.ptime;
        }

        public void setPower(int i) {
            this.power = i;
        }

        public void setPtime(int i) {
            this.ptime = i;
        }
    }

    public static class PermissionBean implements Serializable {
        private String desc;
        private String title;

        public String getDesc() {
            return this.desc;
        }

        public String getTitle() {
            return this.title;
        }

        public void setDesc(String str) {
            this.desc = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }
    }

    public String getAbtest_group_id() {
        return this.abt_group_id;
    }

    public int getAct_type() {
        return this.act_type;
    }

    public String getAction_text() {
        return this.action_text;
    }

    public int getAd_type() {
        return this.ad_type;
    }

    public String getAder_id() {
        return this.ader_id;
    }

    public long getAll_timeout() {
        return this.all_timeout;
    }

    public String getApp_feature() {
        return this.app_feature;
    }

    public String getApp_intor_url() {
        return this.app_intro_url;
    }

    public String getApp_intro() {
        return this.app_intro;
    }

    public String getApp_name() {
        return this.app_name;
    }

    public List<PermissionBean> getApp_permission() {
        return this.app_permission;
    }

    public String getApp_permission_url() {
        return this.app_permission_url;
    }

    public String getApp_privacy() {
        return this.app_privacy;
    }

    public String getApp_size() {
        return this.app_size;
    }

    public String getApp_ver() {
        return this.app_ver;
    }

    public String getBig_group() {
        return this.big_group;
    }

    public int getCache() {
        return this.cache;
    }

    public String getCacheKey() {
        return this.pid + "_" + this.fpool_id + "_" + this.abt_group_id;
    }

    public int getCacheScore() {
        return ((1000 - this.priority) * 1000000) + this.ecpm;
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

    public String[] getClickUrl() {
        return this.clickUrl;
    }

    public Integer getClickable_range() {
        return this.clickable_range;
    }

    public String getClickid() {
        return this.clickid;
    }

    public String getClk_area() {
        return this.clk_area;
    }

    public int getClk_type() {
        return this.clk_type;
    }

    public int getClose_btn() {
        return this.close_btn;
    }

    public Integer getComments() {
        return this.comments;
    }

    public String getContent() {
        return this.content;
    }

    public Integer getCreative_type() {
        return this.creative_type;
    }

    public DClickData getDclk() {
        return this.dclk;
    }

    public String getDeep_link() {
        return this.deep_link;
    }

    public String getDeveloper() {
        return this.developer;
    }

    public int getDirect_market() {
        return this.direct_market;
    }

    public String[] getDn_active() {
        return this.dn_active;
    }

    public String[] getDn_inst_start() {
        return this.dn_inst_start;
    }

    public String[] getDn_inst_succ() {
        return this.dn_inst_succ;
    }

    public String[] getDn_start() {
        return this.dn_start;
    }

    public String[] getDn_succ() {
        return this.dn_succ;
    }

    public Integer getDown_num() {
        return this.down_num;
    }

    public String[] getDp_fail() {
        return this.dp_fail;
    }

    public String[] getDp_start() {
        return this.dp_start;
    }

    public String[] getDp_succ() {
        return this.dp_succ;
    }

    public int getDrawing() {
        return this.drawing;
    }

    public int getEcpm() {
        return this.ecpm;
    }

    public String[] getErrorUrl() {
        return this.errorUrl;
    }

    public int getExpire_timestamp() {
        return this.expire_timestamp;
    }

    public String getFrom() {
        return this.from;
    }

    public String getFrom_id() {
        return this.from_id;
    }

    public String getFrom_logo() {
        return this.from_logo;
    }

    public Integer getHeight() {
        return this.height;
    }

    public String getIcon() {
        return this.icon;
    }

    public String getIcon_title() {
        return this.icon_title;
    }

    public int getInsert_style() {
        return this.insert_style;
    }

    public int getIs_eyes() {
        return this.is_eyes;
    }

    public LayoutBean getLayout() {
        return this.layout;
    }

    public int getLoadNum() {
        return this.loadNum;
    }

    public long getLoadedTime() {
        return this.loadedTime;
    }

    public String[] getMonitorUrl() {
        return this.monitorUrl;
    }

    public long getOnce_timeout() {
        return this.once_timeout;
    }

    public String getPackage_name() {
        return this.package_name;
    }

    public String getPayment_types() {
        return this.payment_types;
    }

    public String getPid() {
        return this.pid;
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

    public int getPower_type() {
        return this.power_type;
    }

    public int getPriority() {
        return this.priority;
    }

    public String getPrivacy_agreement() {
        return this.privacy_agreement;
    }

    public String getReq_id() {
        return this.req_id;
    }

    public String[] getResponUrl() {
        return this.responUrl;
    }

    public String[] getRstUrl() {
        return this.rstUrl;
    }

    public String getS_code() {
        return this.s_code;
    }

    public String getS_ext() {
        return this.s_ext;
    }

    public Float getScore() {
        return this.score;
    }

    public SdkAdInfo[] getSdk() {
        return this.sdk;
    }

    public SdkMonitor getSdk_monitor() {
        return this.sdk_monitor;
    }

    public String[] getSrcUrls() {
        return this.srcUrls;
    }

    public String getStrategy_group_id() {
        return this.fpool_id;
    }

    public int getStyle_id() {
        return this.style_id;
    }

    public Integer getTarget_type() {
        return this.target_type;
    }

    public String getTitle() {
        return this.title;
    }

    public String[] getVideo_complete() {
        return this.video_complete;
    }

    public String getVideo_cover() {
        return this.video_cover;
    }

    public long getVideo_duration() {
        return this.video_duration;
    }

    public String getVideo_endcover() {
        return this.video_endcover;
    }

    public Long getVideo_keep_time() {
        return this.video_keep_time;
    }

    public String[] getVideo_mute() {
        return this.video_mute;
    }

    public String[] getVideo_one_half() {
        return this.video_one_half;
    }

    public String[] getVideo_one_quarter() {
        return this.video_one_quarter;
    }

    public String[] getVideo_pause() {
        return this.video_pause;
    }

    public String[] getVideo_replay() {
        return this.video_replay;
    }

    public String[] getVideo_resume() {
        return this.video_resume;
    }

    public String[] getVideo_start() {
        return this.video_start;
    }

    public String[] getVideo_three_quarter() {
        return this.video_three_quarter;
    }

    public String[] getVideo_unmute() {
        return this.video_unmute;
    }

    public Integer getWidth() {
        return this.width;
    }

    public String[] getWx_fail() {
        return this.wx_fail;
    }

    public String getWx_path() {
        return this.wx_path;
    }

    public String[] getWx_start() {
        return this.wx_start;
    }

    public String[] getWx_succ() {
        return this.wx_succ;
    }

    public String getWx_username() {
        return this.wx_username;
    }

    public String[] getdUrl() {
        return this.dUrl;
    }

    public boolean isHasAdSailAd() {
        return this.hasAdSailAd;
    }

    public boolean isUsed() {
        return this.isUsed;
    }

    public boolean isVideoAutoPlay() {
        return this.videoAutoPlay;
    }

    public boolean isVideoMute() {
        return this.videoMute;
    }

    public void setAbtest_group_id(String str) {
        this.abt_group_id = str;
    }

    public void setAct_type(int i) {
        this.act_type = i;
    }

    public void setAction_text(String str) {
        this.action_text = str;
    }

    public void setAd_type(int i) {
        this.ad_type = i;
    }

    public void setAder_id(String str) {
        this.ader_id = str;
    }

    public void setAll_timeout(long j) {
        this.all_timeout = j;
    }

    public void setApp_feature(String str) {
        this.app_feature = str;
    }

    public void setApp_intor_url(String str) {
        this.app_intro_url = str;
    }

    public void setApp_intro(String str) {
        this.app_intro = str;
    }

    public void setApp_name(String str) {
        this.app_name = str;
    }

    public void setApp_permission(List<PermissionBean> list) {
        this.app_permission = list;
    }

    public void setApp_permission_url(String str) {
        this.app_permission_url = str;
    }

    public void setApp_privacy(String str) {
        this.app_privacy = str;
    }

    public void setApp_size(String str) {
        this.app_size = str;
    }

    public void setApp_ver(String str) {
        this.app_ver = str;
    }

    public void setBig_group(String str) {
        this.big_group = str;
    }

    public void setCache(int i) {
        this.cache = i;
    }

    public void setCat(String str) {
        this.cat = str;
    }

    public void setCbc(int i) {
        this.cbc = i;
    }

    public void setCid(String str) {
        this.cid = str;
    }

    public void setClickUrl(String[] strArr) {
        this.clickUrl = strArr;
    }

    public void setClickable_range(Integer num) {
        this.clickable_range = num;
    }

    public void setClickid(String str) {
        this.clickid = str;
    }

    public void setClk_area(String str) {
        this.clk_area = str;
    }

    public void setClk_type(int i) {
        this.clk_type = i;
    }

    public void setClose_btn(int i) {
        this.close_btn = i;
    }

    public void setComments(Integer num) {
        this.comments = num;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setCreative_type(Integer num) {
        this.creative_type = num;
    }

    public void setDclk(DClickData dClickData) {
        this.dclk = dClickData;
    }

    public void setDeep_link(String str) {
        this.deep_link = str;
    }

    public void setDeveloper(String str) {
        this.developer = str;
    }

    public void setDirect_market(int i) {
        this.direct_market = i;
    }

    public void setDn_active(String[] strArr) {
        this.dn_active = strArr;
    }

    public void setDn_inst_start(String[] strArr) {
        this.dn_inst_start = strArr;
    }

    public void setDn_inst_succ(String[] strArr) {
        this.dn_inst_succ = strArr;
    }

    public void setDn_start(String[] strArr) {
        this.dn_start = strArr;
    }

    public void setDn_succ(String[] strArr) {
        this.dn_succ = strArr;
    }

    public void setDown_num(Integer num) {
        this.down_num = num;
    }

    public void setDp_fail(String[] strArr) {
        this.dp_fail = strArr;
    }

    public void setDp_start(String[] strArr) {
        this.dp_start = strArr;
    }

    public void setDp_succ(String[] strArr) {
        this.dp_succ = strArr;
    }

    public void setDrawing(int i) {
        this.drawing = i;
    }

    public void setDrawing(String str) {
        if (TextUtils.isEmpty(str)) {
            this.drawing = 0;
            return;
        }
        try {
            this.drawing = Integer.parseInt(str);
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
    }

    public void setECpm(String str) {
        try {
            this.ecpm = Integer.parseInt(str);
        } catch (NumberFormatException unused) {
        }
    }

    public void setEcpm(int i) {
        this.ecpm = i;
    }

    public void setErrorUrl(String[] strArr) {
        this.errorUrl = strArr;
    }

    public void setExpire_timestamp(int i) {
        this.expire_timestamp = i;
    }

    public void setFrom(String str) {
        this.from = str;
    }

    public void setFrom_id(String str) {
        this.from_id = str;
    }

    public void setFrom_logo(String str) {
        this.from_logo = str;
    }

    public void setHasAdSailAd(boolean z) {
        this.hasAdSailAd = z;
    }

    public void setHeight(Integer num) {
        this.height = num;
    }

    public void setIcon(String str) {
        this.icon = str;
    }

    public void setIcon_title(String str) {
        this.icon_title = str;
    }

    public void setInsert_style(int i) {
        this.insert_style = i;
    }

    public void setIs_eyes(int i) {
        this.is_eyes = i;
    }

    public void setLayout(LayoutBean layoutBean) {
        this.layout = layoutBean;
    }

    public void setLoadNum(int i) {
        this.loadNum = i;
    }

    public void setLoadedTime(long j) {
        this.loadedTime = j;
    }

    public void setMonitorUrl(String[] strArr) {
        this.monitorUrl = strArr;
    }

    public void setOnce_timeout(long j) {
        this.once_timeout = j;
    }

    public void setPackage_name(String str) {
        this.package_name = str;
    }

    public void setPayment_types(String str) {
        this.payment_types = str;
    }

    public void setPid(String str) {
        this.pid = str;
    }

    public void setPower_count(int i) {
        this.power_count = i;
    }

    public void setPower_delay(int i) {
        this.power_delay = i;
    }

    public void setPower_index(int i) {
        this.power_index = i;
    }

    public void setPower_type(int i) {
        this.power_type = i;
    }

    public void setPriority(int i) {
        this.priority = i;
    }

    public void setPrivacy_agreement(String str) {
        this.privacy_agreement = str;
    }

    public void setReq_id(String str) {
        this.req_id = str;
    }

    public void setResponUrl(String[] strArr) {
        this.responUrl = strArr;
    }

    public void setRstUrl(String[] strArr) {
        this.rstUrl = strArr;
    }

    public void setS_code(String str) {
        this.s_code = str;
    }

    public void setS_ext(String str) {
        this.s_ext = str;
    }

    public void setScore(Float f) {
        this.score = f;
    }

    public void setSdk(SdkAdInfo[] sdkAdInfoArr) {
        this.sdk = sdkAdInfoArr;
    }

    public void setSdk_monitor(SdkMonitor sdkMonitor) {
        this.sdk_monitor = sdkMonitor;
    }

    public void setSrcUrls(String[] strArr) {
        this.srcUrls = strArr;
    }

    public void setStrategy_group_id(String str) {
        this.fpool_id = str;
    }

    public void setStyle_id(int i) {
        this.style_id = i;
    }

    public void setTarget_type(Integer num) {
        this.target_type = num;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setUsed(boolean z) {
        this.isUsed = z;
    }

    public void setVideoAutoPlay(boolean z) {
        this.videoAutoPlay = z;
    }

    public void setVideoMute(boolean z) {
        this.videoMute = z;
    }

    public void setVideo_complete(String[] strArr) {
        this.video_complete = strArr;
    }

    public void setVideo_cover(String str) {
        this.video_cover = str;
    }

    public void setVideo_duration(long j) {
        this.video_duration = j;
    }

    public void setVideo_endcover(String str) {
        this.video_endcover = str;
    }

    public void setVideo_keep_time(Long l) {
        this.video_keep_time = l;
    }

    public void setVideo_mute(String[] strArr) {
        this.video_mute = strArr;
    }

    public void setVideo_one_half(String[] strArr) {
        this.video_one_half = strArr;
    }

    public void setVideo_one_quarter(String[] strArr) {
        this.video_one_quarter = strArr;
    }

    public void setVideo_pause(String[] strArr) {
        this.video_pause = strArr;
    }

    public void setVideo_replay(String[] strArr) {
        this.video_replay = strArr;
    }

    public void setVideo_resume(String[] strArr) {
        this.video_resume = strArr;
    }

    public void setVideo_start(String[] strArr) {
        this.video_start = strArr;
    }

    public void setVideo_three_quarter(String[] strArr) {
        this.video_three_quarter = strArr;
    }

    public void setVideo_unmute(String[] strArr) {
        this.video_unmute = strArr;
    }

    public void setWidth(Integer num) {
        this.width = num;
    }

    public void setWx_fail(String[] strArr) {
        this.wx_fail = strArr;
    }

    public void setWx_path(String str) {
        this.wx_path = str;
    }

    public void setWx_start(String[] strArr) {
        this.wx_start = strArr;
    }

    public void setWx_succ(String[] strArr) {
        this.wx_succ = strArr;
    }

    public void setWx_username(String str) {
        this.wx_username = str;
    }

    public void setdUrl(String[] strArr) {
        this.dUrl = strArr;
    }
}
