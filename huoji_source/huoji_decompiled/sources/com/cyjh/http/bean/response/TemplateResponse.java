package com.cyjh.http.bean.response;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class TemplateResponse implements Parcelable {
    public static final Parcelable.Creator<TemplateResponse> CREATOR = new Parcelable.Creator<TemplateResponse>() { // from class: com.cyjh.http.bean.response.TemplateResponse.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TemplateResponse createFromParcel(Parcel parcel) {
            return new TemplateResponse(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TemplateResponse[] newArray(int i) {
            return new TemplateResponse[i];
        }
    };
    public long ClientTimestamp;
    public int HeartbeatIntervalSecond;
    public int HeartbeatInvalidTimes;
    public String Remark;
    public long ServerTimestamp;
    public int Status;
    public int TemplateType;

    public TemplateResponse() {
    }

    public TemplateResponse(Parcel parcel) {
        this.TemplateType = parcel.readInt();
        this.Status = parcel.readInt();
        this.Remark = parcel.readString();
        this.HeartbeatIntervalSecond = parcel.readInt();
        this.HeartbeatInvalidTimes = parcel.readInt();
        this.ClientTimestamp = parcel.readLong();
        this.ServerTimestamp = parcel.readLong();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.TemplateType);
        parcel.writeInt(this.Status);
        parcel.writeString(this.Remark);
        parcel.writeInt(this.HeartbeatIntervalSecond);
        parcel.writeInt(this.HeartbeatInvalidTimes);
        parcel.writeLong(this.ClientTimestamp);
        parcel.writeLong(this.ServerTimestamp);
    }
}
