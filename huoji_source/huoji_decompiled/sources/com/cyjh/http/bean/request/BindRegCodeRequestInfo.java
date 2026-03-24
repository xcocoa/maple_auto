package com.cyjh.http.bean.request;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class BindRegCodeRequestInfo extends BaseRequestValueInfo {
    public static final Parcelable.Creator<BindRegCodeRequestInfo> CREATOR = new Parcelable.Creator<BindRegCodeRequestInfo>() { // from class: com.cyjh.http.bean.request.BindRegCodeRequestInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BindRegCodeRequestInfo createFromParcel(Parcel parcel) {
            return new BindRegCodeRequestInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BindRegCodeRequestInfo[] newArray(int i) {
            return new BindRegCodeRequestInfo[i];
        }
    };
    public int IsSuperpose;
    public String OldRegCode;
    public String RegCode;

    public BindRegCodeRequestInfo(Parcel parcel) {
        super(parcel);
        this.RegCode = parcel.readString();
        this.OldRegCode = parcel.readString();
        this.IsSuperpose = parcel.readInt();
    }

    public BindRegCodeRequestInfo(BaseRequestValueInfo baseRequestValueInfo) {
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
        parcel.writeInt(this.IsSuperpose);
    }
}
