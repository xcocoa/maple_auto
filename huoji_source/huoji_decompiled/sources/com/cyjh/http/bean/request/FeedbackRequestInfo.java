package com.cyjh.http.bean.request;

import android.os.Parcel;
import android.os.Parcelable;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class FeedbackRequestInfo extends BaseRequestValueInfo implements Parcelable {
    public static final Parcelable.Creator<FeedbackRequestInfo> CREATOR = new Parcelable.Creator<FeedbackRequestInfo>() { // from class: com.cyjh.http.bean.request.FeedbackRequestInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FeedbackRequestInfo createFromParcel(Parcel parcel) {
            return new FeedbackRequestInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FeedbackRequestInfo[] newArray(int i) {
            return new FeedbackRequestInfo[i];
        }
    };
    public String AndoridVersion;
    public String Contact;
    public String Content;
    public String CoreVersion;
    public int DPI;
    public String DeviceModel;
    public String[] FreebackImages;
    public String Processor;
    public String RAM;
    public String Resolution;
    public int RootStatus;
    public String SerialNumber;
    public String SystemVersion;

    public FeedbackRequestInfo(Parcel parcel) {
        super(parcel);
        this.Contact = parcel.readString();
        this.Content = parcel.readString();
        this.FreebackImages = parcel.createStringArray();
        this.DeviceModel = parcel.readString();
        this.AndoridVersion = parcel.readString();
        this.RootStatus = parcel.readInt();
        this.Processor = parcel.readString();
        this.RAM = parcel.readString();
        this.CoreVersion = parcel.readString();
        this.SystemVersion = parcel.readString();
        this.SerialNumber = parcel.readString();
        this.DPI = parcel.readInt();
        this.Resolution = parcel.readString();
    }

    public FeedbackRequestInfo(BaseRequestValueInfo baseRequestValueInfo) {
        super(baseRequestValueInfo);
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo
    public String toString() {
        return "FeedbackRequestInfo{TemplateFileId=" + this.TemplateFileId + ", TemplateVersion='" + this.TemplateVersion + "', Contact='" + this.Contact + "', AppId=" + this.AppId + ", Content='" + this.Content + "', AppVersion='" + this.AppVersion + "', FreebackImages=" + this.FreebackImages + ", DeviceId='" + this.DeviceId + "', ClientTimestamp=" + this.ClientTimestamp + ", DeviceModel='" + this.DeviceModel + "', AndoridVersion='" + this.AndoridVersion + "', IsRedFinger=" + this.IsRedFinger + ", RootStatus=" + this.RootStatus + ", Processor='" + this.Processor + "', RAM='" + this.RAM + "', CoreVersion='" + this.CoreVersion + "', SystemVersion='" + this.SystemVersion + "', SerialNumber='" + this.SerialNumber + "', DPI=" + this.DPI + ", Resolution='" + this.Resolution + '\'' + MessageFormatter.DELIM_STOP;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.Contact);
        parcel.writeString(this.Content);
        parcel.writeStringArray(this.FreebackImages);
        parcel.writeString(this.DeviceModel);
        parcel.writeString(this.AndoridVersion);
        parcel.writeInt(this.RootStatus);
        parcel.writeString(this.Processor);
        parcel.writeString(this.RAM);
        parcel.writeString(this.CoreVersion);
        parcel.writeString(this.SystemVersion);
        parcel.writeString(this.SerialNumber);
        parcel.writeInt(this.DPI);
        parcel.writeString(this.Resolution);
    }
}
