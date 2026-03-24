package com.cyjh.http.bean.response;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class BaseResponseInfo implements Parcelable {
    public static final Parcelable.Creator<BaseResponseInfo> CREATOR = new Parcelable.Creator<BaseResponseInfo>() { // from class: com.cyjh.http.bean.response.BaseResponseInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BaseResponseInfo createFromParcel(Parcel parcel) {
            return new BaseResponseInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BaseResponseInfo[] newArray(int i) {
            return new BaseResponseInfo[i];
        }
    };
    public int Code;
    public String Message;

    public BaseResponseInfo(int i, String str) {
        this.Code = i;
        this.Message = str;
    }

    public BaseResponseInfo(Parcel parcel) {
        this.Code = parcel.readInt();
        this.Message = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.Code);
        parcel.writeString(this.Message);
    }
}
