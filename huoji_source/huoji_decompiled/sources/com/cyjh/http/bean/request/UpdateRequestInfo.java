package com.cyjh.http.bean.request;

import android.os.Parcel;
import android.os.Parcelable;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class UpdateRequestInfo extends BaseRequestValueInfo {
    public static final Parcelable.Creator<UpdateRequestInfo> CREATOR = new Parcelable.Creator<UpdateRequestInfo>() { // from class: com.cyjh.http.bean.request.UpdateRequestInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UpdateRequestInfo createFromParcel(Parcel parcel) {
            return new UpdateRequestInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UpdateRequestInfo[] newArray(int i) {
            return new UpdateRequestInfo[i];
        }
    };
    public String DeviceName;
    public int IsScriptHotUpgrade;
    public String ScriptId;
    public int ScriptVersion;

    public UpdateRequestInfo() {
    }

    public UpdateRequestInfo(Parcel parcel) {
        super(parcel);
        this.ScriptId = parcel.readString();
        this.DeviceName = parcel.readString();
        this.ScriptVersion = parcel.readInt();
        this.IsScriptHotUpgrade = parcel.readInt();
    }

    public UpdateRequestInfo(BaseRequestValueInfo baseRequestValueInfo) {
        super(baseRequestValueInfo);
    }

    public static Parcelable.Creator<UpdateRequestInfo> getCREATOR() {
        return CREATOR;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getDeviceName() {
        return this.DeviceName;
    }

    public int getIsScriptHotUpgrade() {
        return this.IsScriptHotUpgrade;
    }

    public String getScriptId() {
        return this.ScriptId;
    }

    public int getScriptVersion() {
        return this.ScriptVersion;
    }

    public void setDeviceName(String str) {
        this.DeviceName = str;
    }

    public void setIsScriptHotUpgrade(int i) {
        this.IsScriptHotUpgrade = i;
    }

    public void setScriptId(String str) {
        this.ScriptId = str;
    }

    public void setScriptVersion(int i) {
        this.ScriptVersion = i;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo
    public String toString() {
        return "UpdateRequestInfo{TemplateFileId=" + this.TemplateFileId + ", TemplateVersion='" + this.TemplateVersion + "', AppId=" + this.AppId + ", AppVersion='" + this.AppVersion + "', DeviceId='" + this.DeviceId + "', ClientTimestamp=" + this.ClientTimestamp + ", IsRedFinger=" + this.IsRedFinger + ", DeviceCode='" + this.DeviceCode + "', AppInfo='" + this.AppInfo + "', ScriptId='" + this.ScriptId + "', DeviceName='" + this.DeviceName + "', ScriptVersion='" + this.ScriptVersion + "', IsScriptHotUpgrade='" + this.IsScriptHotUpgrade + '\'' + MessageFormatter.DELIM_STOP;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.ScriptId);
        parcel.writeString(this.DeviceName);
        parcel.writeInt(this.ScriptVersion);
        parcel.writeInt(this.IsScriptHotUpgrade);
    }
}
