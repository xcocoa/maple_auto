package com.cyjh.http.bean.response;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class RegCodeInfoResponse implements Parcelable {
    public static final Parcelable.Creator<RegCodeInfoResponse> CREATOR = new Parcelable.Creator<RegCodeInfoResponse>() { // from class: com.cyjh.http.bean.response.RegCodeInfoResponse.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RegCodeInfoResponse createFromParcel(Parcel parcel) {
            return new RegCodeInfoResponse(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RegCodeInfoResponse[] newArray(int i) {
            return new RegCodeInfoResponse[i];
        }
    };
    public int Code;
    public QueryRegCodeInfo Data;
    public String Message;

    public RegCodeInfoResponse() {
    }

    public RegCodeInfoResponse(int i, String str) {
        this.Code = i;
        this.Message = str;
    }

    public RegCodeInfoResponse(Parcel parcel) {
        this.Code = parcel.readInt();
        this.Message = parcel.readString();
        this.Data = (QueryRegCodeInfo) parcel.readParcelable(QueryRegCodeInfo.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.Code);
        parcel.writeString(this.Message);
        parcel.writeParcelable(this.Data, i);
    }
}
