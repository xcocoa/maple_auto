package com.cyjh.http.bean.response;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class PhoneConfig implements Parcelable {
    public static final Parcelable.Creator<PhoneConfig> CREATOR = new Parcelable.Creator<PhoneConfig>() { // from class: com.cyjh.http.bean.response.PhoneConfig.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PhoneConfig createFromParcel(Parcel parcel) {
            return new PhoneConfig(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PhoneConfig[] newArray(int i) {
            return new PhoneConfig[i];
        }
    };
    private int Active;
    private int CloudPhoneType;
    private String DisableMsg;
    private String ImageUrl;
    private int JudgeMode;
    private String LinkUrl;
    private String Package;

    public PhoneConfig() {
    }

    public PhoneConfig(Parcel parcel) {
        this.Active = parcel.readInt();
        this.DisableMsg = parcel.readString();
        this.Package = parcel.readString();
        this.JudgeMode = parcel.readInt();
        this.CloudPhoneType = parcel.readInt();
        this.ImageUrl = parcel.readString();
        this.LinkUrl = parcel.readString();
    }

    public static Parcelable.Creator<PhoneConfig> getCREATOR() {
        return CREATOR;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getActive() {
        return this.Active;
    }

    public int getCloudPhoneType() {
        return this.CloudPhoneType;
    }

    public String getDisableMsg() {
        return this.DisableMsg;
    }

    public String getImageUrl() {
        return this.ImageUrl;
    }

    public int getJudgeMode() {
        return this.JudgeMode;
    }

    public String getLinkUrl() {
        return this.LinkUrl;
    }

    public String getPackage() {
        return this.Package;
    }

    public void setActive(int i) {
        this.Active = i;
    }

    public void setCloudPhoneType(int i) {
        this.CloudPhoneType = i;
    }

    public void setDisableMsg(String str) {
        this.DisableMsg = str;
    }

    public void setImageUrl(String str) {
        this.ImageUrl = str;
    }

    public void setJudgeMode(int i) {
        this.JudgeMode = i;
    }

    public void setLinkUrl(String str) {
        this.LinkUrl = str;
    }

    public void setPackage(String str) {
        this.Package = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.Active);
        parcel.writeString(this.DisableMsg);
        parcel.writeString(this.Package);
        parcel.writeInt(this.JudgeMode);
        parcel.writeInt(this.CloudPhoneType);
        parcel.writeString(this.ImageUrl);
        parcel.writeString(this.LinkUrl);
    }
}
