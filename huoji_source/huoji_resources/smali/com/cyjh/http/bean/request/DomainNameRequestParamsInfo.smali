.class public Lcom/cyjh/http/bean/request/DomainNameRequestParamsInfo;
.super Lcom/cyjh/http/bean/request/BaseRequestValueInfo;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/http/bean/request/DomainNameRequestParamsInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ANDROID_DEVICE:I

.field public DeviceType:I

.field public appVersionCode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cyjh/http/bean/request/DomainNameRequestParamsInfo$1;

    invoke-direct {v0}, Lcom/cyjh/http/bean/request/DomainNameRequestParamsInfo$1;-><init>()V

    sput-object v0, Lcom/cyjh/http/bean/request/DomainNameRequestParamsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/cyjh/http/bean/request/DomainNameRequestParamsInfo;->ANDROID_DEVICE:I

    iput v0, p0, Lcom/cyjh/http/bean/request/DomainNameRequestParamsInfo;->DeviceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/cyjh/http/bean/request/DomainNameRequestParamsInfo;->DeviceType:I

    return-void
.end method

.method public constructor <init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/cyjh/http/bean/request/DomainNameRequestParamsInfo;->ANDROID_DEVICE:I

    iput p1, p0, Lcom/cyjh/http/bean/request/DomainNameRequestParamsInfo;->DeviceType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceType()I
    .locals 1

    iget v0, p0, Lcom/cyjh/http/bean/request/DomainNameRequestParamsInfo;->DeviceType:I

    return v0
.end method

.method public setDeviceType(I)V
    .locals 0

    iput p1, p0, Lcom/cyjh/http/bean/request/DomainNameRequestParamsInfo;->DeviceType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DomainNameRequestParamsInfo{DeviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cyjh/http/bean/request/DomainNameRequestParamsInfo;->DeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", TemplateFileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;->TemplateFileId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", TemplateVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;->TemplateVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", AppId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;->AppId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", AppVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;->AppVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", DeviceId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;->DeviceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", ClientTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;->ClientTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/cyjh/http/bean/request/DomainNameRequestParamsInfo;->DeviceType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
