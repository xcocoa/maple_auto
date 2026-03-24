package com.elf.studio.enity;

import android.os.Parcel;
import android.os.Parcelable;
import com.cyjh.http.bean.request.BaseRequestValueInfo;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes2.dex */
public class IMRequestInfo extends BaseRequestValueInfo {
    public static final Parcelable.Creator<IMRequestInfo> CREATOR = new Parcelable.Creator<IMRequestInfo>() { // from class: com.elf.studio.enity.IMRequestInfo.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public IMRequestInfo createFromParcel(Parcel parcel) {
            return new IMRequestInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
        public IMRequestInfo[] newArray(int i) {
            return new IMRequestInfo[i];
        }
    };
    public String ScriptId;

    public IMRequestInfo() {
    }

    public IMRequestInfo(Parcel parcel) {
        super(parcel);
        this.ScriptId = parcel.readString();
    }

    public IMRequestInfo(BaseRequestValueInfo baseRequestValueInfo) {
        super(baseRequestValueInfo);
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo
    public String toString() {
        return "UpdateRequestInfo{TemplateFileId=" + this.TemplateFileId + ", TemplateVersion='" + this.TemplateVersion + "', AppId=" + this.AppId + ", AppVersion='" + this.AppVersion + "', DeviceId='" + this.DeviceId + "', ClientTimestamp=" + this.ClientTimestamp + ", IsRedFinger=" + this.IsRedFinger + ", DeviceCode='" + this.DeviceCode + "', AppInfo='" + this.AppInfo + "', ScriptId='" + this.ScriptId + '\'' + MessageFormatter.DELIM_STOP;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.ScriptId);
    }
}
