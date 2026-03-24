package com.cyjh.http.bean.request;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class QueryRegCodeRequestInfo extends BaseRequestValueInfo {
    public static final Parcelable.Creator<QueryRegCodeRequestInfo> CREATOR = new Parcelable.Creator<QueryRegCodeRequestInfo>() { // from class: com.cyjh.http.bean.request.QueryRegCodeRequestInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public QueryRegCodeRequestInfo createFromParcel(Parcel parcel) {
            return new QueryRegCodeRequestInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public QueryRegCodeRequestInfo[] newArray(int i) {
            return new QueryRegCodeRequestInfo[i];
        }
    };
    public String OldRegCode;
    public String RegCode;

    public QueryRegCodeRequestInfo(Parcel parcel) {
        super(parcel);
        this.RegCode = parcel.readString();
        this.OldRegCode = parcel.readString();
    }

    public QueryRegCodeRequestInfo(BaseRequestValueInfo baseRequestValueInfo) {
        super(baseRequestValueInfo);
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.RegCode);
        parcel.writeString(this.OldRegCode);
    }
}
