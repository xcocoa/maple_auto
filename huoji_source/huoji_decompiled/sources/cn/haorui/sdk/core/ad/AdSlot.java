package cn.haorui.sdk.core.ad;

/* JADX INFO: loaded from: classes.dex */
public interface AdSlot {
    String getAppName();

    String getApp_feature();

    String getApp_intro();

    String getApp_privacy();

    String getApp_size();

    String getApp_ver();

    String[] getClickUrl();

    String getClickid();

    String getDeep_link();

    String getDeveloper();

    int getDirect_market();

    String[] getDn_active();

    String[] getDn_inst_start();

    String[] getDn_inst_succ();

    String[] getDn_start();

    String[] getDn_succ();

    String[] getDp_fail();

    String[] getDp_start();

    String[] getDp_succ();

    String[] getErrorUrl();

    String getIcon();

    int getInteractionType();

    String[] getMonitorUrl();

    String getPackageName();

    String getPayment_types();

    String getPrivacy_agreement();

    Float getScore();

    String[] getWx_fail();

    String getWx_path();

    String[] getWx_start();

    String[] getWx_succ();

    String getWx_username();

    String[] getdUrl();

    void setImageUrls(String[] strArr);

    void setdUrl(String[] strArr);
}
