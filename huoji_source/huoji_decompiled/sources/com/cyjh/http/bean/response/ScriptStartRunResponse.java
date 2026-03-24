package com.cyjh.http.bean.response;

import android.os.Parcel;
import android.os.Parcelable;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class ScriptStartRunResponse implements Parcelable {
    public static final Parcelable.Creator<ScriptStartRunResponse> CREATOR = new Parcelable.Creator<ScriptStartRunResponse>() { // from class: com.cyjh.http.bean.response.ScriptStartRunResponse.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScriptStartRunResponse createFromParcel(Parcel parcel) {
            return new ScriptStartRunResponse(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScriptStartRunResponse[] newArray(int i) {
            return new ScriptStartRunResponse[i];
        }
    };
    public static long sClientTime;
    public int Code;
    public ScriptStartRunInfo Data;
    public String Message;

    public ScriptStartRunResponse(Parcel parcel) {
        this.Code = parcel.readInt();
        this.Message = parcel.readString();
        this.Data = (ScriptStartRunInfo) parcel.readParcelable(ScriptStartRunInfo.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "ScriptStartRunResponse{Code=" + this.Code + ", Message='" + this.Message + "', Data=" + this.Data.toString() + MessageFormatter.DELIM_STOP;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.Code);
        parcel.writeString(this.Message);
        parcel.writeParcelable(this.Data, i);
    }
}
