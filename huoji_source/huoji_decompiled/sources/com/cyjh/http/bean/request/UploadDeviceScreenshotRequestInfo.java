package com.cyjh.http.bean.request;

import android.os.Parcel;
import android.os.Parcelable;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class UploadDeviceScreenshotRequestInfo extends BaseRequestValueInfo {
    public static final Parcelable.Creator<UploadDeviceScreenshotRequestInfo> CREATOR = new Parcelable.Creator<UploadDeviceScreenshotRequestInfo>() { // from class: com.cyjh.http.bean.request.UploadDeviceScreenshotRequestInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UploadDeviceScreenshotRequestInfo createFromParcel(Parcel parcel) {
            return new UploadDeviceScreenshotRequestInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UploadDeviceScreenshotRequestInfo[] newArray(int i) {
            return new UploadDeviceScreenshotRequestInfo[i];
        }
    };
    public String ImageOssPath;
    public String ScriptId;

    public UploadDeviceScreenshotRequestInfo(Parcel parcel) {
        super(parcel);
        this.ScriptId = parcel.readString();
        this.ImageOssPath = parcel.readString();
    }

    public UploadDeviceScreenshotRequestInfo(BaseRequestValueInfo baseRequestValueInfo) {
        super(baseRequestValueInfo);
    }

    public static Parcelable.Creator<UploadDeviceScreenshotRequestInfo> getCREATOR() {
        return CREATOR;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo
    public String toString() {
        return "EditDeviceNameRequestInfo{TemplateFileId=" + this.TemplateFileId + ", TemplateVersion='" + this.TemplateVersion + "', AppId=" + this.AppId + ", AppVersion='" + this.AppVersion + "', DeviceId='" + this.DeviceId + "', ClientTimestamp=" + this.ClientTimestamp + ", IsRedFinger=" + this.IsRedFinger + ", DeviceCode='" + this.DeviceCode + "', AppInfo='" + this.AppInfo + "', ScriptId='" + this.ScriptId + "', ImageOssPath='" + this.ImageOssPath + '\'' + MessageFormatter.DELIM_STOP;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.ScriptId);
        parcel.writeString(this.ImageOssPath);
    }
}
