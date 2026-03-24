.class public Lcom/elfin/ad/bean/response/FengLingAdInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0O0;,
        Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0OO;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/elfin/ad/bean/response/FengLingAdInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionName:I

.field private adId:I

.field private adPlatformIcon:Ljava/lang/String;

.field private adPlatformId:I

.field private clickUrl:Ljava/lang/String;

.field private creativeType:I

.field private drawType:I

.field private height:I

.field private imgs:Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0O0;

.field private rating:I

.field private title:Ljava/lang/String;

.field private webTracks:Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0OO;

.field private width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "\u06d7\u06db\u06e1\u06e6\u06d9\u06db\u06e4\u06db\u06eb\u06db\u06df\u06e6\u06d8\u06e8\u06e4\u06e1\u06d8\u06e0\u06d7\u06e8\u06d8\u06d7\u06df\u06db\u06e5\u06da\u06da\u06e4\u06e1\u06df\u06ec\u06e5\u06e6\u06dc\u06e7\u06e6\u06d8\u06e0\u06da\u06e6\u06d8\u06e1\u06e4\u06da\u06e0\u06df\u06df\u06d6\u06e5\u06dc\u06d8\u06dc\u06d6\u06e1\u06d8\u06e8\u06e0\u06da\u06e7\u06d6\u06d6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x115

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1ab

    const/16 v2, 0x2a

    const v3, -0x5b26e15e

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance v0, Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO00o;

    invoke-direct {v0}, Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO00o;-><init>()V

    sput-object v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v0, "\u06d8\u06e8\u06dc\u06e8\u06db\u06e2\u06d6\u06e1\u06dc\u06e0\u06d7\u06dc\u06d8\u06df\u06dc\u06d8\u06e5\u06df\u06da\u06ec\u06dc\u06d8\u06dc\u06e0\u06e8\u06d7\u06d6\u06e7\u06d8\u06d6\u06e8\u06d7"

    goto :goto_0

    :sswitch_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x459f82a5 -> :sswitch_1
        0x5c8ed67f -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->creativeType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->drawType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->actionName:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->width:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->height:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->rating:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->adPlatformIcon:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->adId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->clickUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->adPlatformId:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    const-string v0, "\u06e6\u06db\u06d9\u06d7\u06e2\u06d7\u06d6\u06e8\u06d8\u06e2\u06e6\u06dc\u06d8\u06d7\u06e5\u06e8\u06dc\u06e8\u06e0\u06d7\u06e6\u06e8\u06d7\u06dc\u06d8\u06ec\u06e6\u06e1\u06d8\u06d9\u06e2\u06e1\u06d8\u06d8\u06d7\u06e1\u06d7\u06dc\u06d8\u06db\u06e8\u06d8\u06d6\u06e8\u06e7\u06e7\u06e1\u06e2\u06dc\u06d8\u06d8\u06e7\u06d7\u06eb\u06e2\u06e5\u06e2"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xf6

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x26a

    const/16 v2, 0x14b

    const v3, 0x28aeab5

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06d7\u06e1\u06d8\u06e4\u06d9\u06e6\u06e8\u06ec\u06db\u06da\u06d7\u06e8\u06d8\u06d6\u06e6\u06eb\u06df\u06e7\u06df\u06eb\u06dc\u06ec\u06eb\u06e2\u06e4\u06e7\u06d9\u06d6\u06da\u06d6\u06d8\u06d7\u06dc\u06d7\u06e2\u06d6\u06d7"

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0xb972cc -> :sswitch_0
        0x52408f0 -> :sswitch_1
    .end sparse-switch
.end method

.method public getActionName()I
    .locals 4

    const-string v0, "\u06e0\u06df\u06d8\u06d8\u06e2\u06d7\u06eb\u06da\u06e8\u06d6\u06d8\u06e1\u06e7\u06d8\u06d8\u06df\u06e1\u06da\u06dc\u06e2\u06eb\u06e1\u06e6\u06d8\u06d7\u06df\u06e1\u06d8\u06da\u06d6\u06ec\u06e7\u06e1\u06d8\u06e5\u06e7\u06e1\u06ec\u06dc\u06e1\u06d8\u06d6\u06e7\u06d8\u06d8\u06d6\u06eb\u06e5\u06d8\u06ec\u06e2\u06e2\u06e1\u06e8\u06e7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x88

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1b7

    const/16 v2, 0xe4

    const v3, 0x30f5c304

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06d6\u06e8\u06d8\u06e7\u06d7\u06ec\u06da\u06e6\u06e2\u06da\u06e6\u06da\u06d7\u06e6\u06d9\u06e8\u06e8\u06df\u06da\u06e0\u06d8\u06d8\u06e7\u06d9\u06e7\u06d9\u06db\u06d9\u06e8\u06e4\u06df\u06da\u06d9\u06e0\u06e0\u06e0\u06d6\u06d8\u06e5\u06e2\u06d6\u06eb\u06df\u06d9\u06e5\u06dc\u06d8\u06e2\u06e6\u06ec\u06db\u06ec\u06dc\u06d6\u06e1\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->actionName:I

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x23ca248e -> :sswitch_0
        -0x122dcede -> :sswitch_1
    .end sparse-switch
.end method

.method public getAdId()I
    .locals 4

    const-string v0, "\u06d7\u06e0\u06eb\u06e2\u06d6\u06d8\u06df\u06eb\u06d6\u06d8\u06da\u06ec\u06e8\u06d8\u06da\u06e2\u06eb\u06db\u06d9\u06da\u06eb\u06ec\u06dc\u06d8\u06ec\u06d6\u06e8\u06d8\u06df\u06e0\u06d7\u06e2\u06da\u06e4\u06eb\u06e2\u06e6\u06d8\u06da\u06ec\u06e8\u06d8\u06e0\u06dc\u06e6\u06d8\u06e4\u06dc\u06e5"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x32c

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x154

    const/16 v2, 0x122

    const v3, -0x5865a5a7

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06da\u06d6\u06d8\u06e2\u06e0\u06df\u06e4\u06e7\u06d9\u06e0\u06d6\u06e5\u06e5\u06d8\u06da\u06e8\u06e2\u06e8\u06d8\u06e5\u06e8\u06e6\u06d8\u06e0\u06ec\u06e1\u06e5\u06db\u06e2\u06e8\u06d6\u06d8\u06e1\u06e0\u06df\u06e6\u06e1\u06da\u06e1\u06d7\u06eb\u06d7\u06df\u06eb"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->adId:I

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x49167024 -> :sswitch_1
        0x6cdd4b5f -> :sswitch_0
    .end sparse-switch
.end method

.method public getAdPlatformIcon()Ljava/lang/String;
    .locals 4

    const-string v0, "\u06d8\u06e4\u06d8\u06da\u06e1\u06e4\u06df\u06d8\u06e5\u06da\u06d8\u06db\u06ec\u06e6\u06dc\u06d8\u06da\u06d8\u06e4\u06e1\u06eb\u06eb\u06d8\u06dc\u06e4\u06e2\u06ec\u06e6\u06d8\u06d6\u06e1\u06e1\u06d8\u06e8\u06d7\u06e4\u06d6\u06e1\u06e1\u06d8\u06da\u06eb\u06e4\u06e6\u06d9\u06db\u06e8\u06df\u06e5\u06d8\u06d6\u06df\u06e8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10f

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x14a

    const/16 v2, 0x25a

    const v3, -0x77fc375f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06df\u06d9\u06e5\u06e8\u06d8\u06d8\u06d7\u06d8\u06e6\u06ec\u06ec\u06d6\u06d8\u06dc\u06ec\u06e6\u06d8\u06d9\u06d8\u06d8\u06d7\u06e7\u06e0\u06e4\u06e6\u06e4\u06e7\u06da\u06eb\u06d7\u06e4\u06eb\u06e8\u06e6\u06db\u06e8\u06eb\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->adPlatformIcon:Ljava/lang/String;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x36240f54 -> :sswitch_1
        0x108bf48a -> :sswitch_0
    .end sparse-switch
.end method

