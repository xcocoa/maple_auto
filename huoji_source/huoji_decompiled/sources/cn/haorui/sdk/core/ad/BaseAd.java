package cn.haorui.sdk.core.ad;

import android.os.SystemClock;
import android.view.View;
import cn.haorui.sdk.core.loader.InteractionListener;
import cn.haorui.sdk.core.loader.cache.c;
import cn.haorui.sdk.core.loader.d;
import cn.haorui.sdk.core.utils.ResultBean;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseAd<T extends InteractionListener> implements IAd<T> {
    public View adView;
    private d adWrapper;
    public T interactionListener;
    private String platform;
    public TouchData touchData = new TouchData();

    public BaseAd(d dVar, String str) {
        this.adWrapper = dVar;
        this.platform = str;
    }

    @Override // cn.haorui.sdk.core.ad.IAd
    public View getAdView() {
        return this.adView;
    }

    @Override // cn.haorui.sdk.core.ad.IAd
    public ResultBean getData() {
        ResultBean resultBean = new ResultBean();
        d dVar = this.adWrapper;
        if (dVar != null && dVar.getSdkAdInfo() != null) {
            resultBean.setPid(this.adWrapper.getSdkAdInfo().getPid());
            resultBean.setAppid(this.adWrapper.getSdkAdInfo().getApp_id());
            resultBean.setReqId(this.adWrapper.getSdkAdInfo().getReq_id());
            resultBean.setPrice(this.adWrapper.getSdkAdInfo().getPrice());
            resultBean.setEcpm(String.valueOf("bidding".equals(this.adWrapper.getSdkAdInfo().getOtype()) ? this.adWrapper.getSdkAdInfo().getEcpm() : this.adWrapper.getSdkAdInfo().getPrice()));
            resultBean.setReward_name(this.adWrapper.getSdkAdInfo().getReward_name());
            resultBean.setReward_num(this.adWrapper.getSdkAdInfo().getReward_num());
            resultBean.setS_ext(this.adWrapper.getSdkAdInfo().getS_ext());
            resultBean.setS_code(this.adWrapper.getSdkAdInfo().getS_code());
        }
        resultBean.setSdkName(this.platform);
        return resultBean;
    }

    @Override // cn.haorui.sdk.core.ad.IAd
    public T getInteractionListener() {
        return this.interactionListener;
    }

    public Object getSdkAd() {
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.IAd
    public TouchData getTouchData() {
        return this.touchData;
    }

    @Override // cn.haorui.sdk.core.ad.IAd
    public boolean isAdValid() {
        d dVar = this.adWrapper;
        if (dVar == null || dVar.getSdkAdInfo() == null) {
            return true;
        }
        int expire_timestamp = this.adWrapper.getSdkAdInfo().getExpire_timestamp();
        return SystemClock.uptimeMillis() - this.adWrapper.getSdkAdInfo().getLoadedTime() < (expire_timestamp > 0 ? (long) (expire_timestamp * 1000) : 1740000L);
    }

    @Override // cn.haorui.sdk.core.ad.IAd
    public void setAdView(View view) {
        this.adView = view;
    }

    public void setCacheAdListener(c cVar) {
        this.adWrapper.setCacheAdListener(cVar);
    }

    @Override // cn.haorui.sdk.core.ad.IAd
    public void setInteractionListener(T t) {
        this.interactionListener = t;
    }
}
