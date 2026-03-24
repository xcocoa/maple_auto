package com.cyjh.http.bean.request;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class DdyStatisticsData implements Parcelable {
    public static final Parcelable.Creator<DdyStatisticsData> CREATOR = new Parcelable.Creator<DdyStatisticsData>() { // from class: com.cyjh.http.bean.request.DdyStatisticsData.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DdyStatisticsData createFromParcel(Parcel parcel) {
            return new DdyStatisticsData(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DdyStatisticsData[] newArray(int i) {
            return new DdyStatisticsData[i];
        }
    };
    public static final String DAILY_STATISTICS = "Statistics/Daily";
    public DdyStatisticsRequestParamsInfo data;
    public String type;

    public DdyStatisticsData(Parcel parcel) {
        this.type = parcel.readString();
        this.data = (DdyStatisticsRequestParamsInfo) parcel.readParcelable(DdyStatisticsRequestParamsInfo.class.getClassLoader());
    }

    public DdyStatisticsData(String str, DdyStatisticsRequestParamsInfo ddyStatisticsRequestParamsInfo) {
        this.type = str;
        this.data = ddyStatisticsRequestParamsInfo;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.type);
        parcel.writeParcelable(this.data, i);
    }
}