.method public getAdPlatformId()I
    .locals 4

    const-string v0, "\u06dc\u06eb\u06e8\u06e7\u06db\u06e5\u06e2\u06d8\u06df\u06e1\u06e0\u06d7\u06d9\u06d9\u06d8\u06e6\u06e0\u06eb\u06dc\u06e2\u06d9\u06e2\u06e5\u06d8\u06e8\u06ec\u06df\u06eb\u06e4\u06df\u06e1\u06da\u06dc\u06e0\u06da\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x24f

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x243

    const/16 v2, 0x225

    const v3, -0x71575

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06e8\u06e0\u06da\u06df\u06e1\u06e7\u06e6\u06db\u06d6\u06e8\u06dc\u06df\u06e0\u06e2\u06e5\u06e5\u06eb\u06e5\u06db\u06e5\u06d6\u06e2\u06dc\u06e1\u06d9\u06dc\u06e0\u06e0\u06e0"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->adPlatformId:I

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x6f1dea74 -> :sswitch_1
        0x118734e0 -> :sswitch_0
    .end sparse-switch
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 4

    const-string v0, "\u06e7\u06df\u06e6\u06d9\u06d7\u06e0\u06e2\u06d7\u06df\u06d9\u06e6\u06e0\u06e5\u06da\u06d7\u06e7\u06df\u06db\u06da\u06ec\u06dc\u06e8\u06eb\u06e1\u06e0\u06e6\u06ec\u06e2\u06e6\u06d7\u06e7\u06ec\u06df\u06d7\u06e6\u06eb\u06e1\u06d6\u06e7\u06d8\u06dc\u06eb\u06d9\u06df\u06e2\u06e1\u06d7\u06e0\u06d9\u06dc\u06e6\u06da\u06df\u06db\u06e1"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x8b

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xe4

    const/16 v2, 0x295

    const v3, 0x74651c82

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06e8\u06e4\u06da\u06e7\u06db\u06da\u06e1\u06e7\u06d8\u06d8\u06e5\u06e7\u06e6\u06e1\u06e5\u06d8\u06ec\u06d9\u06da\u06e8\u06e8\u06db\u06e0\u06d6\u06e1\u06d8\u06d9\u06d6\u06ec\u06e4\u06e0\u06e8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->clickUrl:Ljava/lang/String;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x2a60447 -> :sswitch_1
        0x4fe8ae32 -> :sswitch_0
    .end sparse-switch
.end method

.method public getCreativeType()I
    .locals 4

    const-string v0, "\u06d7\u06ec\u06d6\u06d9\u06ec\u06d6\u06d7\u06d8\u06e5\u06d7\u06e6\u06df\u06ec\u06d7\u06d8\u06d6\u06d8\u06e1\u06e1\u06da\u06dc\u06e4\u06d7\u06eb\u06d7\u06d8\u06e8\u06d8\u06da\u06e6\u06d6\u06d7\u06e8\u06e5\u06d8\u06e0\u06e6\u06d8\u06e0\u06d8\u06dc\u06e1\u06e8\u06e5"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2b0

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x23e

    const/16 v2, 0x24c

    const v3, -0x6471e944

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06eb\u06db\u06d7\u06da\u06dc\u06e8\u06e1\u06e1\u06d8\u06e5\u06e7\u06d6\u06df\u06d6\u06e6\u06e0\u06d8\u06d8\u06e7\u06e6\u06d6\u06e6\u06e4\u06d9\u06d7\u06da\u06dc\u06d8\u06d8\u06eb\u06da\u06e4\u06d8\u06d8\u06e1\u06e4\u06dc\u06ec\u06df\u06d8\u06d8\u06db\u06e5\u06d8\u06d8\u06da\u06db\u06df\u06dc\u06da\u06e7"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->creativeType:I

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x6174b6f8 -> :sswitch_1
        0x2eb841a -> :sswitch_0
    .end sparse-switch
.end method

.method public getDrawType()I
    .locals 4

    const-string v0, "\u06d9\u06e1\u06e1\u06d8\u06e5\u06d8\u06e6\u06d8\u06e0\u06db\u06e7\u06d6\u06d8\u06e2\u06e2\u06dc\u06dc\u06e2\u06e0\u06e2\u06df\u06e1\u06d8\u06db\u06db\u06e6\u06d9\u06e1\u06df\u06e0\u06d7\u06d6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xa

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x235

    const/16 v2, 0xf1

    const v3, -0x4aee6aaa

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06e4\u06e0\u06d8\u06ec\u06e0\u06e5\u06e6\u06e0\u06e1\u06d6\u06eb\u06d6\u06d7\u06e6\u06d8\u06e6\u06e1\u06d9\u06da\u06d6\u06d9\u06e2\u06e1\u06d8\u06d7\u06d7\u06d6\u06dc\u06e7\u06dc"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->drawType:I

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x68b5a088 -> :sswitch_1
        -0x1da93036 -> :sswitch_0
    .end sparse-switch
.end method

.method public getHeight()I
    .locals 4

    const-string v0, "\u06e6\u06e7\u06e1\u06e7\u06d7\u06e5\u06d8\u06d9\u06e6\u06dc\u06d7\u06e5\u06da\u06d9\u06da\u06e6\u06d7\u06df\u06e8\u06e6\u06d9\u06e8\u06d8\u06db\u06dc\u06dc\u06d8\u06e0\u06e7\u06e1\u06db\u06d9\u06e4\u06e2\u06ec\u06d8\u06d8\u06e5\u06e2\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x345

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x217

    const/16 v2, 0x9e

    const v3, 0x5aa36425

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06db\u06df\u06d7\u06ec\u06d8\u06e0\u06d8\u06d6\u06ec\u06d9\u06dc\u06d8\u06d6\u06e8\u06df\u06ec\u06e1\u06e5\u06d8\u06d9\u06d8\u06dc\u06d8\u06d9\u06d9\u06d8\u06d8\u06d7\u06e2\u06dc\u06d8\u06e0\u06d9\u06e2\u06e8\u06e0\u06e6\u06d9\u06e5\u06e5\u06e4\u06e5\u06e2\u06e7\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->height:I

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x40e44e81 -> :sswitch_0
        0x293334cb -> :sswitch_1
    .end sparse-switch
.end method

.method public getImgs()Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0O0;
    .locals 4

    const-string v0, "\u06e5\u06e6\u06d6\u06d8\u06e8\u06e7\u06df\u06eb\u06df\u06ec\u06da\u06db\u06d9\u06e0\u06dc\u06d8\u06e4\u06d9\u06d8\u06eb\u06d8\u06e0\u06e7\u06df\u06e7\u06d9\u06d6\u06d6\u06d8\u06dc\u06da\u06d8\u06d7\u06d9\u06e4\u06e7\u06dc\u06e7\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2dc

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x75

    const/16 v2, 0x37c

    const v3, 0x3a9b60ca

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06da\u06e5\u06d9\u06ec\u06e5\u06dc\u06dc\u06e8\u06d8\u06da\u06db\u06e1\u06d8\u06d7\u06e6\u06e6\u06d8\u06d8\u06d9\u06dc\u06d8\u06e0\u06db\u06e8\u06d8\u06e0\u06e5\u06e7\u06d8\u06dc\u06da\u06e7\u06e0\u06e7\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->imgs:Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0O0;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x3052e9ce -> :sswitch_0
        -0x232f7352 -> :sswitch_1
    .end sparse-switch
.end method

