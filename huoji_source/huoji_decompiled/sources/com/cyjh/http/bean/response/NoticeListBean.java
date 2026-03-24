package com.cyjh.http.bean.response;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class NoticeListBean implements Parcelable {
    public static final Parcelable.Creator<NoticeListBean> CREATOR = new Parcelable.Creator<NoticeListBean>() { // from class: com.cyjh.http.bean.response.NoticeListBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NoticeListBean createFromParcel(Parcel parcel) {
            return new NoticeListBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NoticeListBean[] newArray(int i) {
            return new NoticeListBean[i];
        }
    };
    public List<NoticeBean> NoticeList;

    public NoticeListBean(Parcel parcel) {
        this.NoticeList = parcel.createTypedArrayList(NoticeBean.CREATOR);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.NoticeList);
    }
}
