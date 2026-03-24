package com.cyjh.http.bean.request;

import android.os.Parcel;
import android.os.Parcelable;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class RecommendGameDetailParams extends BaseRequestValueInfo implements Parcelable {
    public static final Parcelable.Creator<RecommendGameDetailParams> CREATOR = new Parcelable.Creator<RecommendGameDetailParams>() { // from class: com.cyjh.http.bean.request.RecommendGameDetailParams.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RecommendGameDetailParams createFromParcel(Parcel parcel) {
            return new RecommendGameDetailParams(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RecommendGameDetailParams[] newArray(int i) {
            return new RecommendGameDetailParams[i];
        }
    };
    public long GameId;

    public RecommendGameDetailParams(Parcel parcel) {
        super(parcel);
        this.GameId = parcel.readLong();
    }

    public RecommendGameDetailParams(BaseRequestValueInfo baseRequestValueInfo) {
        super(baseRequestValueInfo);
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo
    public String toString() {
        return "RecommendGameDetailParams{TemplateFileId=" + this.TemplateFileId + ", GameId=" + this.GameId + ", TemplateVersion='" + this.TemplateVersion + "', AppId=" + this.AppId + ", AppVersion='" + this.AppVersion + "', DeviceId='" + this.DeviceId + "', ClientTimestamp=" + this.ClientTimestamp + ", IsRedFinger=" + this.IsRedFinger + MessageFormatter.DELIM_STOP;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeLong(this.GameId);
    }
}
