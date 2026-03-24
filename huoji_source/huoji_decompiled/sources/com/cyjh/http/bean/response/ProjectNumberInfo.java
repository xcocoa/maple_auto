package com.cyjh.http.bean.response;

import android.os.Parcel;
import android.os.Parcelable;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class ProjectNumberInfo implements Parcelable {
    public static final Parcelable.Creator<ProjectNumberInfo> CREATOR = new Parcelable.Creator<ProjectNumberInfo>() { // from class: com.cyjh.http.bean.response.ProjectNumberInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProjectNumberInfo createFromParcel(Parcel parcel) {
            return new ProjectNumberInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProjectNumberInfo[] newArray(int i) {
            return new ProjectNumberInfo[i];
        }
    };
    public String IMServerHost;
    public int IMServerPort;
    public String IMToken;

    public ProjectNumberInfo() {
    }

    public ProjectNumberInfo(Parcel parcel) {
        this.IMServerHost = parcel.readString();
        this.IMServerPort = parcel.readInt();
        this.IMToken = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "ProjectNumberInfo{IMServerHost=" + this.IMServerHost + ", IMServerPort='" + this.IMServerPort + "', IMToken='" + this.IMToken + '\'' + MessageFormatter.DELIM_STOP;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.IMServerHost);
        parcel.writeInt(this.IMServerPort);
        parcel.writeString(this.IMToken);
    }
}
