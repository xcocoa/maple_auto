package com.cyjh.http.bean.response;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RecommendGameDesInfo implements Parcelable {
    public static final Parcelable.Creator<RecommendGameDesInfo> CREATOR = new Parcelable.Creator<RecommendGameDesInfo>() { // from class: com.cyjh.http.bean.response.RecommendGameDesInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RecommendGameDesInfo createFromParcel(Parcel parcel) {
            return new RecommendGameDesInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RecommendGameDesInfo[] newArray(int i) {
            return new RecommendGameDesInfo[i];
        }
    };
    public long ClientTimestamp;
    public String CreateDate;
    public int DownLoadCount;
    public String DownloadUrl;
    public String GameContent;
    public String GameDesc;
    public String GameIconUrl;
    public long GameId;
    public List<RecommendGameImageUrlInfo> GameImageList;
    public String GameName;
    public String GameTag;
    public String PackageName;
    public String PackageSize;
    public int Sequence;
    public long ServerTimestamp;

    public RecommendGameDesInfo() {
    }

    public RecommendGameDesInfo(Parcel parcel) {
        this.GameId = parcel.readLong();
        this.Sequence = parcel.readInt();
        this.GameName = parcel.readString();
        this.GameIconUrl = parcel.readString();
        this.GameDesc = parcel.readString();
        this.GameTag = parcel.readString();
        this.DownloadUrl = parcel.readString();
        this.PackageName = parcel.readString();
        this.PackageSize = parcel.readString();
        this.GameContent = parcel.readString();
        this.CreateDate = parcel.readString();
        this.DownLoadCount = parcel.readInt();
        this.GameImageList = parcel.createTypedArrayList(RecommendGameImageUrlInfo.CREATOR);
        this.ClientTimestamp = parcel.readLong();
        this.ServerTimestamp = parcel.readLong();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.GameId);
        parcel.writeInt(this.Sequence);
        parcel.writeString(this.GameName);
        parcel.writeString(this.GameIconUrl);
        parcel.writeString(this.GameDesc);
        parcel.writeString(this.GameTag);
        parcel.writeString(this.DownloadUrl);
        parcel.writeString(this.PackageName);
        parcel.writeString(this.PackageSize);
        parcel.writeString(this.GameContent);
        parcel.writeString(this.CreateDate);
        parcel.writeInt(this.DownLoadCount);
        parcel.writeTypedList(this.GameImageList);
        parcel.writeLong(this.ClientTimestamp);
        parcel.writeLong(this.ServerTimestamp);
    }
}