.method public getRating()I
    .locals 4

    const-string v0, "\u06da\u06d9\u06e8\u06d8\u06e2\u06d8\u06e5\u06d8\u06e4\u06dc\u06d6\u06d8\u06e5\u06e8\u06d9\u06e2\u06df\u06e8\u06e5\u06d6\u06e1\u06d8\u06da\u06e0\u06ec\u06ec\u06d8\u06e5\u06d8\u06d9\u06d8\u06da\u06e5\u06e0\u06db\u06d9\u06e7\u06eb\u06d9\u06d7\u06e8\u06d9\u06e7\u06e5\u06df\u06db\u06dc\u06e2\u06df\u06e6\u06d8\u06d7\u06e1\u06e1\u06d8\u06d7\u06d7\u06e8\u06df\u06e8\u06e7\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2d6

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1a5

    const/16 v2, 0xf2

    const v3, -0xb12c324

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06dc\u06e7\u06d8\u06e5\u06d8\u06e6\u06d8\u06d9\u06d6\u06dc\u06e7\u06e0\u06e4\u06e2\u06e5\u06e1\u06d8\u06e2\u06e5\u06d8\u06e2\u06d9\u06d9\u06e8\u06da\u06e5\u06d8\u06e7\u06d9\u06e8\u06d8\u06e8\u06e7\u06d8"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->rating:I

    return v0

    :sswitch_data_0
    .sparse-switch
        0xe3d8172 -> :sswitch_1
        0x2cdfb65c -> :sswitch_0
    .end sparse-switch
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    const-string v0, "\u06e4\u06e2\u06e1\u06dc\u06d6\u06e7\u06e6\u06e2\u06da\u06eb\u06eb\u06d8\u06e7\u06e2\u06df\u06d6\u06da\u06d7\u06df\u06da\u06e5\u06d8\u06db\u06eb\u06d8\u06e0\u06d8\u06df\u06e0\u06e0\u06d8\u06d7\u06da\u06e1\u06d8\u06d8\u06e2\u06e1\u06d7\u06e1\u06ec\u06da\u06e2\u06dc\u06d8\u06e1\u06d9\u06e8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x396

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x164

    const/16 v2, 0x77

    const v3, 0x78a251bb

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06e5\u06da\u06e4\u06e8\u06e7\u06d8\u06dc\u06d7\u06d8\u06d8\u06e5\u06e7\u06e1\u06d8\u06df\u06da\u06e5\u06ec\u06e5\u06db\u06d6\u06d6\u06d7\u06da\u06d6\u06dc\u06e4\u06e0\u06e0\u06df\u06e8\u06e8\u06d8\u06e7\u06e1\u06d6\u06e4\u06d8\u06dc\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->title:Ljava/lang/String;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7b7301af -> :sswitch_0
        0x34845b2b -> :sswitch_1
    .end sparse-switch
.end method

.method public getWebTracks()Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0OO;
    .locals 4

    const-string v0, "\u06eb\u06e7\u06e5\u06d8\u06da\u06e2\u06e8\u06d8\u06e0\u06ec\u06da\u06e2\u06e4\u06d8\u06e4\u06e0\u06d8\u06dc\u06e6\u06e0\u06e4\u06df\u06dc\u06d8\u06d8\u06e4\u06db\u06e7\u06d8\u06eb\u06d8\u06eb\u06db\u06da\u06e7\u06da\u06dc\u06eb\u06ec\u06d9\u06ec\u06e0\u06e4\u06e0\u06d6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3ab

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x64

    const/16 v2, 0x1c8

    const v3, -0xd356d6

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06e5\u06d9\u06db\u06d6\u06d9\u06db\u06d8\u06d8\u06e6\u06dc\u06eb\u06eb\u06da\u06e7\u06e8\u06e5\u06e1\u06d8\u06e7\u06d8\u06e7\u06e8\u06eb\u06ec\u06eb\u06e7\u06d6\u06db\u06ec\u06eb\u06e8\u06d7\u06d6\u06d8\u06e1\u06d8\u06e1\u06d6\u06eb\u06d6\u06d8\u06df\u06e1\u06da\u06e4\u06df\u06db\u06e5\u06db\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->webTracks:Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0OO;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x10a51eca -> :sswitch_1
        0x59819fd7 -> :sswitch_0
    .end sparse-switch
.end method

.method public getWidth()I
    .locals 4

    const-string v0, "\u06e8\u06d9\u06e0\u06da\u06d7\u06d6\u06e7\u06eb\u06dc\u06dc\u06e7\u06e5\u06d8\u06e5\u06d6\u06d8\u06e2\u06d6\u06dc\u06d8\u06e5\u06e1\u06d8\u06e4\u06dc\u06e8\u06da\u06e0\u06e8\u06d8\u06d9\u06e2\u06e5\u06d8\u06e4\u06d9\u06dc\u06d8\u06e8\u06e0\u06e5\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x111

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1e6

    const/16 v2, 0x2e4

    const v3, -0x19a52136

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06db\u06e6\u06d8\u06d7\u06e4\u06e1\u06d8\u06d8\u06e4\u06d7\u06ec\u06e4\u06e1\u06d8\u06e4\u06d7\u06e8\u06e6\u06dc\u06eb\u06db\u06e7\u06d8\u06d8\u06e7\u06ec\u06e6\u06d8\u06da\u06dc\u06e0\u06dc\u06e4\u06ec\u06e2\u06e6\u06eb\u06eb\u06d7\u06e0\u06d8\u06d7\u06e5\u06d8\u06db\u06db\u06e5\u06e7\u06e8\u06d8\u06eb\u06db\u06eb"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->width:I

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x4f71600c -> :sswitch_0
        0x6d50c809 -> :sswitch_1
    .end sparse-switch
.end method

.method public setActionName(I)V
    .locals 4

    const-string v0, "\u06ec\u06e8\u06e5\u06d8\u06d6\u06e2\u06e1\u06d8\u06ec\u06d6\u06e7\u06e4\u06e8\u06e1\u06d8\u06e0\u06ec\u06e0\u06df\u06e0\u06d8\u06d8\u06e5\u06e4\u06da\u06d8\u06d9\u06dc\u06d8\u06e6\u06e7\u06d6\u06d8\u06d7\u06e0\u06e8\u06d7\u06df\u06d8\u06d8\u06d9\u06e4\u06dc\u06d8\u06e2\u06e0\u06df\u06d9\u06d9"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x16d

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x193

    const/16 v2, 0x397

    const v3, -0x550ff907

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06d8\u06df\u06e6\u06d8\u06e5\u06e4\u06e8\u06d9\u06da\u06db\u06df\u06e8\u06e0\u06e1\u06d7\u06d6\u06d6\u06d8\u06d7\u06e1\u06e7\u06e4\u06dc\u06da\u06db\u06e5\u06eb\u06d8\u06e0\u06e1\u06d8\u06df\u06eb\u06e0\u06eb\u06eb\u06e8\u06e6\u06db\u06db\u06ec\u06d9\u06eb\u06d9\u06e6\u06e6\u06d8\u06e7\u06e5"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e4\u06d9\u06e7\u06d6\u06e4\u06e1\u06d8\u06d9\u06e5\u06df\u06db\u06d6\u06e8\u06e5\u06d9\u06e6\u06e2\u06e5\u06e5\u06d7\u06d9\u06ec\u06e1\u06d9\u06e8\u06d8\u06e5\u06e1\u06d6\u06d8\u06dc\u06d6\u06e5"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->actionName:I

    const-string v0, "\u06ec\u06e6\u06e8\u06e1\u06db\u06e2\u06e7\u06da\u06e1\u06d8\u06e6\u06e0\u06e5\u06d7\u06e5\u06e5\u06db\u06d7\u06e8\u06d8\u06e5\u06ec\u06dc\u06d8\u06da\u06e0\u06e7\u06e8\u06e5\u06e1\u06d8\u06da\u06d7\u06d8\u06d8\u06e5\u06e1\u06d9\u06d8\u06d9\u06e0\u06e7\u06e4\u06e1\u06ec\u06db\u06e0\u06dc\u06e1\u06d8\u06d8\u06d7\u06dc\u06d8\u06db\u06e4\u06e0\u06db\u06ec\u06d6"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x435e978c -> :sswitch_1
        -0x28ca8ed1 -> :sswitch_0
        -0xca01a14 -> :sswitch_2
        0x347064aa -> :sswitch_3
    .end sparse-switch
.end method

