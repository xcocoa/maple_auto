.class public Lcom/cyjh/http/bean/request/QueryRegCodeRequestInfo;
.super Lcom/cyjh/http/bean/request/BaseRequestValueInfo;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/http/bean/request/QueryRegCodeRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public OldRegCode:Ljava/lang/String;

.field public RegCode:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cyjh/http/bean/request/QueryRegCodeRequestInfo$1;

    invoke-direct {v0}, Lcom/cyjh/http/bean/request/QueryRegCodeRequestInfo$1;-><init>()V

    sput-object v0, Lcom/cyjh/http/bean/request/QueryRegCodeRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/http/bean/request/QueryRegCodeRequestInfo;->RegCode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/http/bean/request/QueryRegCodeRequestInfo;->OldRegCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/cyjh/http/bean/request/QueryRegCodeRequestInfo;->RegCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cyjh/http/bean/request/QueryRegCodeRequestInfo;->OldRegCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
