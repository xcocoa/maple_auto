package com.cyjh.http.bean.request;

import android.os.Parcel;
import android.os.Parcelable;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class DomainNameRequestParamsInfo extends BaseRequestValueInfo {
    public static final Parcelable.Creator<DomainNameRequestParamsInfo> CREATOR = new Parcelable.Creator<DomainNameRequestParamsInfo>() { // from class: com.cyjh.http.bean.request.DomainNameRequestParamsInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DomainNameRequestParamsInfo createFromParcel(Parcel parcel) {
            return new DomainNameRequestParamsInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DomainNameRequestParamsInfo[] newArray(int i) {
            return new DomainNameRequestParamsInfo[i];
        }
    };
    private final int ANDROID_DEVICE;
    public int DeviceType;
    public int appVersionCode;

    public DomainNameRequestParamsInfo(Parcel parcel) {
        super(parcel);
        this.ANDROID_DEVICE = 1;
        this.DeviceType = 1;
        this.DeviceType = parcel.readInt();
    }

    public DomainNameRequestParamsInfo(BaseRequestValueInfo baseRequestValueInfo) {
        super(baseRequestValueInfo);
        this.ANDROID_DEVICE = 1;
        this.DeviceType = 1;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getDeviceType() {
        return this.DeviceType;
    }

    public void setDeviceType(int i) {
        this.DeviceType = i;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo
    public String toString() {
        return "DomainNameRequestParamsInfo{DeviceType=" + this.DeviceType + ", TemplateFileId=" + this.TemplateFileId + ", TemplateVersion='" + this.TemplateVersion + "', AppId=" + this.AppId + ", AppVersion='" + this.AppVersion + "', DeviceId='" + this.DeviceId + "', ClientTimestamp=" + this.ClientTimestamp + MessageFormatter.DELIM_STOP;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.DeviceType);
    }
}
