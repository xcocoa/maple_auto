package com.cyjh.http.bean.request;

import android.os.Parcel;
import android.os.Parcelable;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class UploadInstanceDataRequestInfo extends BaseRequestValueInfo {
    public static final Parcelable.Creator<UploadInstanceDataRequestInfo> CREATOR = new Parcelable.Creator<UploadInstanceDataRequestInfo>() { // from class: com.cyjh.http.bean.request.UploadInstanceDataRequestInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UploadInstanceDataRequestInfo createFromParcel(Parcel parcel) {
            return new UploadInstanceDataRequestInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UploadInstanceDataRequestInfo[] newArray(int i) {
            return new UploadInstanceDataRequestInfo[i];
        }
    };
    public String InstanceData;
    public String ScriptId;

    public UploadInstanceDataRequestInfo(Parcel parcel) {
        super(parcel);
        this.ScriptId = parcel.readString();
        this.InstanceData = parcel.readString();
    }

    public UploadInstanceDataRequestInfo(BaseRequestValueInfo baseRequestValueInfo) {
        super(baseRequestValueInfo);
    }

    public static Parcelable.Creator<UploadInstanceDataRequestInfo> getCREATOR() {
        return CREATOR;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getInstanceData() {
        return this.InstanceData;
    }

    public String getScriptId() {
        return this.ScriptId;
    }

    public void setInstanceData(String str) {
        this.InstanceData = str;
    }

    public void setScriptId(String str) {
        this.ScriptId = str;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo
    public String toString() {
        return "EditProjectNumberRequestInfo{TemplateFileId=" + this.TemplateFileId + ", TemplateVersion='" + this.TemplateVersion + "', AppId=" + this.AppId + ", AppVersion='" + this.AppVersion + "', DeviceId='" + this.DeviceId + "', ClientTimestamp=" + this.ClientTimestamp + ", IsRedFinger=" + this.IsRedFinger + ", DeviceCode='" + this.DeviceCode + "', AppInfo='" + this.AppInfo + "', ScriptId='" + this.ScriptId + "', InstanceData='" + this.InstanceData + '\'' + MessageFormatter.DELIM_STOP;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.ScriptId);
        parcel.writeString(this.InstanceData);
    }
}
