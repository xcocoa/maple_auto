.class public Lcom/cyjh/http/bean/response/FengLingAdInfo$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/http/bean/response/FengLingAdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/cyjh/http/bean/response/FengLingAdInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/http/bean/response/FengLingAdInfo;
    .locals 1

    new-instance v0, Lcom/cyjh/http/bean/response/FengLingAdInfo;

    invoke-direct {v0, p1}, Lcom/cyjh/http/bean/response/FengLingAdInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cyjh/http/bean/response/FengLingAdInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/http/bean/response/FengLingAdInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/cyjh/http/bean/response/FengLingAdInfo;
    .locals 0

    new-array p1, p1, [Lcom/cyjh/http/bean/response/FengLingAdInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cyjh/http/bean/response/FengLingAdInfo$1;->newArray(I)[Lcom/cyjh/http/bean/response/FengLingAdInfo;

    move-result-object p1

    return-object p1
.end method
