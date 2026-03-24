package cn.haorui.sdk.core.domain;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import cn.haorui.sdk.core.loader.AdPlatformError;
import cn.haorui.sdk.core.utils.HttpUtil;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class SdkAdInfo {
    private String accept_id;
    private boolean alreadyLoaded;
    private String app_id;
    private String app_key;
    private String big_group;
    private String cache_clk;
    private String cache_err;
    private String cache_imp;
    private String cache_req;
    private String cache_rsp;
    private String clk;
    private String cls;
    private String custom_ext;
    private int drawing;
    private int ecpm;
    private String err;
    private int expire_timestamp;
    private String failMsg;
    private String finalRsp;
    private String group;
    private String group_id;
    private String imp;
    private int insert_new;
    private boolean isCache;
    private int is_bidding;
    private long loadTime;
    private long loadedTime;
    private int maxPrice;
    private String pid;
    private int pre;
    private int price;
    private int priority;
    private String req;
    private String req_id;
    private int req_uid;
    private String reward_name;
    private int reward_num;
    private String rsp;
    private String s2sb;
    private String s_code;
    private String s_ext;
    private int score;
    private String sdk;
    private String strategy_dealid;
    private int clk_limit = -1;
    private String otype = "order";
    private String _pst = "__PST__";
    private String _err_pst = "__PST__";
    private String _s = "__S__";
    private String _price = "__PRICE__";

    public String getAccept_id() {
        return this.accept_id;
    }

    public boolean getAlreadyLoaded() {
        return this.alreadyLoaded;
    }

    public String getApp_id() {
        return this.app_id;
    }

    public String getApp_key() {
        return this.app_key;
    }

    public String getBig_group() {
        return this.big_group;
    }

    public String getCache_clk() {
        return this.cache_clk;
    }

    public String getCache_err() {
        return this.cache_err;
    }

    public String getCache_imp() {
        return this.cache_imp;
    }

    public String getCache_req() {
        return this.cache_req;
    }

    public String getCache_rsp() {
        return this.cache_rsp;
    }

    public String getClk() {
        return this.clk;
    }

    public int getClk_limit() {
        return this.clk_limit;
    }

    public String getCls() {
        return this.cls;
    }

    public String getCustom_ext() {
        return this.custom_ext;
    }

    public int getDrawing() {
        return this.drawing;
    }

    public int getEcpm() {
        return !"bidding".equals(this.otype) ? this.price : this.ecpm;
    }

    public String getErr() {
        return this.err;
    }

    public int getExpire_timestamp() {
        return this.expire_timestamp;
    }

    public String getFailMsg() {
        return this.failMsg;
    }

    public String getFinalRsp() {
        return this.finalRsp;
    }

    public String getGroup() {
        return this.group;
    }

    public String getGroup_id() {
        return this.group_id;
    }

    public String getImp() {
        return this.imp;
    }

    public int getInsert_new() {
        return this.insert_new;
    }

    public int getIs_bidding() {
        return this.is_bidding;
    }

    public long getLoadTime() {
        return this.loadTime;
    }

    public long getLoadedTime() {
        return this.loadedTime;
    }

    public int getMaxPrice() {
        return this.maxPrice;
    }

    public String getOtype() {
        return this.otype;
    }

    public String getPid() {
        return this.pid;
    }

    public int getPre() {
        return this.pre;
    }

    public int getPrice() {
        return this.price;
    }

    public int getPriority() {
        return this.priority;
    }

    public String getReq() {
        return this.req;
    }

    public String getReq_id() {
        return this.req_id;
    }

    public int getReq_uid() {
        return this.req_uid;
    }

    public String getReward_name() {
        return this.reward_name;
    }

    public int getReward_num() {
        return this.reward_num;
    }

    public String getRsp() {
        return this.rsp;
    }

    public String getS2sb() {
        return this.s2sb;
    }

    public String getS_code() {
        return this.s_code;
    }

    public String getS_ext() {
        return this.s_ext;
    }

    public int getScore() {
        return this.score;
    }

    public String getSdk() {
        return this.sdk;
    }

    public String getStrategy_dealid() {
        return this.strategy_dealid;
    }

    public String get_err_pst() {
        return this._err_pst;
    }

    public String get_price() {
        return this._price;
    }

    public String get_pst() {
        return this._pst;
    }

    public String get_s() {
        return this._s;
    }

    public boolean isCache() {
        return this.isCache;
    }

    public void replace() {
        String rsp = getRsp();
        String finalRsp = getFinalRsp();
        String cache_rsp = getCache_rsp();
        long jUptimeMillis = SystemClock.uptimeMillis() - getLoadTime();
        set_pst(String.valueOf(jUptimeMillis));
        String strReplace = rsp.replace("__PST__", String.valueOf(jUptimeMillis));
        String strReplace2 = cache_rsp.replace("__PST__", String.valueOf(jUptimeMillis));
        String strValueOf = String.valueOf(getPrice() * 10);
        if (strReplace.contains("__PRICE__")) {
            set_price("ssp" + Base64.encodeToString(strValueOf.getBytes(), 2));
            strReplace = strReplace.replace("__PRICE__", "ssp" + Base64.encodeToString(strValueOf.getBytes(), 2));
        }
        String strReplace3 = strReplace2.replace("__PRICE__", "ssp" + Base64.encodeToString(strValueOf.getBytes(), 2));
        String strReplace4 = finalRsp.replace("__PRICE__", "ssp" + Base64.encodeToString(strValueOf.getBytes(), 2));
        setRsp(strReplace);
        setFinalRsp(strReplace4);
        setCache_rsp(strReplace3);
    }

    public void replaceErrorPst(AdPlatformError adPlatformError) {
        String err = getErr();
        String cache_err = getCache_err();
        long jUptimeMillis = SystemClock.uptimeMillis() - getLoadTime();
        set_err_pst(String.valueOf(jUptimeMillis));
        if (!TextUtils.isEmpty(err) && err.contains("__PST__")) {
            err = err.replace("__PST__", String.valueOf(jUptimeMillis));
        }
        if (!TextUtils.isEmpty(cache_err) && err.contains("__PST__")) {
            cache_err = cache_err.replace("__PST__", String.valueOf(jUptimeMillis));
        }
        setErr(err);
        setCache_err(cache_err);
        if (!err.contains("__MS_ERRNO__") || adPlatformError == null) {
            return;
        }
        String strReplace = err.replace("__MS_ERRNO__", "1024").replace("__ERROR_CODE__", String.valueOf(adPlatformError.getCode())).replace("__P__", String.valueOf(getPrice())).replace("__TIMEOUT__", String.valueOf(0));
        String strReplace2 = cache_err.replace("__MS_ERRNO__", "1024").replace("__ERROR_CODE__", String.valueOf(adPlatformError.getCode())).replace("__P__", String.valueOf(getPrice())).replace("__TIMEOUT__", String.valueOf(0));
        HttpUtil.asyncGetErrorReport(strReplace, adPlatformError.getCode(), adPlatformError.getMessage());
        setErr(strReplace);
        setCache_err(strReplace2);
    }

    public void setAccept_id(String str) {
        this.accept_id = str;
    }

    public void setAlreadyLoaded(boolean z) {
        this.alreadyLoaded = z;
    }

    public void setApp_id(String str) {
        this.app_id = str;
    }

    public void setApp_key(String str) {
        this.app_key = str;
    }

    public void setBig_group(String str) {
        this.big_group = str;
    }

    public void setCache(boolean z) {
        this.isCache = z;
    }

    public void setCache_clk(String str) {
        this.cache_clk = str;
    }

    public void setCache_err(String str) {
        this.cache_err = str;
    }

    public void setCache_imp(String str) {
        this.cache_imp = str;
    }

    public void setCache_req(String str) {
        this.cache_req = str;
    }

    public void setCache_rsp(String str) {
        this.cache_rsp = str;
    }

    public void setClk(String str) {
        this.clk = str;
    }

    public void setClk_limit(int i) {
        this.clk_limit = i;
    }

    public void setCls(String str) {
        this.cls = str;
    }

    public void setCustom_ext(String str) {
        this.custom_ext = str;
    }

    public void setDrawing(int i) {
        this.drawing = i;
    }

    public void setEcpm(int i) {
        this.ecpm = i;
    }

    public void setEcpm(String str) {
        int i = 0;
        if (!TextUtils.isEmpty(str)) {
            try {
                int i2 = Integer.parseInt(str);
                if (i2 >= 0) {
                    i = i2;
                }
            } catch (Exception unused) {
            }
        }
        this.ecpm = i;
        String strValueOf = i > 0 ? String.valueOf(i * 10) : String.valueOf(this.price * 10);
        try {
            set_price("ssp" + Base64.encodeToString(strValueOf.getBytes(), 2));
            set_s(str);
            String strReplace = this.rsp.replace("__PRICE__", "ssp" + Base64.encodeToString(strValueOf.getBytes(), 2)).replace("__S__", str);
            String strReplace2 = this.finalRsp.replace("__PRICE__", "ssp" + Base64.encodeToString(strValueOf.getBytes(), 2)).replace("__S__", str);
            String strReplace3 = this.imp.replace("__PRICE__", "ssp" + Base64.encodeToString(strValueOf.getBytes(), 2)).replace("__S__", str);
            String strReplace4 = this.cache_rsp.replace("__PRICE__", "ssp" + Base64.encodeToString(strValueOf.getBytes(), 2)).replace("__S__", str);
            String strReplace5 = this.cache_imp.replace("__PRICE__", "ssp" + Base64.encodeToString(strValueOf.getBytes(), 2)).replace("__S__", str);
            setRsp(strReplace);
            setRsp(strReplace2);
            setImp(strReplace3);
            setCache_rsp(strReplace4);
            setCache_imp(strReplace5);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setErr(String str) {
        this.err = str;
    }

    public void setExpire_timestamp(int i) {
        this.expire_timestamp = i;
    }

    public void setFailMsg(String str) {
        this.failMsg = str;
    }

    public void setFinalRsp(String str) {
        this.finalRsp = str;
    }

    public void setGroup(String str) {
        this.group = str;
    }

    public void setGroup_id(String str) {
        this.group_id = str;
    }

    public void setImp(String str) {
        this.imp = str;
    }

    public void setInsert_new(int i) {
        this.insert_new = i;
    }

    public void setIs_bidding(int i) {
        this.is_bidding = i;
    }

    public void setLoadTime(long j) {
        this.loadTime = j;
    }

    public void setLoadedTime(long j) {
        this.loadedTime = j;
    }

    public void setMaxPrice(int i) {
        this.maxPrice = i;
    }

    public void setOtype(String str) {
        this.otype = str;
    }

    public void setPid(String str) {
        this.pid = str;
    }

    public void setPre(int i) {
        this.pre = i;
    }

    public void setPrice(int i) {
        this.price = i;
    }

    public void setPriority(int i) {
        this.priority = i;
    }

    public void setReq(String str) {
        this.req = str;
    }

    public void setReq_id(String str) {
        this.req_id = str;
    }

    public void setReq_uid(int i) {
        this.req_uid = i;
    }

    public void setReward_name(String str) {
        this.reward_name = str;
    }

    public void setReward_num(int i) {
        this.reward_num = i;
    }

    public void setRsp(String str) {
        this.rsp = str;
    }

    public void setS2sb(String str) {
        this.s2sb = str;
    }

    public void setS_code(String str) {
        this.s_code = str;
    }

    public void setS_ext(String str) {
        this.s_ext = str;
    }

    public void setScore(int i) {
        this.score = i;
    }

    public void setSdk(String str) {
        this.sdk = str;
    }

    public void setStrategy_dealid(String str) {
        this.strategy_dealid = str;
    }

    public void set_err_pst(String str) {
        this._err_pst = str;
    }

    public void set_price(String str) {
        this._price = str;
    }

    public void set_pst(String str) {
        this._pst = str;
    }

    public void set_s(String str) {
        this._s = str;
    }

    public String toString() {
        return "SdkAdInfo{pid='" + this.pid + "', req='" + this.req + "', rsp='" + this.rsp + "', imp='" + this.imp + "', clk='" + this.clk + "', err='" + this.err + "', req_id='" + this.req_id + "', group='" + this.group + "', loadedTime=" + this.loadedTime + ", priority=" + this.priority + MessageFormatter.DELIM_STOP;
    }
}
