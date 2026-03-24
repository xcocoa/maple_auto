.class public Lcom/cyjh/http/bean/LocalApplication;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/http/bean/LocalApplication;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public applicationIcon:Landroid/graphics/drawable/Drawable;

.field public applicationName:Ljava/lang/String;

.field public applicationPackageName:Ljava/lang/String;

.field public applicationVersionName:Ljava/lang/String;

.field public initialLetter:Ljava/lang/String;

.field public isSelect:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cyjh/http/bean/LocalApplication$1;

    invoke-direct {v0}, Lcom/cyjh/http/bean/LocalApplication$1;-><init>()V

    sput-object v0, Lcom/cyjh/http/bean/LocalApplication;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/cyjh/http/bean/LocalApplication;->applicationName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/http/bean/LocalApplication;->applicationPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/http/bean/LocalApplication;->applicationVersionName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/cyjh/http/bean/LocalApplication;->isSelect:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/http/bean/LocalApplication;->initialLetter:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getApplicationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/cyjh/http/bean/LocalApplication;->applicationIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cyjh/http/bean/LocalApplication;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cyjh/http/bean/LocalApplication;->applicationPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationVersionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cyjh/http/bean/LocalApplication;->applicationVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getInitialLetter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cyjh/http/bean/LocalApplication;->initialLetter:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Lz2/ae;->Oooo00O(Lcom/cyjh/http/bean/LocalApplication;)V

    :cond_0
    iget-object v0, p0, Lcom/cyjh/http/bean/LocalApplication;->initialLetter:Ljava/lang/String;

    return-object v0
.end method

.method public isSelect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cyjh/http/bean/LocalApplication;->isSelect:Z

    return v0
.end method

.method public setApplicationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/http/bean/LocalApplication;->applicationIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/http/bean/LocalApplication;->applicationName:Ljava/lang/String;

    return-void
.end method

.method public setApplicationPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/http/bean/LocalApplication;->applicationPackageName:Ljava/lang/String;

    return-void
.end method

.method public setApplicationVersionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/http/bean/LocalApplication;->applicationVersionName:Ljava/lang/String;

    return-void
.end method

.method public setInitialLetter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/http/bean/LocalApplication;->initialLetter:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cyjh/http/bean/LocalApplication;->isSelect:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/cyjh/http/bean/LocalApplication;->applicationName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cyjh/http/bean/LocalApplication;->applicationPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cyjh/http/bean/LocalApplication;->applicationVersionName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/cyjh/http/bean/LocalApplication;->isSelect:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/cyjh/http/bean/LocalApplication;->initialLetter:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
