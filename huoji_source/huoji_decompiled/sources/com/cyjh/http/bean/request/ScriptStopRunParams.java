package com.cyjh.http.bean.request;

import android.os.Parcel;
import android.os.Parcelable;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class ScriptStopRunParams extends BaseRequestValueInfo {
    public static final Parcelable.Creator<ScriptStopRunParams> CREATOR = new Parcelable.Creator<ScriptStopRunParams>() { // from class: com.cyjh.http.bean.request.ScriptStopRunParams.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScriptStopRunParams createFromParcel(Parcel parcel) {
            return new ScriptStopRunParams(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScriptStopRunParams[] newArray(int i) {
            return new ScriptStopRunParams[i];
        }
    };
    public String RunGuid;

    public ScriptStopRunParams(Parcel parcel) {
        super(parcel);
        this.RunGuid = parcel.readString();
    }

    public ScriptStopRunParams(BaseRequestValueInfo baseRequestValueInfo) {
        super(baseRequestValueInfo);
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo
    public String toString() {
        return "ScriptStopRunParams{RunGuid='" + this.RunGuid + "', TemplateFileId=" + this.TemplateFileId + ", TemplateVersion='" + this.TemplateVersion + "', AppId=" + this.AppId + ", AppVersion='" + this.AppVersion + "', DeviceId='" + this.DeviceId + "', ClientTimestamp=" + this.ClientTimestamp + ", IsRedFinger=" + this.IsRedFinger + MessageFormatter.DELIM_STOP;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.RunGuid);
    }
}
