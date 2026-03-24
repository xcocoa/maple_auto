package com.cyjh.http.bean.response;

import android.os.Parcel;
import android.os.Parcelable;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class ScriptStartRunInfo implements Parcelable {
    public static final Parcelable.Creator<ScriptStartRunInfo> CREATOR = new Parcelable.Creator<ScriptStartRunInfo>() { // from class: com.cyjh.http.bean.response.ScriptStartRunInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScriptStartRunInfo createFromParcel(Parcel parcel) {
            return new ScriptStartRunInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScriptStartRunInfo[] newArray(int i) {
            return new ScriptStartRunInfo[i];
        }
    };
    public long ClientTimestamp;
    public int DailyTryTimes;
    public String ExpireTime;
    public int OnceTryMinute;
    public String RunGuid;
    public String ScriptEncryptKey;
    public String SecKey;
    public long ServerTimestamp;

    public ScriptStartRunInfo(Parcel parcel) {
        this.ClientTimestamp = parcel.readLong();
        this.ServerTimestamp = parcel.readLong();
        this.DailyTryTimes = parcel.readInt();
        this.OnceTryMinute = parcel.readInt();
        this.ExpireTime = parcel.readString();
        this.RunGuid = parcel.readString();
        this.SecKey = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getSecKey() {
        return this.SecKey;
    }

    public void setSecKey(String str) {
        this.SecKey = str;
    }

    public String toString() {
        return "ScriptStartRunInfo{ClientTimestamp=" + this.ClientTimestamp + ", ServerTimestamp=" + this.ServerTimestamp + ", DailyTryTimes=" + this.DailyTryTimes + ", OnceTryMinute=" + this.OnceTryMinute + ", ExpireTime='" + this.ExpireTime + "', RunGuid='" + this.RunGuid + "', ScriptEncryptKey='" + this.ScriptEncryptKey + "', SecKey='" + this.SecKey + '\'' + MessageFormatter.DELIM_STOP;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.ClientTimestamp);
        parcel.writeLong(this.ServerTimestamp);
        parcel.writeInt(this.DailyTryTimes);
        parcel.writeInt(this.OnceTryMinute);
        parcel.writeString(this.ExpireTime);
        parcel.writeString(this.RunGuid);
        parcel.writeString(this.SecKey);
    }
}