.method public setAdId(I)V
    .locals 4

    const-string v0, "\u06e1\u06eb\u06e7\u06e8\u06e1\u06da\u06e2\u06e4\u06e1\u06e6\u06d8\u06d8\u06d8\u06e4\u06d8\u06e7\u06d8\u06e6\u06d8\u06e5\u06d8\u06ec\u06e1\u06e8\u06da\u06eb\u06e1\u06d8\u06eb\u06dc\u06e7\u06d8\u06e1\u06da\u06e1\u06d8\u06d6\u06e2\u06d6\u06eb\u06df\u06eb\u06e7\u06e6\u06e1\u06d8\u06e7\u06e1\u06d9\u06d6\u06eb\u06d6\u06d8\u06d8\u06ec\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xbd

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xb1

    const/16 v2, 0x25d

    const v3, -0x5209ee8b

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06e8\u06e7\u06e8\u06e8\u06d8\u06da\u06e5\u06e7\u06d8\u06eb\u06e2\u06e1\u06d9\u06db\u06e6\u06d9\u06d9\u06df\u06e0\u06db\u06d6\u06d8\u06e4\u06e1\u06d9\u06d8\u06db\u06e5\u06dc\u06d9\u06e8\u06d8\u06d6\u06da\u06e0\u06db\u06da\u06db"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e0\u06d6\u06d8\u06d8\u06dc\u06e5\u06e0\u06da\u06d8\u06e8\u06d8\u06d8\u06e8\u06d8\u06d8\u06d9\u06dc\u06e7\u06d8\u06e5\u06dc\u06da\u06dc\u06da\u06e2\u06e0\u06e8\u06e5\u06db\u06df\u06d9\u06e8\u06d8\u06d8\u06df\u06ec\u06e2\u06e0\u06dc\u06d7\u06d9\u06d9\u06e1\u06e0\u06db\u06e7\u06e2\u06db\u06da\u06da\u06d8\u06e4\u06e1\u06da\u06eb\u06dc\u06e7\u06e6"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->adId:I

    const-string v0, "\u06e1\u06e7\u06e1\u06d8\u06eb\u06df\u06d6\u06d8\u06d8\u06e6\u06d8\u06eb\u06e7\u06d7\u06e8\u06e2\u06e2\u06da\u06e5\u06dc\u06e1\u06d6\u06d9\u06e0\u06d8\u06d8\u06e1\u06db\u06da\u06dc\u06da\u06e8\u06d9\u06e7\u06d9\u06d9\u06d8\u06e8\u06d8\u06e5\u06e2\u06e2\u06d7\u06e5\u06d7\u06df\u06d8\u06d6\u06d8\u06d6\u06e8\u06e5\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6d44f39c -> :sswitch_1
        -0x58f5cd91 -> :sswitch_3
        -0x330eb4e1 -> :sswitch_2
        0x7363ac97 -> :sswitch_0
    .end sparse-switch
.end method

