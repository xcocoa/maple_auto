package com.cyjh.http.bean.request;

import android.os.Parcel;
import android.os.Parcelable;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class ScriptStartRunParams extends BaseRequestValueInfo {
    public static final Parcelable.Creator<ScriptStartRunParams> CREATOR = new Parcelable.Creator<ScriptStartRunParams>() { // from class: com.cyjh.http.bean.request.ScriptStartRunParams.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScriptStartRunParams createFromParcel(Parcel parcel) {
            return new ScriptStartRunParams(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScriptStartRunParams[] newArray(int i) {
            return new ScriptStartRunParams[i];
        }
    };
    public String RegCode;
    public String ScriptId;

    public ScriptStartRunParams(Parcel parcel) {
        super(parcel);
        this.RegCode = parcel.readString();
    }

    public ScriptStartRunParams(BaseRequestValueInfo baseRequestValueInfo) {
        super(baseRequestValueInfo);
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo
    public String toString() {
        return "ScriptStartRunParams{TemplateFileId=" + this.TemplateFileId + ", TemplateVersion='" + this.TemplateVersion + "', AppId=" + this.AppId + ", AppVersion='" + this.AppVersion + "', DeviceId='" + this.DeviceId + "', ClientTimestamp=" + this.ClientTimestamp + ", IsRedFinger=" + this.IsRedFinger + ", DeviceCode='" + this.DeviceCode + "', AppInfo='" + this.AppInfo + "', V='" + this.V + "', RegCode='" + this.RegCode + "', ScriptId='" + this.ScriptId + '\'' + MessageFormatter.DELIM_STOP;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.RegCode);
    }
}
