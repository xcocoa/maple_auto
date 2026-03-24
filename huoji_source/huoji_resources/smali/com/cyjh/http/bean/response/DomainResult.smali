.class public Lcom/cyjh/http/bean/response/DomainResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/http/bean/response/DomainResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ApiDescKeys:[Ljava/lang/String;

.field private ApiVersionV:Ljava/lang/String;

.field private App2DomainName:Ljava/lang/String;

.field private App3DomainName:Ljava/lang/String;

.field private AppDomainName:Ljava/lang/String;

.field private AuthDescKeys:[Ljava/lang/String;

.field private PhoneConfig:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/http/bean/response/PhoneConfig;",
            ">;"
        }
    .end annotation
.end field

.field private RedFingerSwitch:I

.field public keys:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cyjh/http/bean/response/DomainResult$1;

    invoke-direct {v0}, Lcom/cyjh/http/bean/response/DomainResult$1;-><init>()V

    sput-object v0, Lcom/cyjh/http/bean/response/DomainResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/http/bean/response/DomainResult;->AppDomainName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/http/bean/response/DomainResult;->App2DomainName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/http/bean/response/DomainResult;->App3DomainName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/http/bean/response/DomainResult;->RedFingerSwitch:I

    sget-object v0, Lcom/cyjh/http/bean/response/PhoneConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/http/bean/response/DomainResult;->PhoneConfig:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/http/bean/response/DomainResult;->ApiVersionV:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/http/bean/response/DomainResult;->AuthDescKeys:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/http/bean/response/DomainResult;->ApiDescKeys:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getApiDescKeys()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cyjh/http/bean/response/DomainResult;->ApiDescKeys:[Ljava/lang/String;

    return-object v0
.end method

.method public getApiVersionV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cyjh/http/bean/response/DomainResult;->ApiVersionV:Ljava/lang/String;

    return-object v0
.end method

.method public getApp2DomainName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cyjh/http/bean/response/DomainResult;->App2DomainName:Ljava/lang/String;

    return-object v0
.end method

.method public getApp3DomainName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cyjh/http/bean/response/DomainResult;->App3DomainName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppDomainName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cyjh/http/bean/response/DomainResult;->AppDomainName:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthDescKeys()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cyjh/http/bean/response/DomainResult;->AuthDescKeys:[Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneConfig()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cyjh/http/bean/response/PhoneConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/http/bean/response/DomainResult;->PhoneConfig:Ljava/util/List;

    return-object v0
.end method

.method public getRedFingerSwitch()I
    .locals 1

    iget v0, p0, Lcom/cyjh/http/bean/response/DomainResult;->RedFingerSwitch:I

    return v0
.end method

.method public setApiDescKeys([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/http/bean/response/DomainResult;->ApiDescKeys:[Ljava/lang/String;

    return-void
.end method

.method public setApiVersionV(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/http/bean/response/DomainResult;->ApiVersionV:Ljava/lang/String;

    return-void
.end method

.method public setApp2DomainName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/http/bean/response/DomainResult;->App2DomainName:Ljava/lang/String;

    return-void
.end method

.method public setApp3DomainName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/http/bean/response/DomainResult;->App3DomainName:Ljava/lang/String;

    return-void
.end method

.method public setAppDomainName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/http/bean/response/DomainResult;->AppDomainName:Ljava/lang/String;

    return-void
.end method

.method public setAuthDescKeys([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/http/bean/response/DomainResult;->AuthDescKeys:[Ljava/lang/String;

    return-void
.end method

.method public setPhoneConfig(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cyjh/http/bean/response/PhoneConfig;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cyjh/http/bean/response/DomainResult;->PhoneConfig:Ljava/util/List;

    return-void
.end method

.method public setRedFingerSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/cyjh/http/bean/response/DomainResult;->RedFingerSwitch:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/cyjh/http/bean/response/DomainResult;->AppDomainName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cyjh/http/bean/response/DomainResult;->App2DomainName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cyjh/http/bean/response/DomainResult;->App3DomainName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/cyjh/http/bean/response/DomainResult;->RedFingerSwitch:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/cyjh/http/bean/response/DomainResult;->PhoneConfig:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/cyjh/http/bean/response/DomainResult;->ApiVersionV:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cyjh/http/bean/response/DomainResult;->AuthDescKeys:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cyjh/http/bean/response/DomainResult;->ApiDescKeys:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
