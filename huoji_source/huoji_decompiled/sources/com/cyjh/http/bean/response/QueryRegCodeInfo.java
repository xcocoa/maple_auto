package com.cyjh.http.bean.response;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class QueryRegCodeInfo implements Parcelable {
    public static final Parcelable.Creator<QueryRegCodeInfo> CREATOR = new Parcelable.Creator<QueryRegCodeInfo>() { // from class: com.cyjh.http.bean.response.QueryRegCodeInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public QueryRegCodeInfo createFromParcel(Parcel parcel) {
            return new QueryRegCodeInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public QueryRegCodeInfo[] newArray(int i) {
            return new QueryRegCodeInfo[i];
        }
    };
    public long ClientTimestamp;
    public int IsSuperposeConfirm;
    public long ServerTimestamp;

    public QueryRegCodeInfo() {
    }

    public QueryRegCodeInfo(Parcel parcel) {
        this.IsSuperposeConfirm = parcel.readInt();
        this.ClientTimestamp = parcel.readLong();
        this.ServerTimestamp = parcel.readLong();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.IsSuperposeConfirm);
        parcel.writeLong(this.ClientTimestamp);
        parcel.writeLong(this.ServerTimestamp);
    }
}
