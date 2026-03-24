package com.cyjh.http.bean.response;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class BackgroundSetAdInfo implements Parcelable {
    public static final Parcelable.Creator<BackgroundSetAdInfo> CREATOR = new Parcelable.Creator<BackgroundSetAdInfo>() { // from class: com.cyjh.http.bean.response.BackgroundSetAdInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BackgroundSetAdInfo createFromParcel(Parcel parcel) {
            return new BackgroundSetAdInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BackgroundSetAdInfo[] newArray(int i) {
            return new BackgroundSetAdInfo[i];
        }
    };
    public int AdType;
    public long Id;
    public String ImageUrl;
    public String LinkUrl;
    public int OpenMethod;
    public double Probability;
    public int Sequence;
    public String Title;

    public BackgroundSetAdInfo() {
    }

    public BackgroundSetAdInfo(Parcel parcel) {
        this.Title = parcel.readString();
        this.AdType = parcel.readInt();
        this.Id = parcel.readLong();
        this.ImageUrl = parcel.readString();
        this.LinkUrl = parcel.readString();
        this.OpenMethod = parcel.readInt();
        this.Sequence = parcel.readInt();
        this.Probability = parcel.readDouble();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.Title);
        parcel.writeInt(this.AdType);
        parcel.writeLong(this.Id);
        parcel.writeString(this.ImageUrl);
        parcel.writeString(this.LinkUrl);
        parcel.writeInt(this.OpenMethod);
        parcel.writeInt(this.Sequence);
        parcel.writeDouble(this.Probability);
    }
}
