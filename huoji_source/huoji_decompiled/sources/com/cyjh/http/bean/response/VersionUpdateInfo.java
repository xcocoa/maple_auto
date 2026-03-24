package com.cyjh.http.bean.response;

import android.os.Parcel;
import android.os.Parcelable;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class VersionUpdateInfo implements Parcelable {
    public static final int APK_DOWNLOAD_MODE = 1;
    public static final Parcelable.Creator<VersionUpdateInfo> CREATOR = new Parcelable.Creator<VersionUpdateInfo>() { // from class: com.cyjh.http.bean.response.VersionUpdateInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VersionUpdateInfo createFromParcel(Parcel parcel) {
            return new VersionUpdateInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VersionUpdateInfo[] newArray(int i) {
            return new VersionUpdateInfo[i];
        }
    };
    public static final int SCRIPT_DOWNLOAD_MODE = 2;
    public String AppName;
    public long AppUpdateTime;
    public String AppVersion;
    public long ClientTimestamp;
    public String DeviceName;
    public int InstanceDataUploadInterval;
    public String PackageName;
    public int PackageSize;
    public long ServerTimestamp;
    public String StudioProjectKey;
    public String UpdateContent;
    public int UpdateType;
    public String UpdateUrl;
    public int UpgradeMode;

    public VersionUpdateInfo() {
    }

    public VersionUpdateInfo(Parcel parcel) {
        this.UpdateType = parcel.readInt();
        this.AppName = parcel.readString();
        this.UpdateContent = parcel.readString();
        this.UpdateUrl = parcel.readString();
        this.PackageName = parcel.readString();
        this.PackageSize = parcel.readInt();
        this.AppUpdateTime = parcel.readLong();
        this.ClientTimestamp = parcel.readLong();
        this.ServerTimestamp = parcel.readLong();
        this.StudioProjectKey = parcel.readString();
        this.DeviceName = parcel.readString();
        this.InstanceDataUploadInterval = parcel.readInt();
        this.UpgradeMode = parcel.readInt();
        this.AppVersion = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "VersionUpdateInfo{UpdateType=" + this.UpdateType + ", AppName='" + this.AppName + "', UpdateContent='" + this.UpdateContent + "', UpdateUrl='" + this.UpdateUrl + "', PackageName='" + this.PackageName + "', PackageSize=" + this.PackageSize + ", AppUpdateTime=" + this.AppUpdateTime + ", ClientTimestamp=" + this.ClientTimestamp + ", ServerTimestamp=" + this.ServerTimestamp + ", StudioProjectKey=" + this.StudioProjectKey + ", DeviceName=" + this.DeviceName + ", InstanceDataUploadInterval=" + this.InstanceDataUploadInterval + ", UpgradeMode=" + this.UpgradeMode + ", AppVersion=" + this.AppVersion + MessageFormatter.DELIM_STOP;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.UpdateType);
        parcel.writeString(this.AppName);
        parcel.writeString(this.UpdateContent);
        parcel.writeString(this.UpdateUrl);
        parcel.writeString(this.PackageName);
        parcel.writeInt(this.PackageSize);
        parcel.writeLong(this.AppUpdateTime);
        parcel.writeLong(this.ClientTimestamp);
        parcel.writeLong(this.ServerTimestamp);
        parcel.writeString(this.StudioProjectKey);
        parcel.writeString(this.DeviceName);
        parcel.writeInt(this.InstanceDataUploadInterval);
        parcel.writeInt(this.UpgradeMode);
        parcel.writeString(this.AppVersion);
    }
}
