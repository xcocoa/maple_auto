package com.cyjh.http.bean.response;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class AppRelatedInfo implements Parcelable {
    public static final Parcelable.Creator<AppRelatedInfo> CREATOR = new Parcelable.Creator<AppRelatedInfo>() { // from class: com.cyjh.http.bean.response.AppRelatedInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppRelatedInfo createFromParcel(Parcel parcel) {
            return new AppRelatedInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppRelatedInfo[] newArray(int i) {
            return new AppRelatedInfo[i];
        }
    };
    public int Active;
    public List<BuyRegCodeConfigInfo> BuyRegCodeConfig;
    public int DailyTryTimes;
    public String FeedbackTips;
    public List<FlySettingInfo> FlySetting;
    public int OnceTryMinute;
    public List<RecommendSettingInfo> RecommendSetting;
    public String ScriptKey;
    public int UnbindDeductHours;

    public AppRelatedInfo() {
    }

    public AppRelatedInfo(Parcel parcel) {
        this.Active = parcel.readInt();
        this.DailyTryTimes = parcel.readInt();
        this.OnceTryMinute = parcel.readInt();
        this.FeedbackTips = parcel.readString();
        this.BuyRegCodeConfig = parcel.createTypedArrayList(BuyRegCodeConfigInfo.CREATOR);
        this.FlySetting = parcel.createTypedArrayList(FlySettingInfo.CREATOR);
        this.RecommendSetting = parcel.createTypedArrayList(RecommendSettingInfo.CREATOR);
        this.ScriptKey = parcel.readString();
        this.UnbindDeductHours = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "AppRelatedInfo{Active=" + this.Active + ", DailyTryTimes=" + this.DailyTryTimes + ", OnceTryMinute=" + this.OnceTryMinute + ", FeedbackTips='" + this.FeedbackTips + "', BuyRegCodeConfig=" + this.BuyRegCodeConfig + ", FlySetting=" + this.FlySetting + ", RecommendSetting=" + this.RecommendSetting + ", ScriptKey='" + this.ScriptKey + "', UnbindDeductHours=" + this.UnbindDeductHours + MessageFormatter.DELIM_STOP;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.Active);
        parcel.writeInt(this.DailyTryTimes);
        parcel.writeInt(this.OnceTryMinute);
        parcel.writeString(this.FeedbackTips);
        parcel.writeTypedList(this.BuyRegCodeConfig);
        parcel.writeTypedList(this.FlySetting);
        parcel.writeTypedList(this.RecommendSetting);
        parcel.writeString(this.ScriptKey);
        parcel.writeInt(this.UnbindDeductHours);
    }
}
