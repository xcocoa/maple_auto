package cn.haorui.sdk.core.loader.loadbean;

import cn.haorui.sdk.core.domain.SdkAdInfo;
import cn.haorui.sdk.core.utils.HRConstants;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public SdkAdInfo a;
    public Object b;
    public int e;
    public boolean g;
    public boolean h;
    public int c = 1;
    public int d = 0;
    public int f = -1;

    public int a() {
        if (!this.g) {
            if ("bidding".equals(this.a.getOtype())) {
                return this.f;
            }
            if ("order".equals(this.a.getOtype())) {
                return (this.e + 100000) - this.a.getScore();
            }
            if ("price".equals(this.a.getOtype())) {
                return this.e + this.a.getPrice();
            }
        }
        return this.f;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("SmallGroupBean{platform =");
        sb.append(this.g ? HRConstants.PLATFORM_HR : this.a.getSdk());
        sb.append(", state=");
        sb.append(this.c);
        sb.append(", timeoutState=");
        sb.append(this.d);
        sb.append(", firstScore=");
        sb.append(this.e);
        sb.append(", secondScore=");
        sb.append(a());
        sb.append(", isMs=");
        sb.append(this.g);
        sb.append(", isCache=");
        sb.append(this.h);
        sb.append(MessageFormatter.DELIM_STOP);
        return sb.toString();
    }
}
