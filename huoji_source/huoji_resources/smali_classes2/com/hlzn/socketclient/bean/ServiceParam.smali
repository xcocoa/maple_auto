.class public Lcom/hlzn/socketclient/bean/ServiceParam;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hlzn/socketclient/bean/ServiceParam;",
            ">;"
        }
    .end annotation
.end field

.field public static final FAILURE_CODE:I = -0x1

.field public static final SUCCESS_CODE:I


# instance fields
.field private appId:Ljava/lang/String;

.field private cmdRenameDeviceNameCode:I

.field private cmdRenameDeviceNameResult:Ljava/lang/String;

.field private cmdScreenCaptureCode:I

.field private cmdScreenCaptureResult:Ljava/lang/String;

.field private cmdScriptSettingsCode:I

.field private cmdScriptSettingsResult:Ljava/lang/String;

.field private cmdScriptStartCode:I

.field private cmdScriptStartResult:Ljava/lang/String;

.field private cmdScriptStopCode:I

.field private cmdScriptStopResult:Ljava/lang/String;

.field private cmdScriptUpgradeCode:I

.field private cmdScriptUpgradeResult:Ljava/lang/String;

.field private cmdUnBindStudioProjectCode:I

.field private cmdUnBindStudioProjectResult:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private iMToken:Ljava/lang/String;

.field private isScriptRunning:Z

.field private scriptId:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hlzn/socketclient/bean/ServiceParam$OooO00o;

    invoke-direct {v0}, Lcom/hlzn/socketclient/bean/ServiceParam$OooO00o;-><init>()V

    sput-object v0, Lcom/hlzn/socketclient/bean/ServiceParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptStartCode:I

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptStopCode:I

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptUpgradeCode:I

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptSettingsCode:I

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScreenCaptureCode:I

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdUnBindStudioProjectCode:I

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdRenameDeviceNameCode:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptStartCode:I

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptStopCode:I

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptUpgradeCode:I

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptSettingsCode:I

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScreenCaptureCode:I

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdUnBindStudioProjectCode:I

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdRenameDeviceNameCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->appId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->scriptId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->deviceId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->iMToken:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->isScriptRunning:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptStartCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptStartResult:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptStopCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptStopResult:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptUpgradeCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptUpgradeResult:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptSettingsCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptSettingsResult:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScreenCaptureCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScreenCaptureResult:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdUnBindStudioProjectCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdUnBindStudioProjectResult:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdRenameDeviceNameCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdRenameDeviceNameResult:Ljava/lang/String;

    return-void
.end method

.method public static getCREATOR()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hlzn/socketclient/bean/ServiceParam;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/bean/ServiceParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getCmdRenameDeviceNameCode()I
    .locals 1

    iget v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdRenameDeviceNameCode:I

    return v0
.end method

.method public getCmdRenameDeviceNameResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdRenameDeviceNameResult:Ljava/lang/String;

    return-object v0
.end method

.method public getCmdScreenCaptureCode()I
    .locals 1

    iget v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScreenCaptureCode:I

    return v0
.end method

.method public getCmdScreenCaptureResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScreenCaptureResult:Ljava/lang/String;

    return-object v0
.end method

.method public getCmdScriptSettingsCode()I
    .locals 1

    iget v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptSettingsCode:I

    return v0
.end method

.method public getCmdScriptSettingsResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptSettingsResult:Ljava/lang/String;

    return-object v0
.end method

.method public getCmdScriptStartCode()I
    .locals 1

    iget v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptStartCode:I

    return v0
.end method

.method public getCmdScriptStartResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptStartResult:Ljava/lang/String;

    return-object v0
.end method

.method public getCmdScriptStopCode()I
    .locals 1

    iget v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptStopCode:I

    return v0
.end method

.method public getCmdScriptStopResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptStopResult:Ljava/lang/String;

    return-object v0
.end method

.method public getCmdScriptUpgradeCode()I
    .locals 1

    iget v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptUpgradeCode:I

    return v0
.end method

.method public getCmdScriptUpgradeResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptUpgradeResult:Ljava/lang/String;

    return-object v0
.end method

.method public getCmdUnBindStudioProjectCode()I
    .locals 1

    iget v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdUnBindStudioProjectCode:I

    return v0
.end method

.method public getCmdUnBindStudioProjectResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdUnBindStudioProjectResult:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getScriptId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->scriptId:Ljava/lang/String;

    return-object v0
.end method

.method public getiMToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->iMToken:Ljava/lang/String;

    return-object v0
.end method

.method public isScriptRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->isScriptRunning:Z

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->appId:Ljava/lang/String;

    return-void
.end method

.method public setCmdRenameDeviceNameCode(I)V
    .locals 0

    iput p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdRenameDeviceNameCode:I

    return-void
.end method

.method public setCmdRenameDeviceNameResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdRenameDeviceNameResult:Ljava/lang/String;

    return-void
.end method

.method public setCmdScreenCaptureCode(I)V
    .locals 0

    iput p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScreenCaptureCode:I

    return-void
.end method

.method public setCmdScreenCaptureResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScreenCaptureResult:Ljava/lang/String;

    return-void
.end method

.method public setCmdScriptSettingsCode(I)V
    .locals 0

    iput p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptSettingsCode:I

    return-void
.end method

.method public setCmdScriptSettingsResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptSettingsResult:Ljava/lang/String;

    return-void
.end method

.method public setCmdScriptStartCode(I)V
    .locals 0

    iput p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptStartCode:I

    return-void
.end method

.method public setCmdScriptStartResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptStartResult:Ljava/lang/String;

    return-void
.end method

.method public setCmdScriptStopCode(I)V
    .locals 0

    iput p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptStopCode:I

    return-void
.end method

.method public setCmdScriptStopResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptStopResult:Ljava/lang/String;

    return-void
.end method

.method public setCmdScriptUpgradeCode(I)V
    .locals 0

    iput p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptUpgradeCode:I

    return-void
.end method

.method public setCmdScriptUpgradeResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptUpgradeResult:Ljava/lang/String;

    return-void
.end method

.method public setCmdUnBindStudioProjectCode(I)V
    .locals 0

    iput p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdUnBindStudioProjectCode:I

    return-void
.end method

.method public setCmdUnBindStudioProjectResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdUnBindStudioProjectResult:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setScriptId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->scriptId:Ljava/lang/String;

    return-void
.end method

.method public setScriptRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->isScriptRunning:Z

    return-void
.end method

.method public setiMToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->iMToken:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->appId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->scriptId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->iMToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->isScriptRunning:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptStartCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptStartResult:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptStopCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptStopResult:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptUpgradeCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptUpgradeResult:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptSettingsCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScriptSettingsResult:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScreenCaptureCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdScreenCaptureResult:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdUnBindStudioProjectCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdUnBindStudioProjectResult:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdRenameDeviceNameCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->cmdRenameDeviceNameResult:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
