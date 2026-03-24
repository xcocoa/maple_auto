package cn.haorui.sdk.core.utils;

/* JADX INFO: loaded from: classes.dex */
public class ResultBean {
    private String aderId;
    private String cat;
    private String cid;
    private String ecpm;
    private int interactionType;
    private int is_bidding;
    private int price;
    private String reward_name;
    private int reward_num;
    private String s_code;
    private String s_ext;
    private String pid = "";
    private String appid = "";
    private String sdkName = "";
    private String reqId = "";
    private String fromId = "";

    public String getAderId() {
        return this.aderId;
    }

    public String getCat() {
        return this.cat;
    }

    public String getCid() {
        return this.cid;
    }

    public String getEcpm() {
        return this.ecpm;
    }

    public String getFromId() {
        return this.fromId;
    }

    public int getInteractionType() {
        return this.interactionType;
    }

    public int getIs_bidding() {
        return this.is_bidding;
    }

    public int getPrice() {
        return this.price;
    }

    public String getReqId() {
        return this.reqId;
    }

    public String getReward_name() {
        return this.reward_name;
    }

    public int getReward_num() {
        return this.reward_num;
    }

    public String getS_code() {
        return this.s_code;
    }

    public String getS_ext() {
        return this.s_ext;
    }

    public String getSdkName() {
        return this.sdkName;
    }

    public void setAderId(String str) {
        this.aderId = str;
    }

    public void setAppid(String str) {
        this.appid = str;
    }

    public void setCat(String str) {
        this.cat = str;
    }

    public void setCid(String str) {
        this.cid = str;
    }

    public void setEcpm(String str) {
        this.ecpm = str;
    }

    public void setFromId(String str) {
        this.fromId = str;
    }

    public void setInteractionType(int i) {
        this.interactionType = i;
    }

    public void setIs_bidding(int i) {
        this.is_bidding = i;
    }

    public void setPid(String str) {
        this.pid = str;
    }

    public void setPrice(int i) {
        this.price = i;
    }

    public void setReqId(String str) {
        this.reqId = str;
    }

    public void setReward_name(String str) {
        this.reward_name = str;
    }

    public void setReward_num(int i) {
        this.reward_num = i;
    }

    public void setS_code(String str) {
        this.s_code = str;
    }

    public void setS_ext(String str) {
        this.s_ext = str;
    }

    public void setSdkName(String str) {
        this.sdkName = str;
    }
}
