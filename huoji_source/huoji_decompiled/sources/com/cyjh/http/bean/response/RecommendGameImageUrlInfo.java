package com.cyjh.http.bean.response;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class RecommendGameImageUrlInfo implements Parcelable {
    public static final Parcelable.Creator<RecommendGameImageUrlInfo> CREATOR = new Parcelable.Creator<RecommendGameImageUrlInfo>() { // from class: com.cyjh.http.bean.response.RecommendGameImageUrlInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RecommendGameImageUrlInfo createFromParcel(Parcel parcel) {
            return new RecommendGameImageUrlInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RecommendGameImageUrlInfo[] newArray(int i) {
            return new RecommendGameImageUrlInfo[i];
        }
    };
    public long Id;
    public String ImageTitle;
    public String ImageUrl;
    public int Sequence;

    public RecommendGameImageUrlInfo(Parcel parcel) {
        this.Id = parcel.readLong();
        this.ImageTitle = parcel.readString();
        this.ImageUrl = parcel.readString();
        this.Sequence = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.Id);
        parcel.writeString(this.ImageTitle);
        parcel.writeString(this.ImageUrl);
        parcel.writeInt(this.Sequence);
    }
}
