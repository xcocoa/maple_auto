package com.cyjh.http.bean.response;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class BindRegCodeResponse implements Parcelable {
    public static final Parcelable.Creator<BindRegCodeResponse> CREATOR = new Parcelable.Creator<BindRegCodeResponse>() { // from class: com.cyjh.http.bean.response.BindRegCodeResponse.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BindRegCodeResponse createFromParcel(Parcel parcel) {
            return new BindRegCodeResponse(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BindRegCodeResponse[] newArray(int i) {
            return new BindRegCodeResponse[i];
        }
    };
    public int Code;
    public RegCodeTimeInfo Data;
    public String Message;

    public static class RegCodeTimeInfo implements Parcelable {
        public static final Parcelable.Creator<RegCodeTimeInfo> CREATOR = new Parcelable.Creator<RegCodeTimeInfo>() { // from class: com.cyjh.http.bean.response.BindRegCodeResponse.RegCodeTimeInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RegCodeTimeInfo createFromParcel(Parcel parcel) {
                return new RegCodeTimeInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RegCodeTimeInfo[] newArray(int i) {
                return new RegCodeTimeInfo[i];
            }
        };
        public long ClientTimestamp;
        public long ExpireTime;
        public long ServerTimestamp;

        public RegCodeTimeInfo(Parcel parcel) {
            this.ClientTimestamp = parcel.readLong();
            this.ServerTimestamp = parcel.readLong();
            this.ExpireTime = parcel.readLong();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.ClientTimestamp);
            parcel.writeLong(this.ServerTimestamp);
            parcel.writeLong(this.ExpireTime);
        }
    }

    public BindRegCodeResponse(Parcel parcel) {
        this.Code = parcel.readInt();
        this.Message = parcel.readString();
        this.Data = (RegCodeTimeInfo) parcel.readParcelable(RegCodeTimeInfo.class.getClassLoader());
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
