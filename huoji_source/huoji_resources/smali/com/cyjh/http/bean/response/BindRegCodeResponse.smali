.class public Lcom/cyjh/http/bean/response/BindRegCodeResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/http/bean/response/BindRegCodeResponse$RegCodeTimeInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/http/bean/response/BindRegCodeResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Code:I

.field public Data:Lcom/cyjh/http/bean/response/BindRegCodeResponse$RegCodeTimeInfo;

.field public Message:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cyjh/http/bean/response/BindRegCodeResponse$1;

    invoke-direct {v0}, Lcom/cyjh/http/bean/response/BindRegCodeResponse$1;-><init>()V

    sput-object v0, Lcom/cyjh/http/bean/response/BindRegCodeResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/http/bean/response/BindRegCodeResponse;->Code:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/http/bean/response/BindRegCodeResponse;->Message:Ljava/lang/String;

    const-class v0, Lcom/cyjh/http/bean/response/BindRegCodeResponse$RegCodeTimeInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/response/BindRegCodeResponse$RegCodeTimeInfo;

    iput-object p1, p0, Lcom/cyjh/http/bean/response/BindRegCodeResponse;->Data:Lcom/cyjh/http/bean/response/BindRegCodeResponse$RegCodeTimeInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/cyjh/http/bean/response/BindRegCodeResponse;->Code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/cyjh/http/bean/response/BindRegCodeResponse;->Message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/http/bean/response/BindRegCodeResponse;->Data:Lcom/cyjh/http/bean/response/BindRegCodeResponse$RegCodeTimeInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
