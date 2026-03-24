package com.cyjh.http.bean.request;

import android.os.Parcel;
import android.os.Parcelable;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class UploadScriptSettingRequestInfo extends BaseRequestValueInfo {
    public static final Parcelable.Creator<UploadScriptSettingRequestInfo> CREATOR = new Parcelable.Creator<UploadScriptSettingRequestInfo>() { // from class: com.cyjh.http.bean.request.UploadScriptSettingRequestInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UploadScriptSettingRequestInfo createFromParcel(Parcel parcel) {
            return new UploadScriptSettingRequestInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UploadScriptSettingRequestInfo[] newArray(int i) {
            return new UploadScriptSettingRequestInfo[i];
        }
    };
    public String ScriptId;
    public String ScriptSettings;
    public String ScriptUI;

    public UploadScriptSettingRequestInfo(Parcel parcel) {
        super(parcel);
        this.ScriptId = parcel.readString();
        this.ScriptUI = parcel.readString();
        this.ScriptSettings = parcel.readString();
    }

    public UploadScriptSettingRequestInfo(BaseRequestValueInfo baseRequestValueInfo) {
        super(baseRequestValueInfo);
    }

    public static Parcelable.Creator<UploadScriptSettingRequestInfo> getCREATOR() {
        return CREATOR;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo
    public String toString() {
        return "UploadScriptSettingRequestInfo{TemplateFileId=" + this.TemplateFileId + ", TemplateVersion='" + this.TemplateVersion + "', AppId=" + this.AppId + ", AppVersion='" + this.AppVersion + "', DeviceId='" + this.DeviceId + "', ClientTimestamp=" + this.ClientTimestamp + ", IsRedFinger=" + this.IsRedFinger + ", DeviceCode='" + this.DeviceCode + "', AppInfo='" + this.AppInfo + "', ScriptId='" + this.ScriptId + "', ScriptUI='" + this.ScriptUI + "', ScriptSettings='" + this.ScriptSettings + '\'' + MessageFormatter.DELIM_STOP;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.ScriptId);
        parcel.writeString(this.ScriptUI);
        parcel.writeString(this.ScriptSettings);
    }
}
