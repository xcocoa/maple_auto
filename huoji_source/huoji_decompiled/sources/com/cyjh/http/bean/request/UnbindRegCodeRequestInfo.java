package com.cyjh.http.bean.request;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class UnbindRegCodeRequestInfo extends BaseRequestValueInfo {
    public static final Parcelable.Creator<UnbindRegCodeRequestInfo> CREATOR = new Parcelable.Creator<UnbindRegCodeRequestInfo>() { // from class: com.cyjh.http.bean.request.UnbindRegCodeRequestInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UnbindRegCodeRequestInfo createFromParcel(Parcel parcel) {
            return new UnbindRegCodeRequestInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UnbindRegCodeRequestInfo[] newArray(int i) {
            return new UnbindRegCodeRequestInfo[i];
        }
    };
    public String RegCode;

    public UnbindRegCodeRequestInfo(Parcel parcel) {
        super(parcel);
        this.RegCode = parcel.readString();
    }

    public UnbindRegCodeRequestInfo(BaseRequestValueInfo baseRequestValueInfo) {
        super(baseRequestValueInfo);
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.RegCode);
    }
}
