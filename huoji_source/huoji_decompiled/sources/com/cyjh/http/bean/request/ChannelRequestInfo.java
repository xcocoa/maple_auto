package com.cyjh.http.bean.request;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class ChannelRequestInfo extends BaseRequestValueInfo {
    public static final Parcelable.Creator<ChannelRequestInfo> CREATOR = new Parcelable.Creator<ChannelRequestInfo>() { // from class: com.cyjh.http.bean.request.ChannelRequestInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ChannelRequestInfo createFromParcel(Parcel parcel) {
            return new ChannelRequestInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ChannelRequestInfo[] newArray(int i) {
            return new ChannelRequestInfo[i];
        }
    };
    public String PackageName;
    public String Version;

    public ChannelRequestInfo(Parcel parcel) {
        super(parcel);
        this.PackageName = parcel.readString();
        this.Version = parcel.readString();
    }

    public ChannelRequestInfo(BaseRequestValueInfo baseRequestValueInfo) {
        super(baseRequestValueInfo);
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.PackageName);
        parcel.writeString(this.Version);
    }
}
