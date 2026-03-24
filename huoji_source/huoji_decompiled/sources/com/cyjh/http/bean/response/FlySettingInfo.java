package com.cyjh.http.bean.response;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class FlySettingInfo implements Parcelable {
    public static final Parcelable.Creator<FlySettingInfo> CREATOR = new Parcelable.Creator<FlySettingInfo>() { // from class: com.cyjh.http.bean.response.FlySettingInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FlySettingInfo createFromParcel(Parcel parcel) {
            return new FlySettingInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FlySettingInfo[] newArray(int i) {
            return new FlySettingInfo[i];
        }
    };
    public int Active;
    public int AdType;
    public String FlyKey;
    public double Probability;

    public FlySettingInfo(Parcel parcel) {
        this.AdType = parcel.readInt();
        this.FlyKey = parcel.readString();
        this.Active = parcel.readInt();
        this.Probability = parcel.readDouble();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.AdType);
        parcel.writeString(this.FlyKey);
        parcel.writeInt(this.Active);
        parcel.writeDouble(this.Probability);
    }
}
