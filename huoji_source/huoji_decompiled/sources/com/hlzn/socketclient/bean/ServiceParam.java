package com.hlzn.socketclient.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class ServiceParam implements Parcelable {
    public static final Parcelable.Creator<ServiceParam> CREATOR = new OooO00o();
    public static final int FAILURE_CODE = -1;
    public static final int SUCCESS_CODE = 0;
    private String appId;
    private int cmdRenameDeviceNameCode;
    private String cmdRenameDeviceNameResult;
    private int cmdScreenCaptureCode;
    private String cmdScreenCaptureResult;
    private int cmdScriptSettingsCode;
    private String cmdScriptSettingsResult;
    private int cmdScriptStartCode;
    private String cmdScriptStartResult;
    private int cmdScriptStopCode;
    private String cmdScriptStopResult;
    private int cmdScriptUpgradeCode;
    private String cmdScriptUpgradeResult;
    private int cmdUnBindStudioProjectCode;
    private String cmdUnBindStudioProjectResult;
    private String deviceId;
    private String iMToken;
    private boolean isScriptRunning;
    private String scriptId;

    public class OooO00o implements Parcelable.Creator<ServiceParam> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public ServiceParam createFromParcel(Parcel parcel) {
            return new ServiceParam(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
        public ServiceParam[] newArray(int i) {
            return new ServiceParam[i];
        }
    }

    public ServiceParam() {
        this.cmdScriptStartCode = -1;
        this.cmdScriptStopCode = -1;
        this.cmdScriptUpgradeCode = -1;
        this.cmdScriptSettingsCode = -1;
        this.cmdScreenCaptureCode = -1;
        this.cmdUnBindStudioProjectCode = -1;
        this.cmdRenameDeviceNameCode = -1;
    }

    public ServiceParam(Parcel parcel) {
        this.cmdScriptStartCode = -1;
        this.cmdScriptStopCode = -1;
        this.cmdScriptUpgradeCode = -1;
        this.cmdScriptSettingsCode = -1;
        this.cmdScreenCaptureCode = -1;
        this.cmdUnBindStudioProjectCode = -1;
        this.cmdRenameDeviceNameCode = -1;
        this.appId = parcel.readString();
        this.scriptId = parcel.readString();
        this.deviceId = parcel.readString();
        this.iMToken = parcel.readString();
        this.isScriptRunning = parcel.readByte() != 0;
        this.cmdScriptStartCode = parcel.readInt();
        this.cmdScriptStartResult = parcel.readString();
        this.cmdScriptStopCode = parcel.readInt();
        this.cmdScriptStopResult = parcel.readString();
        this.cmdScriptUpgradeCode = parcel.readInt();
        this.cmdScriptUpgradeResult = parcel.readString();
        this.cmdScriptSettingsCode = parcel.readInt();
        this.cmdScriptSettingsResult = parcel.readString();
        this.cmdScreenCaptureCode = parcel.readInt();
        this.cmdScreenCaptureResult = parcel.readString();
        this.cmdUnBindStudioProjectCode = parcel.readInt();
        this.cmdUnBindStudioProjectResult = parcel.readString();
        this.cmdRenameDeviceNameCode = parcel.readInt();
        this.cmdRenameDeviceNameResult = parcel.readString();
    }

    public static Parcelable.Creator<ServiceParam> getCREATOR() {
        return CREATOR;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAppId() {
        return this.appId;
    }

    public int getCmdRenameDeviceNameCode() {
        return this.cmdRenameDeviceNameCode;
    }

    public String getCmdRenameDeviceNameResult() {
        return this.cmdRenameDeviceNameResult;
    }

    public int getCmdScreenCaptureCode() {
        return this.cmdScreenCaptureCode;
    }

    public String getCmdScreenCaptureResult() {
        return this.cmdScreenCaptureResult;
    }

    public int getCmdScriptSettingsCode() {
        return this.cmdScriptSettingsCode;
    }

    public String getCmdScriptSettingsResult() {
        return this.cmdScriptSettingsResult;
    }

    public int getCmdScriptStartCode() {
        return this.cmdScriptStartCode;
    }

    public String getCmdScriptStartResult() {
        return this.cmdScriptStartResult;
    }

    public int getCmdScriptStopCode() {
        return this.cmdScriptStopCode;
    }

    public String getCmdScriptStopResult() {
        return this.cmdScriptStopResult;
    }

    public int getCmdScriptUpgradeCode() {
        return this.cmdScriptUpgradeCode;
    }

    public String getCmdScriptUpgradeResult() {
        return this.cmdScriptUpgradeResult;
    }

    public int getCmdUnBindStudioProjectCode() {
        return this.cmdUnBindStudioProjectCode;
    }

    public String getCmdUnBindStudioProjectResult() {
        return this.cmdUnBindStudioProjectResult;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public String getScriptId() {
        return this.scriptId;
    }

    public String getiMToken() {
        return this.iMToken;
    }

    public boolean isScriptRunning() {
        return this.isScriptRunning;
    }

    public void setAppId(String str) {
        this.appId = str;
    }

    public void setCmdRenameDeviceNameCode(int i) {
        this.cmdRenameDeviceNameCode = i;
    }

    public void setCmdRenameDeviceNameResult(String str) {
        this.cmdRenameDeviceNameResult = str;
    }

    public void setCmdScreenCaptureCode(int i) {
        this.cmdScreenCaptureCode = i;
    }

    public void setCmdScreenCaptureResult(String str) {
        this.cmdScreenCaptureResult = str;
    }

    public void setCmdScriptSettingsCode(int i) {
        this.cmdScriptSettingsCode = i;
    }

    public void setCmdScriptSettingsResult(String str) {
        this.cmdScriptSettingsResult = str;
    }

    public void setCmdScriptStartCode(int i) {
        this.cmdScriptStartCode = i;
    }

    public void setCmdScriptStartResult(String str) {
        this.cmdScriptStartResult = str;
    }

    public void setCmdScriptStopCode(int i) {
        this.cmdScriptStopCode = i;
    }

    public void setCmdScriptStopResult(String str) {
        this.cmdScriptStopResult = str;
    }

    public void setCmdScriptUpgradeCode(int i) {
        this.cmdScriptUpgradeCode = i;
    }

    public void setCmdScriptUpgradeResult(String str) {
        this.cmdScriptUpgradeResult = str;
    }

    public void setCmdUnBindStudioProjectCode(int i) {
        this.cmdUnBindStudioProjectCode = i;
    }

    public void setCmdUnBindStudioProjectResult(String str) {
        this.cmdUnBindStudioProjectResult = str;
    }

    public void setDeviceId(String str) {
        this.deviceId = str;
    }

    public void setScriptId(String str) {
        this.scriptId = str;
    }

    public void setScriptRunning(boolean z) {
        this.isScriptRunning = z;
    }

    public void setiMToken(String str) {
        this.iMToken = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.appId);
        parcel.writeString(this.scriptId);
        parcel.writeString(this.deviceId);
        parcel.writeString(this.iMToken);
        parcel.writeByte(this.isScriptRunning ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.cmdScriptStartCode);
        parcel.writeString(this.cmdScriptStartResult);
        parcel.writeInt(this.cmdScriptStopCode);
        parcel.writeString(this.cmdScriptStopResult);
        parcel.writeInt(this.cmdScriptUpgradeCode);
        parcel.writeString(this.cmdScriptUpgradeResult);
        parcel.writeInt(this.cmdScriptSettingsCode);
        parcel.writeString(this.cmdScriptSettingsResult);
        parcel.writeInt(this.cmdScreenCaptureCode);
        parcel.writeString(this.cmdScreenCaptureResult);
        parcel.writeInt(this.cmdUnBindStudioProjectCode);
        parcel.writeString(this.cmdUnBindStudioProjectResult);
        parcel.writeInt(this.cmdRenameDeviceNameCode);
        parcel.writeString(this.cmdRenameDeviceNameResult);
    }
}
