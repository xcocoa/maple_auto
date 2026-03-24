package com.cyjh.http.bean.request;

import android.os.Parcel;
import android.os.Parcelable;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class NoticeDetailsRequestParams extends BaseRequestValueInfo {
    public static final Parcelable.Creator<NoticeDetailsRequestParams> CREATOR = new Parcelable.Creator<NoticeDetailsRequestParams>() { // from class: com.cyjh.http.bean.request.NoticeDetailsRequestParams.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NoticeDetailsRequestParams createFromParcel(Parcel parcel) {
            return new NoticeDetailsRequestParams(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NoticeDetailsRequestParams[] newArray(int i) {
            return new NoticeDetailsRequestParams[i];
        }
    };
    public long NoticeId;

    public NoticeDetailsRequestParams(Parcel parcel) {
        super(parcel);
        this.NoticeId = parcel.readLong();
    }

    public NoticeDetailsRequestParams(BaseRequestValueInfo baseRequestValueInfo) {
        super(baseRequestValueInfo);
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo
    public String toString() {
        return "NoticeDetailsRequestParams{NoticeId=" + this.NoticeId + ", TemplateFileId=" + this.TemplateFileId + ", TemplateVersion='" + this.TemplateVersion + "', AppId=" + this.AppId + ", AppVersion='" + this.AppVersion + "', DeviceId='" + this.DeviceId + "', ClientTimestamp=" + this.ClientTimestamp + ", IsRedFinger=" + this.IsRedFinger + MessageFormatter.DELIM_STOP;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeLong(this.NoticeId);
    }
}