.method public setAdPlatformIcon(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u06dc\u06e6\u06df\u06d9\u06ec\u06d6\u06e4\u06e6\u06db\u06d8\u06d8\u06e5\u06e7\u06e6\u06d8\u06e5\u06df\u06da\u06dc\u06e6\u06e6\u06d8\u06d6\u06d8\u06df\u06d7\u06e6\u06d8\u06df\u06e0\u06d6\u06da\u06e1\u06da\u06d7\u06dc\u06da\u06dc\u06e7\u06db\u06dc\u06e7\u06d8\u06e7\u06e2\u06e1\u06d8\u06d7\u06da\u06dc\u06da\u06e8\u06e5\u06e7\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x26e

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x362

    const/16 v2, 0x80

    const v3, -0xa133273

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06e5\u06e8\u06d8\u06dc\u06e1\u06d6\u06d8\u06db\u06df\u06e2\u06ec\u06e7\u06eb\u06e2\u06e8\u06e1\u06da\u06e5\u06ec\u06e7\u06d6\u06d8\u06e6\u06e4\u06d7\u06ec\u06e5\u06e1\u06e5\u06d9\u06eb\u06e7\u06e8\u06d6\u06d8\u06e6\u06d6\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e2\u06e8\u06e1\u06e2\u06e5\u06e4\u06d9\u06e5\u06e5\u06e5\u06eb\u06da\u06e5\u06e5\u06e4\u06df\u06d7\u06dc\u06d8\u06d7\u06e4\u06d7\u06dc\u06d6\u06e8\u06d8\u06e5\u06e1\u06e4\u06e7\u06d7\u06d6\u06d9\u06e4\u06e8\u06d8\u06da\u06e7\u06d9\u06d8\u06e6\u06d8\u06d8\u06d8\u06d6\u06db\u06df\u06ec\u06db\u06e5\u06df\u06db\u06eb\u06d8\u06ec\u06e2\u06dc\u06e0"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->adPlatformIcon:Ljava/lang/String;

    const-string v0, "\u06e8\u06e1\u06e1\u06e4\u06e8\u06e5\u06df\u06e6\u06e7\u06d9\u06e1\u06da\u06d7\u06d7\u06e2\u06db\u06d8\u06e1\u06d8\u06d9\u06e5\u06dc\u06d8\u06d7\u06df\u06df\u06db\u06d6\u06e5\u06d8\u06e4\u06e5\u06dc\u06e1\u06d8\u06d8\u06ec\u06e8\u06d6\u06e5\u06ec\u06da\u06da\u06e1\u06d8\u06d6\u06ec\u06eb\u06e7\u06e7\u06e5"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x73a5ff4e -> :sswitch_2
        -0x627fa768 -> :sswitch_1
        -0x30fcb30f -> :sswitch_3
        0x695aa8ce -> :sswitch_0
    .end sparse-switch
.end method

.method public setAdPlatformId(I)V
    .locals 4

    const-string v0, "\u06d6\u06e2\u06e0\u06e0\u06e2\u06d8\u06eb\u06e7\u06dc\u06d8\u06d6\u06d6\u06e4\u06d7\u06eb\u06e0\u06db\u06e2\u06dc\u06d8\u06d7\u06e6\u06e8\u06e2\u06e7\u06e0\u06e8\u06e0\u06e6\u06d6\u06eb\u06e4\u06e0\u06d8\u06e8\u06d8\u06d9\u06e1\u06d8\u06d8\u06d7\u06e4\u06e4\u06d6\u06e6\u06e5\u06e6\u06d6\u06df\u06d9\u06e6\u06e0\u06d9\u06df\u06e1\u06d8\u06d8\u06ec\u06e7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x29

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x281

    const/16 v2, 0x1af

    const v3, -0x524e1612

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06da\u06df\u06e0\u06e5\u06e6\u06e6\u06ec\u06e1\u06d9\u06e2\u06e5\u06d8\u06d8\u06e2\u06dc\u06e6\u06d8\u06ec\u06df\u06d6\u06d8\u06ec\u06e0\u06d8\u06d8\u06e4\u06e2\u06e8\u06d8\u06e0\u06e7\u06e8\u06e0\u06e0\u06da\u06eb\u06d9\u06d7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06ec\u06e2\u06d6\u06d8\u06ec\u06d7\u06dc\u06d8\u06d8\u06d9\u06e4\u06df\u06e5\u06e6\u06d8\u06d7\u06e2\u06dc\u06da\u06e4\u06d6\u06e5\u06eb\u06eb\u06e7\u06db\u06e1\u06d8\u06e6\u06e2\u06da\u06e8\u06e1\u06da\u06e0\u06dc\u06e7\u06d8\u06e5\u06ec\u06d7\u06e0\u06e2\u06d9\u06e1\u06e7\u06d8\u06d8\u06e7\u06da\u06dc\u06e0\u06e5\u06da\u06d6\u06e5\u06d8\u06e6\u06da\u06e6"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->adPlatformId:I

    const-string v0, "\u06d6\u06d8\u06e7\u06d8\u06d7\u06d8\u06d8\u06eb\u06d7\u06e8\u06e5\u06d9\u06d6\u06d8\u06db\u06da\u06e2\u06d7\u06d6\u06d6\u06d8\u06e4\u06e6\u06e4\u06d8\u06da\u06d8\u06d8\u06e0\u06d6\u06d8\u06e2\u06eb\u06dc\u06da\u06db\u06d8\u06d8\u06eb\u06da\u06e5\u06e1\u06da\u06e1\u06d8\u06d7\u06da\u06e4"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x392f212e -> :sswitch_3
        0x579395e2 -> :sswitch_2
        0x76f2ed66 -> :sswitch_1
        0x78a94055 -> :sswitch_0
    .end sparse-switch
.end method

.method public setClickUrl(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u06e8\u06e6\u06d8\u06e2\u06d6\u06d8\u06db\u06eb\u06e5\u06d8\u06ec\u06e4\u06e0\u06e6\u06d8\u06df\u06e0\u06d7\u06e8\u06d8\u06e6\u06d7\u06e8\u06d8\u06d9\u06da\u06e1\u06d8\u06da\u06db\u06dc\u06eb\u06e7\u06d6\u06db\u06e6\u06d8\u06e1\u06dc\u06d7\u06da\u06eb\u06da\u06da\u06e7\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x354

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x141

    const/16 v2, 0x222

    const v3, -0x432f79b1

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06e6\u06da\u06dc\u06eb\u06ec\u06e7\u06ec\u06e8\u06d8\u06e4\u06e0\u06d8\u06e7\u06e8\u06e1\u06d8\u06dc\u06d6\u06ec\u06d6\u06ec\u06d8\u06db\u06e5\u06db\u06ec\u06da\u06da\u06e7\u06d8\u06e0\u06dc\u06e1\u06e4\u06d9\u06db\u06df\u06df\u06dc\u06da\u06e8\u06df\u06dc\u06d8\u06d8\u06dc\u06e5\u06d8\u06e5\u06ec\u06e4\u06ec\u06e8\u06e1\u06d8\u06e5\u06d8\u06e8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06da\u06dc\u06e2\u06e2\u06d8\u06d6\u06d8\u06e5\u06d9\u06dc\u06df\u06e5\u06e7\u06ec\u06e7\u06e1\u06d7\u06e2\u06da\u06e4\u06e0\u06e4\u06e8\u06dc\u06e5\u06d8\u06d6\u06e4\u06e2\u06ec\u06eb\u06da\u06d7\u06e2\u06e4\u06eb\u06dc\u06dc\u06d7\u06d7\u06da\u06e2\u06d6\u06d8\u06e7\u06dc\u06d9\u06d8\u06da\u06d9\u06d7\u06e1\u06d8\u06d8\u06d7\u06e0\u06ec"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->clickUrl:Ljava/lang/String;

    const-string v0, "\u06e7\u06d6\u06e7\u06d8\u06e7\u06e7\u06e1\u06d8\u06e1\u06da\u06e4\u06e6\u06d9\u06e2\u06d8\u06db\u06e1\u06ec\u06d6\u06e8\u06e0\u06e6\u06d8\u06e8\u06e5\u06e6\u06db\u06e8\u06eb\u06e8\u06e2\u06d8\u06d8\u06e5\u06d6\u06d8\u06e5\u06e1\u06e8\u06ec\u06eb\u06d8\u06e7\u06e0\u06e4"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x67249fc8 -> :sswitch_1
        -0x2d6e8158 -> :sswitch_0
        0x7a24c7e5 -> :sswitch_3
        0x7bffea76 -> :sswitch_2
    .end sparse-switch
.end method

.method public setCreativeType(I)V
    .locals 4

    const-string v0, "\u06e8\u06dc\u06e7\u06d7\u06e6\u06e7\u06eb\u06e8\u06d8\u06df\u06e8\u06e2\u06e6\u06ec\u06df\u06d6\u06eb\u06e8\u06e1\u06db\u06d6\u06d8\u06e0\u06ec\u06ec\u06d6\u06e6\u06e1\u06d7\u06d8\u06e6\u06df\u06d6\u06d8\u06d8\u06e5\u06e4\u06d6\u06ec\u06e1\u06d9\u06dc\u06d7\u06dc\u06e7\u06d8\u06e2\u06e8\u06d6\u06e5\u06df\u06df\u06d8\u06d7\u06e1"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x12b

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x12b

    const/16 v2, 0x28e

    const v3, 0x3135565f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06e6\u06d8\u06d8\u06e8\u06e4\u06e6\u06d8\u06e5\u06e1\u06dc\u06d8\u06ec\u06d8\u06db\u06e2\u06e0\u06da\u06d8\u06d9\u06d9\u06df\u06e5\u06d6\u06dc\u06e8\u06e8\u06d8\u06dc\u06da\u06ec\u06d8\u06da\u06e2\u06e4\u06da\u06db\u06e6\u06e6\u06d7\u06e6\u06e5\u06e8\u06d8\u06eb\u06e7\u06dc\u06ec\u06df\u06d6\u06d8\u06eb\u06e4\u06dc\u06e1\u06df\u06d6\u06eb\u06d6"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d8\u06e8\u06e7\u06d8\u06d7\u06e8\u06e0\u06df\u06da\u06ec\u06d7\u06e4\u06d7\u06e4\u06d7\u06ec\u06e5\u06e7\u06e4\u06e6\u06ec\u06d6\u06d7\u06d8\u06e5\u06dc\u06e8\u06e8\u06d8\u06e2\u06ec\u06d6\u06d8\u06eb\u06df\u06e7\u06db\u06e1\u06e0\u06e2\u06ec\u06d7\u06d8\u06e1\u06e0\u06e1\u06e4\u06e6\u06e8\u06e4\u06e7\u06df\u06e7\u06e5\u06d8\u06ec\u06e4\u06e1"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->creativeType:I

    const-string v0, "\u06d6\u06d9\u06e4\u06eb\u06e8\u06e8\u06d8\u06d9\u06df\u06ec\u06d6\u06e0\u06e6\u06d8\u06d7\u06eb\u06e7\u06e1\u06df\u06e1\u06eb\u06d7\u06e5\u06d8\u06ec\u06e4\u06e4\u06e2\u06e8\u06d8\u06d8\u06e8\u06d9\u06da"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x73960128 -> :sswitch_2
        0x1a78382b -> :sswitch_0
        0x73e9177c -> :sswitch_1
        0x7993fb4b -> :sswitch_3
    .end sparse-switch
.end method

.method public setDrawType(I)V
    .locals 4

    const-string v0, "\u06e2\u06e6\u06e1\u06d8\u06d9\u06e2\u06dc\u06d8\u06d9\u06d6\u06e1\u06e5\u06e5\u06d8\u06e1\u06e7\u06df\u06e1\u06eb\u06dc\u06d8\u06e2\u06e8\u06d8\u06e2\u06df\u06e1\u06e8\u06eb\u06e6\u06e7\u06e8\u06e2\u06e5\u06e2\u06da\u06db\u06d8\u06d8\u06e1\u06e7\u06e6\u06d8\u06e0\u06e4\u06dc\u06e8\u06e7\u06ec\u06e0\u06e7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x6d

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1f6

    const/16 v2, 0x24d

    const v3, -0x5305ac78

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06d7\u06da\u06ec\u06e0\u06da\u06e5\u06e0\u06e1\u06d8\u06d7\u06dc\u06e6\u06e4\u06e5\u06e1\u06ec\u06e2\u06dc\u06d8\u06e2\u06e7\u06e1\u06d6\u06db\u06e5\u06d8\u06e7\u06da\u06dc\u06d8\u06e8\u06d9\u06da\u06e8\u06d9\u06e8\u06eb\u06e5\u06d8\u06e5\u06d6\u06e8\u06d8\u06e6\u06df\u06e2\u06e6\u06e6\u06d8\u06d8\u06da\u06e0\u06dc\u06d8\u06ec\u06e7\u06dc\u06e1\u06eb\u06d9"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e2\u06e7\u06da\u06d7\u06d8\u06ec\u06e4\u06e2\u06dc\u06d8\u06db\u06e4\u06e5\u06d8\u06e0\u06e7\u06e7\u06dc\u06da\u06d8\u06df\u06e4\u06d8\u06e8\u06d9\u06d8\u06d7\u06d9\u06d6\u06e5\u06d8"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->drawType:I

    const-string v0, "\u06e6\u06df\u06da\u06df\u06e0\u06e0\u06e0\u06dc\u06d6\u06dc\u06e6\u06e2\u06e7\u06ec\u06d8\u06d8\u06e6\u06ec\u06d9\u06d7\u06e2\u06e1\u06d8\u06e0\u06d7\u06e6\u06d8\u06d8\u06e1\u06dc\u06e4\u06d7\u06e7\u06d8\u06e8\u06ec\u06e5\u06e5\u06e4"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7a7e430b -> :sswitch_1
        -0x4ec5b52d -> :sswitch_2
        -0x10dc9708 -> :sswitch_3
        0xc8957f3 -> :sswitch_0
    .end sparse-switch
.end method

.method public setHeight(I)V
    .locals 4

    const-string v0, "\u06da\u06d9\u06e6\u06d8\u06da\u06e6\u06e8\u06d8\u06d8\u06d6\u06d8\u06dc\u06dc\u06e8\u06d7\u06e6\u06ec\u06e6\u06e6\u06dc\u06d8\u06e4\u06da\u06e1\u06db\u06ec\u06da\u06df\u06e1\u06e0\u06e7\u06e7\u06e2\u06df\u06d8\u06d8\u06e5\u06e6\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x16e

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3dd

    const/16 v2, 0x399

    const v3, 0x75a1d3f5

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06d6\u06e6\u06d8\u06e6\u06ec\u06d6\u06d8\u06d8\u06ec\u06e4\u06e4\u06e6\u06dc\u06d8\u06dc\u06eb\u06e5\u06d8\u06db\u06db\u06eb\u06db\u06e5\u06df\u06e6\u06eb\u06d6\u06d8\u06d9\u06e0\u06d6\u06d8\u06e7\u06da\u06dc\u06d8\u06da\u06e8\u06dc\u06d8\u06eb\u06dc\u06e7\u06df\u06e1\u06da\u06e4\u06e4\u06e8\u06d8\u06df\u06e5\u06d7\u06df\u06d9\u06df\u06d8\u06e8\u06e7\u06d8\u06e6\u06d8\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06df\u06df\u06e6\u06d9\u06d6\u06e6\u06da\u06e6\u06e7\u06e1\u06e1\u06e5\u06ec\u06ec\u06e6\u06e2\u06e1\u06e4\u06db\u06e7\u06e8\u06d8\u06d8\u06d8\u06d6\u06d7\u06d6\u06da\u06e2\u06eb\u06e0\u06e6\u06dc\u06e1\u06d8\u06eb\u06e4\u06e1\u06da\u06e7\u06db\u06d8\u06d9\u06d6"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->height:I

    const-string v0, "\u06e4\u06df\u06df\u06e0\u06e2\u06e6\u06e0\u06e7\u06e0\u06d8\u06e4\u06e4\u06e1\u06e0\u06e8\u06d9\u06e1\u06dc\u06eb\u06e5\u06dc\u06e0\u06e0\u06dc\u06e5\u06e7\u06d8\u06da\u06e1\u06d9"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x48c48313 -> :sswitch_0
        -0x22a80fa7 -> :sswitch_1
        0x18acf47f -> :sswitch_3
        0x38366bc7 -> :sswitch_2
    .end sparse-switch
.end method

.method public setImgs(Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0O0;)V
    .locals 4

    const-string v0, "\u06e7\u06db\u06dc\u06d8\u06ec\u06d9\u06dc\u06d8\u06d6\u06e2\u06dc\u06e1\u06e6\u06e7\u06d8\u06ec\u06e5\u06db\u06e1\u06db\u06d7\u06e6\u06e2\u06da\u06e7\u06db\u06d8\u06d8\u06dc\u06d7\u06d8\u06d8\u06d9\u06dc\u06db\u06df\u06e0\u06e7\u06d7\u06df\u06d9\u06ec\u06e0\u06d7\u06d6\u06e8\u06e2"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2b4

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3ac

    const/16 v2, 0x3ae

    const v3, -0x5d4afc29

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06d8\u06e1\u06d8\u06d7\u06e0\u06d9\u06eb\u06d9\u06d6\u06d8\u06df\u06dc\u06dc\u06d8\u06df\u06dc\u06e7\u06df\u06e8\u06e2\u06db\u06e7\u06e6\u06e0\u06eb\u06db\u06e0\u06e8\u06e6\u06e4\u06e7\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d7\u06d9\u06df\u06eb\u06e6\u06e2\u06db\u06e7\u06d6\u06ec\u06e8\u06e6\u06d6\u06da\u06e4\u06da\u06e4\u06e2\u06e2\u06e5\u06e2\u06e7\u06e7\u06e6\u06d8\u06d6\u06e4\u06db\u06d9\u06da\u06dc\u06d8\u06db\u06e2\u06e6\u06eb\u06ec\u06e5\u06d8"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->imgs:Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0O0;

    const-string v0, "\u06e7\u06e5\u06d9\u06df\u06ec\u06d6\u06d8\u06e8\u06d9\u06e1\u06dc\u06e5\u06e8\u06d8\u06e5\u06e1\u06e8\u06d8\u06e5\u06ec\u06eb\u06df\u06da\u06e1\u06d8\u06d7\u06db\u06e6\u06db\u06ec\u06ec\u06ec\u06d9\u06e7\u06d9\u06d7\u06e2\u06eb\u06da\u06e1\u06e5\u06e5\u06e7\u06e0\u06d6\u06e0\u06d9\u06e6\u06d8\u06e1\u06d6\u06eb"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x27fd42ed -> :sswitch_3
        0x637f12a -> :sswitch_0
        0x42d624d9 -> :sswitch_2
        0x4a16f2d8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setRating(I)V
    .locals 4

    const-string v0, "\u06d7\u06e8\u06e8\u06d6\u06db\u06e1\u06df\u06d9\u06e7\u06d6\u06e7\u06da\u06e1\u06d7\u06e8\u06e6\u06d6\u06e5\u06e1\u06e6\u06da\u06e4\u06d8\u06e0\u06e6\u06e4\u06e6\u06e7\u06e1\u06d8\u06e4\u06df\u06e7\u06e1\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x154

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xa9

    const/16 v2, 0x377

    const v3, 0x1b8d08d5

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06d8\u06d6\u06d8\u06e1\u06df\u06e5\u06d8\u06df\u06da\u06e4\u06e6\u06db\u06e1\u06d8\u06d8\u06d7\u06e8\u06e0\u06e5\u06d8\u06d7\u06e7\u06dc\u06e1\u06ec\u06db\u06e8\u06da\u06ec\u06e8\u06e4\u06dc\u06df\u06e8\u06df\u06d6\u06e1\u06dc"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e2\u06dc\u06e4\u06d8\u06d8\u06e6\u06da\u06eb\u06e0\u06da\u06e7\u06d6\u06e5\u06db\u06db\u06d8\u06d8\u06d8\u06e4\u06e7\u06e1\u06d8\u06e7\u06d8\u06d7\u06e5\u06d6\u06e0\u06d9\u06dc\u06ec\u06d7\u06d6\u06e7\u06d8\u06d6\u06e7\u06e0\u06d7\u06d8\u06e0\u06d8\u06dc\u06e5\u06d9\u06e7\u06d6\u06e7\u06d9\u06da\u06da\u06d8\u06d7\u06ec\u06eb\u06da"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->rating:I

    const-string v0, "\u06d9\u06df\u06e5\u06d8\u06da\u06d9\u06e0\u06d6\u06e4\u06dc\u06d8\u06dc\u06e6\u06e1\u06d8\u06df\u06eb\u06eb\u06e7\u06e6\u06e7\u06d8\u06e5\u06e4\u06e7\u06da\u06db\u06db\u06e7\u06e4\u06e8\u06da\u06d7\u06e6\u06d8\u06e7\u06d7\u06e5\u06d8\u06e7\u06d8\u06df"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7512427c -> :sswitch_1
        -0x5cf6d187 -> :sswitch_2
        -0x33596f57 -> :sswitch_0
        0x5227e080 -> :sswitch_3
    .end sparse-switch
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u06d6\u06e8\u06e8\u06d8\u06dc\u06d8\u06e7\u06d8\u06e8\u06d8\u06e0\u06e4\u06da\u06e4\u06db\u06e4\u06e0\u06e6\u06df\u06e4\u06dc\u06e5\u06eb\u06e6\u06e8\u06e6\u06d8\u06eb\u06e2\u06d8\u06df\u06e6\u06e8\u06db\u06e5\u06da\u06dc\u06d9\u06e8\u06d6\u06d8\u06d8\u06e8\u06dc\u06e0\u06dc\u06d8\u06d9\u06ec\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3de

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xff

    const/16 v2, 0x3d1

    const v3, 0x30674793

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06d9\u06e2\u06d6\u06e8\u06d9\u06e1\u06d7\u06d8\u06db\u06e0\u06d6\u06d8\u06df\u06e4\u06e5\u06d8\u06e2\u06e7\u06ec\u06e7\u06e2\u06e4\u06d6\u06e0\u06db\u06e0\u06db\u06e5\u06eb\u06e1\u06e6\u06da\u06dc\u06d8\u06d8\u06dc\u06df\u06e8\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06ec\u06e2\u06e6\u06e2\u06da\u06e7\u06eb\u06da\u06d6\u06d8\u06db\u06d6\u06d8\u06d8\u06d7\u06e6\u06e0\u06db\u06ec\u06e5\u06d8\u06df\u06d8\u06e8\u06e5\u06eb\u06e7\u06d9\u06ec\u06d8\u06d8\u06d6\u06d6\u06d8\u06d8\u06e4\u06db\u06e8\u06d8\u06d9\u06e5\u06d8\u06df\u06d6\u06d8\u06d8\u06e8\u06db\u06d7"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->title:Ljava/lang/String;

    const-string v0, "\u06eb\u06da\u06e5\u06e0\u06e2\u06eb\u06dc\u06eb\u06e4\u06e2\u06e0\u06e6\u06d8\u06d6\u06e6\u06e5\u06eb\u06e8\u06e6\u06d8\u06ec\u06e1\u06d8\u06d8\u06e4\u06eb\u06e5\u06d8\u06e4\u06da\u06e8\u06d8\u06e8\u06e5\u06e6\u06d9\u06df\u06e6\u06df\u06eb\u06dc\u06d8\u06d6\u06d8\u06e7\u06d8\u06d8\u06e7\u06d9\u06e0\u06e6\u06e7\u06d8\u06d6\u06eb\u06dc\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7a224906 -> :sswitch_3
        -0x78257d40 -> :sswitch_1
        -0x44aa39ac -> :sswitch_2
        -0x258ce73a -> :sswitch_0
    .end sparse-switch
.end method

.method public setWebTracks(Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0OO;)V
    .locals 4

    const-string v0, "\u06e1\u06d7\u06da\u06dc\u06e4\u06e5\u06e1\u06dc\u06e7\u06d7\u06e8\u06d9\u06eb\u06d6\u06dc\u06d7\u06da\u06d9\u06d7\u06e1\u06e8\u06e0\u06d7\u06d6\u06e2\u06df\u06e5\u06d8\u06db\u06d7\u06ec\u06d7\u06e4\u06dc\u06d8\u06e1\u06d7\u06df\u06e2\u06e1\u06db\u06df\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x371

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x203

    const/16 v2, 0x315

    const v3, 0x478e5254

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06e6\u06e2\u06e2\u06d6\u06df\u06e7\u06e0\u06d7\u06e4\u06e2\u06e7\u06e7\u06e2\u06dc\u06df\u06df\u06db\u06d6\u06d6\u06d9\u06eb\u06ec\u06eb\u06e6\u06d9\u06d6\u06d8\u06d8\u06e5\u06db\u06dc\u06df\u06eb\u06da\u06e6\u06e4\u06df\u06ec\u06e8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d8\u06e6\u06eb\u06d8\u06e8\u06ec\u06dc\u06db\u06d6\u06d8\u06e7\u06dc\u06dc\u06d8\u06d6\u06e6\u06e5\u06d8\u06ec\u06ec\u06e8\u06d8\u06d7\u06d6\u06eb\u06d9\u06eb\u06e1\u06d8\u06e5\u06ec\u06e8\u06d8\u06d9\u06d7\u06e1\u06da\u06db\u06e2\u06e5\u06e4\u06da\u06e5\u06dc\u06d9\u06dc\u06d6\u06d8\u06e0\u06ec\u06df\u06d6\u06e0\u06e8\u06d8\u06e8\u06e0\u06e7\u06d6\u06e6\u06e6\u06d8"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->webTracks:Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0OO;

    const-string v0, "\u06da\u06e2\u06e1\u06d8\u06eb\u06e5\u06d9\u06e4\u06e8\u06d8\u06d8\u06e2\u06e0\u06ec\u06e4\u06df\u06e0\u06e8\u06e6\u06d8\u06db\u06d8\u06d7\u06ec\u06e1\u06e1\u06d8\u06e0\u06dc\u06d8\u06d8\u06eb\u06e1\u06e7"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4bf94bc3 -> :sswitch_3
        -0x448c353a -> :sswitch_2
        0x3c959406 -> :sswitch_0
        0x58195ff8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setWidth(I)V
    .locals 4

    const-string v0, "\u06e7\u06eb\u06da\u06e2\u06d6\u06d7\u06d9\u06e2\u06e8\u06d8\u06da\u06e1\u06e4\u06dc\u06dc\u06dc\u06e1\u06df\u06d8\u06e4\u06eb\u06d8\u06e1\u06db\u06e0\u06d7\u06eb\u06db\u06e0\u06ec\u06e1"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x165

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x45

    const/16 v2, 0x19d

    const v3, 0x523a9db5

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06e8\u06df\u06e5\u06eb\u06d6\u06df\u06e0\u06eb\u06e4\u06df\u06e7\u06d8\u06eb\u06d7\u06e6\u06db\u06d7\u06dc\u06e4\u06e1\u06e5\u06e1\u06e1\u06d6\u06da\u06e7\u06da\u06e4"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e7\u06e7\u06d8\u06dc\u06db\u06e4\u06e6\u06e0\u06ec\u06e6\u06e0\u06d9\u06d6\u06d8\u06d8\u06d8\u06db\u06e5\u06d8\u06d8\u06e6\u06e0\u06e6\u06d6\u06e0\u06df\u06da\u06da\u06e6\u06da\u06df\u06dc\u06e7\u06d6\u06d8\u06e6\u06df\u06e7\u06e2\u06e2\u06df\u06e5\u06d8\u06d8\u06e7\u06df\u06dc\u06e8\u06ec"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->width:I

    const-string v0, "\u06dc\u06e2\u06df\u06e4\u06e2\u06db\u06e0\u06e1\u06d8\u06e6\u06e8\u06d8\u06df\u06e6\u06e5\u06d8\u06e6\u06df\u06e1\u06d8\u06d7\u06d8\u06e1\u06d8\u06ec\u06e5\u06da\u06e2\u06df\u06e8\u06d9\u06df\u06eb\u06e4\u06dc\u06dc\u06d8\u06e2\u06ec\u06e2\u06d9\u06e1\u06ec\u06d7\u06e8\u06dc\u06eb\u06e2\u06e7\u06d9\u06e1\u06e2"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3ba73079 -> :sswitch_1
        -0x396fedb0 -> :sswitch_0
        -0x1927bf69 -> :sswitch_3
        0x47490555 -> :sswitch_2
    .end sparse-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string v0, "\u06eb\u06e0\u06e4\u06da\u06e0\u06e2\u06ec\u06e6\u06d6\u06e5\u06ec\u06e7\u06e1\u06e7\u06e2\u06e0\u06d7\u06e2\u06d9\u06e5\u06e2\u06d8\u06db\u06ec\u06dc\u06e8\u06d8\u06e2\u06d8\u06e2"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x9a

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x25a

    const/16 v2, 0x155

    const v3, -0x4b3a43ad

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06e4\u06eb\u06e2\u06d7\u06e5\u06d8\u06e4\u06d7\u06e8\u06e2\u06eb\u06e8\u06e7\u06e1\u06e2\u06e5\u06df\u06e8\u06d8\u06e1\u06e0\u06d9\u06e5\u06e8\u06e0\u06e7\u06ec\u06e7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e6\u06d7\u06e8\u06d8\u06dc\u06e1\u06e1\u06e1\u06e8\u06d7\u06e0\u06e8\u06e6\u06d8\u06e7\u06db\u06e1\u06d8\u06e8\u06eb\u06e5\u06d7\u06e0\u06e1\u06d8\u06df\u06e2\u06dc\u06d8\u06eb\u06e4\u06e0\u06e5\u06db\u06da\u06e2\u06e0\u06eb\u06db\u06eb\u06d9\u06e0\u06e1\u06e0\u06dc\u06e2\u06e4\u06e7\u06d6\u06da\u06eb\u06db\u06dc\u06d8"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06dc\u06e2\u06d8\u06eb\u06e6\u06e2\u06d8\u06d6\u06e5\u06d8\u06d7\u06dc\u06e0\u06da\u06d6\u06e7\u06d8\u06df\u06eb\u06e8\u06d8\u06db\u06db\u06e2\u06d8\u06d8\u06d8\u06db\u06d6\u06e1\u06d8\u06e8\u06d7\u06e8\u06d8"

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->creativeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const-string v0, "\u06e2\u06ec\u06e5\u06d8\u06df\u06e2\u06e8\u06d8\u06e1\u06e0\u06e4\u06e7\u06dc\u06e2\u06eb\u06ec\u06e4\u06e8\u06e6\u06df\u06d8\u06e1\u06e6\u06d8\u06e4\u06ec\u06e5\u06e0\u06db\u06d7\u06da\u06eb\u06db\u06e4\u06dc\u06ec\u06d9\u06e0\u06e1\u06eb\u06dc\u06dc\u06d8\u06dc\u06da\u06e2\u06e0\u06e7\u06d8\u06d8\u06e4\u06e4\u06ec\u06da\u06d6\u06e2"

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->drawType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const-string v0, "\u06d8\u06eb\u06d9\u06db\u06e6\u06e4\u06da\u06e4\u06db\u06e0\u06e0\u06db\u06e7\u06e4\u06e7\u06df\u06e7\u06da\u06dc\u06dc\u06db\u06d8\u06e8\u06e8\u06d8\u06e7\u06e7\u06e7\u06db\u06d8\u06e1\u06eb\u06e2\u06e8\u06d8\u06e1\u06dc\u06d8"

    goto :goto_0

    :sswitch_5
    iget v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->actionName:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const-string v0, "\u06d7\u06e5\u06d9\u06eb\u06dc\u06da\u06e6\u06d7\u06d9\u06df\u06ec\u06dc\u06e7\u06e1\u06dc\u06dc\u06df\u06e6\u06d8\u06e0\u06d9\u06d7\u06e7\u06d6\u06e4\u06e4\u06dc\u06d8\u06e5\u06e0\u06db\u06ec\u06e6\u06d8\u06df\u06ec\u06ec\u06ec\u06d6\u06e1\u06e8\u06e8\u06d8\u06d8\u06dc\u06e6\u06d7\u06df\u06e4\u06df\u06e4\u06d6\u06d8\u06e7\u06dc\u06dc"

    goto :goto_0

    :sswitch_6
    iget v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const-string v0, "\u06d8\u06d6\u06d6\u06d8\u06e4\u06dc\u06d9\u06eb\u06e5\u06eb\u06dc\u06dc\u06e4\u06e8\u06d8\u06e0\u06db\u06d8\u06d8\u06dc\u06da\u06e0\u06eb\u06e2\u06df\u06d7\u06db\u06e1\u06d8\u06dc\u06dc\u06e7\u06d8\u06e4\u06e2\u06e1\u06d8\u06d7\u06d9\u06da\u06e7\u06e1\u06e8\u06d9\u06e8\u06e8\u06d6\u06d7\u06e0\u06dc\u06da"

    goto :goto_0

    :sswitch_7
    iget v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const-string v0, "\u06e6\u06df\u06db\u06e8\u06d7\u06d9\u06da\u06da\u06e0\u06da\u06e0\u06d8\u06d8\u06eb\u06e1\u06d8\u06d7\u06d8\u06e1\u06d8\u06d7\u06d8\u06e1\u06d8\u06e6\u06d9\u06e8\u06e2\u06e8\u06db\u06e2\u06e1\u06df\u06eb\u06e5\u06d7\u06d6\u06e8\u06d8\u06d6\u06da\u06d6\u06e1\u06e1\u06dc\u06da\u06e6\u06d6\u06e7\u06e0\u06d9"

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "\u06e0\u06db\u06dc\u06e8\u06e8\u06e1\u06e2\u06df\u06d9\u06d8\u06e6\u06da\u06e0\u06e4\u06e8\u06e5\u06db\u06dc\u06d8\u06ec\u06dc\u06e4\u06df\u06e5\u06d7\u06da\u06e2\u06e5\u06dc\u06dc\u06e8\u06d8\u06d8\u06e6\u06e2\u06e0\u06d9\u06e4\u06da\u06da\u06e1\u06e7\u06e4\u06db"

    goto :goto_0

    :sswitch_9
    iget v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->rating:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const-string v0, "\u06e6\u06e8\u06dc\u06d8\u06e0\u06db\u06d7\u06db\u06d9\u06e0\u06d7\u06db\u06d8\u06d8\u06e5\u06e8\u06e0\u06e7\u06d7\u06ec\u06d8\u06e6\u06e5\u06d8\u06d8\u06e1\u06da\u06da\u06d7\u06e8\u06e6\u06e7\u06d8\u06eb\u06e7\u06d8\u06d8\u06ec\u06d6\u06da\u06db\u06e0\u06e6\u06d6\u06e5\u06e6\u06e1\u06e1\u06e5\u06da\u06e5\u06e5\u06d6\u06df\u06e2\u06d6\u06ec\u06e0"

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->adPlatformIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "\u06e5\u06e5\u06e6\u06eb\u06ec\u06e8\u06e4\u06ec\u06e7\u06dc\u06dc\u06e4\u06e7\u06e2\u06e6\u06d8\u06d6\u06e4\u06ec\u06df\u06db\u06e0\u06d8\u06e8\u06d8\u06e5\u06e5\u06ec\u06e0\u06d9\u06e8\u06e6\u06e5\u06df\u06e5\u06e1\u06e5\u06da\u06e0\u06d8\u06d8\u06eb\u06e8\u06dc"

    goto :goto_0

    :sswitch_b
    iget v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->adId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const-string v0, "\u06ec\u06d8\u06e7\u06d8\u06e6\u06d6\u06df\u06e6\u06e2\u06d8\u06d7\u06d9\u06e5\u06d8\u06eb\u06da\u06e2\u06d7\u06db\u06d6\u06d8\u06e6\u06e8\u06e7\u06d8\u06e2\u06e6\u06e7\u06ec\u06e8\u06e8\u06d6\u06e2\u06eb\u06e4\u06d7\u06e4\u06e6\u06ec\u06e8\u06db\u06e2\u06d8\u06e4\u06df\u06d9\u06e0\u06e2\u06eb\u06dc\u06ec\u06e7\u06dc\u06e1\u06eb\u06d8\u06df"

    goto :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->clickUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "\u06eb\u06e7\u06db\u06e0\u06d6\u06e7\u06d8\u06e2\u06d6\u06df\u06d7\u06dc\u06e5\u06d8\u06e0\u06da\u06e6\u06d8\u06df\u06d6\u06e7\u06e2\u06eb\u06e7\u06e6\u06d8\u06d7\u06e8\u06e6\u06e5\u06ec\u06df\u06e2\u06e7\u06dc\u06db\u06e6\u06d9\u06e6\u06d8\u06dc\u06e0\u06eb\u06e1\u06e2\u06e1\u06e6\u06e8\u06d8\u06eb\u06e0\u06e1\u06db\u06e1\u06d9\u06e7\u06e5\u06d7"

    goto :goto_0

    :sswitch_d
    iget v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->adPlatformId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const-string v0, "\u06d7\u06e4\u06e8\u06eb\u06dc\u06da\u06d6\u06db\u06eb\u06e7\u06d7\u06ec\u06e8\u06d8\u06e8\u06e5\u06e0\u06dc\u06df\u06e0\u06d8\u06d8\u06e1\u06d8\u06d8\u06d8\u06df\u06ec\u06e1\u06e5\u06d9\u06eb\u06e7\u06dc\u06d8\u06db\u06e0\u06d6\u06e1\u06df\u06dc\u06d6\u06d7\u06dc"

    goto :goto_0

    :sswitch_e
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6d02e2c2 -> :sswitch_2
        -0x5fe61fe8 -> :sswitch_9
        -0x4866e9c3 -> :sswitch_6
        -0x32cc1fa2 -> :sswitch_4
        -0x118e876b -> :sswitch_0
        -0x5a2f9e6 -> :sswitch_1
        0x335d63ac -> :sswitch_d
        0x33faed73 -> :sswitch_8
        0x391e47b5 -> :sswitch_e
        0x39db5a43 -> :sswitch_3
        0x3b7e6278 -> :sswitch_b
        0x3f70bd05 -> :sswitch_5
        0x40f4593e -> :sswitch_c
        0x4bc7049d -> :sswitch_a
        0x4cd65386 -> :sswitch_7
    .end sparse-switch
.end method
