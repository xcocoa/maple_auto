package com.cyjh.http.bean.response;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class RecommendGamePageInfo implements Parcelable {
    public static final Parcelable.Creator<RecommendGamePageInfo> CREATOR = new Parcelable.Creator<RecommendGamePageInfo>() { // from class: com.cyjh.http.bean.response.RecommendGamePageInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RecommendGamePageInfo createFromParcel(Parcel parcel) {
            return new RecommendGamePageInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RecommendGamePageInfo[] newArray(int i) {
            return new RecommendGamePageInfo[i];
        }
    };
    public int CurrentPage;
    public int DataCount;
    public int IsLastPage;
    public int PageCount;
    public int PageSize;

    public RecommendGamePageInfo(Parcel parcel) {
        this.CurrentPage = parcel.readInt();
        this.PageSize = parcel.readInt();
        this.PageCount = parcel.readInt();
        this.DataCount = parcel.readInt();
        this.IsLastPage = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.CurrentPage);
        parcel.writeInt(this.PageSize);
        parcel.writeInt(this.PageCount);
        parcel.writeInt(this.DataCount);
        parcel.writeInt(this.IsLastPage);
    }
}
