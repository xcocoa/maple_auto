package com.cyjh.http.bean.request;

import android.os.Parcel;
import android.os.Parcelable;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class BaseRequestValueInfo implements Parcelable {
    public long AppId;
    public String AppInfo;
    public String AppVersion;
    public long ClientTimestamp;
    public String DeviceCode;
    public String DeviceId;
    public int IsRedFinger;
    public long TemplateFileId;
    public String TemplateVersion;
    public String V;

    public BaseRequestValueInfo() {
    }

    public BaseRequestValueInfo(Parcel parcel) {
        this.TemplateFileId = parcel.readLong();
        this.TemplateVersion = parcel.readString();
        this.AppId = parcel.readLong();
        this.AppVersion = parcel.readString();
        this.DeviceId = parcel.readString();
        this.ClientTimestamp = parcel.readLong();
        this.IsRedFinger = parcel.readInt();
        this.DeviceCode = parcel.readString();
        this.AppInfo = parcel.readString();
        this.V = parcel.readString();
    }

    public BaseRequestValueInfo(BaseRequestValueInfo baseRequestValueInfo) {
        this.AppId = baseRequestValueInfo.AppId;
        this.AppVersion = baseRequestValueInfo.AppVersion;
        this.ClientTimestamp = baseRequestValueInfo.ClientTimestamp;
        this.DeviceId = baseRequestValueInfo.DeviceId;
        this.TemplateFileId = baseRequestValueInfo.TemplateFileId;
        this.TemplateVersion = baseRequestValueInfo.TemplateVersion;
        this.IsRedFinger = baseRequestValueInfo.IsRedFinger;
        this.DeviceCode = baseRequestValueInfo.DeviceCode;
        this.AppInfo = baseRequestValueInfo.AppInfo;
        this.V = baseRequestValueInfo.V;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "BaseRequestValueInfo{TemplateFileId=" + this.TemplateFileId + ", TemplateVersion='" + this.TemplateVersion + "', AppId=" + this.AppId + ", AppVersion='" + this.AppVersion + "', DeviceId='" + this.DeviceId + "', ClientTimestamp=" + this.ClientTimestamp + ", IsRedFinger=" + this.IsRedFinger + ", DeviceCode='" + this.DeviceCode + "', AppInfo='" + this.AppInfo + "', V='" + this.V + '\'' + MessageFormatter.DELIM_STOP;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.TemplateFileId);
        parcel.writeString(this.TemplateVersion);
        parcel.writeLong(this.AppId);
        parcel.writeString(this.AppVersion);
        parcel.writeString(this.DeviceId);
        parcel.writeLong(this.ClientTimestamp);
        parcel.writeInt(this.IsRedFinger);
        parcel.writeString(this.DeviceCode);
        parcel.writeString(this.AppInfo);
        parcel.writeString(this.V);
    }
}
