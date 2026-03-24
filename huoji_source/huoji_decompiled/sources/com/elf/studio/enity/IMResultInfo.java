package com.elf.studio.enity;

import android.os.Parcel;
import android.os.Parcelable;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes2.dex */
public class IMResultInfo implements Parcelable {
    public static final Parcelable.Creator<IMResultInfo> CREATOR = new Parcelable.Creator<IMResultInfo>() { // from class: com.elf.studio.enity.IMResultInfo.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public IMResultInfo createFromParcel(Parcel parcel) {
            return new IMResultInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
        public IMResultInfo[] newArray(int i) {
            return new IMResultInfo[i];
        }
    };
    public String IMServerHost;
    public int IMServerPort;
    public String IMToken;

    public IMResultInfo() {
    }

    public IMResultInfo(Parcel parcel) {
        this.IMServerHost = parcel.readString();
        this.IMServerPort = parcel.readInt();
        this.IMToken = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "IMResultInfo{IMServerHost='" + this.IMServerHost + "', IMServerPort='" + this.IMServerPort + "', IMToken='" + this.IMToken + '\'' + MessageFormatter.DELIM_STOP;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.IMServerHost);
        parcel.writeInt(this.IMServerPort);
        parcel.writeString(this.IMToken);
    }
}
