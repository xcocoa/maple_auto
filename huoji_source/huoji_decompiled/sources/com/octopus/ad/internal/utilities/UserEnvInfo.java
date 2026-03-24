package com.octopus.ad.internal.utilities;

import com.octopus.ad.R;
import com.octopus.ad.b.e;

/* JADX INFO: loaded from: classes2.dex */
public class UserEnvInfo {
    private static UserEnvInfo sUserEnvInfoInstance;
    public String ip;
    public e.c isp = e.c.ISP_OTHER;
    public boolean locationEnabled = true;
    private int mLocationDecimalDigits = -1;

    /* JADX INFO: renamed from: net, reason: collision with root package name */
    public e.d f5net;

    private UserEnvInfo() {
    }

    public static UserEnvInfo getInstance() {
        UserEnvInfo userEnvInfo;
        synchronized (UserEnvInfo.class) {
            if (sUserEnvInfoInstance == null) {
                sUserEnvInfoInstance = new UserEnvInfo();
                HaoboLog.v(HaoboLog.baseLogTag, HaoboLog.getString(R.string.init));
            }
            userEnvInfo = sUserEnvInfoInstance;
        }
        return userEnvInfo;
    }

    public int getLocationDecimalDigits() {
        return this.mLocationDecimalDigits;
    }

    public void setLocationDecimalDigits(int i) {
        String str;
        StringBuilder sb;
        String str2;
        if (i > 6) {
            this.mLocationDecimalDigits = 6;
            str = HaoboLog.baseLogTag;
            sb = new StringBuilder();
            sb.append("Out of range input ");
            sb.append(i);
            str2 = ", set location digits after decimal to maximum 6";
        } else {
            if (i >= -1) {
                this.mLocationDecimalDigits = i;
                return;
            }
            this.mLocationDecimalDigits = -1;
            str = HaoboLog.baseLogTag;
            sb = new StringBuilder();
            sb.append("Negative input ");
            sb.append(i);
            str2 = ", set location digits after decimal to default";
        }
        sb.append(str2);
        HaoboLog.w(str, sb.toString());
    }
}
