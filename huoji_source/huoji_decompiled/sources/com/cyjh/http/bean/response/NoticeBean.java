package com.cyjh.http.bean.response;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class NoticeBean implements Parcelable {
    public static final Parcelable.Creator<NoticeBean> CREATOR = new Parcelable.Creator<NoticeBean>() { // from class: com.cyjh.http.bean.response.NoticeBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NoticeBean createFromParcel(Parcel parcel) {
            return new NoticeBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NoticeBean[] newArray(int i) {
            return new NoticeBean[i];
        }
    };
    public long ClientTimestamp;
    public int DescriptionType;
    public int IsShowNoticeBar;
    public String NoticeContent;
    public String NoticeDescription;
    public long NoticeId;
    public long NoticeTime;
    public String NoticeTitle;
    public long ServerTimestamp;

    public NoticeBean() {
    }

    public NoticeBean(Parcel parcel) {
        this.NoticeTitle = parcel.readString();
        this.NoticeDescription = parcel.readString();
        this.NoticeId = parcel.readLong();
        this.DescriptionType = parcel.readInt();
        this.NoticeTime = parcel.readLong();
        this.NoticeContent = parcel.readString();
        this.IsShowNoticeBar = parcel.readInt();
        this.ClientTimestamp = parcel.readLong();
        this.ServerTimestamp = parcel.readLong();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.NoticeTitle);
        parcel.writeString(this.NoticeDescription);
        parcel.writeLong(this.NoticeId);
        parcel.writeInt(this.DescriptionType);
        parcel.writeLong(this.NoticeTime);
        parcel.writeString(this.NoticeContent);
        parcel.writeInt(this.IsShowNoticeBar);
        parcel.writeLong(this.ClientTimestamp);
        parcel.writeLong(this.ServerTimestamp);
    }
}
