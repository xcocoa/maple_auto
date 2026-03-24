.class public Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elfin/ad/bean/response/FengLingAdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/elfin/ad/bean/response/FengLingAdInfo;",
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
.method public OooO00o(Landroid/os/Parcel;)Lcom/elfin/ad/bean/response/FengLingAdInfo;
    .locals 4

    const-string v0, "\u06ec\u06e8\u06e2\u06eb\u06e5\u06e7\u06e7\u06e2\u06db\u06d7\u06e5\u06d7\u06df\u06e4\u06e0\u06e7\u06e8\u06dc\u06dc\u06d8\u06e7\u06d8\u06e1\u06e8\u06e8\u06db\u06e2\u06df\u06db\u06d7\u06e8\u06da\u06e5\u06eb\u06df\u06d6\u06eb\u06e0\u06da\u06db\u06e2"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x152

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x9e

    const/16 v2, 0x338

    const v3, 0x64518d23

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06e6\u06e5\u06da\u06d9\u06e4\u06e4\u06d7\u06dc\u06d7\u06d9\u06e1\u06d8\u06df\u06e2\u06df\u06e2\u06e5\u06e6\u06d8\u06db\u06d9\u06e5\u06e4\u06e1\u06d6\u06eb\u06da\u06e8\u06dc\u06d6\u06db"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06db\u06e6\u06eb\u06eb\u06e5\u06d8\u06df\u06d6\u06e8\u06d8\u06d6\u06ec\u06e2\u06df\u06e1\u06e8\u06d8\u06e5\u06e0\u06dc\u06d8\u06d7\u06d6\u06d7\u06df\u06e4\u06d9\u06db\u06ec\u06e8\u06d8\u06e8\u06d8\u06d6\u06da\u06e1\u06e8\u06db\u06df\u06d6\u06d8\u06db\u06e4\u06eb\u06db\u06d9\u06e4\u06d8\u06e2\u06ec\u06e0\u06df\u06d7\u06ec\u06d6\u06e6\u06d8\u06db\u06d6\u06ec"

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;

    invoke-direct {v0, p1}, Lcom/elfin/ad/bean/response/FengLingAdInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x620c21c6 -> :sswitch_0
        -0x150e4d2d -> :sswitch_1
        0x2165205a -> :sswitch_2
    .end sparse-switch
.end method

.method public OooO0O0(I)[Lcom/elfin/ad/bean/response/FengLingAdInfo;
    .locals 4

    const-string v0, "\u06e5\u06e8\u06ec\u06e8\u06e0\u06d8\u06d8\u06dc\u06e8\u06e7\u06d6\u06d7\u06d7\u06e1\u06e7\u06dc\u06e6\u06e0\u06e8\u06d6\u06e2\u06e4\u06ec\u06e6\u06d8\u06da\u06e6\u06e1\u06d8\u06e8\u06ec\u06e8\u06d8\u06dc\u06ec\u06ec\u06e8\u06e4\u06d8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3a3

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x177

    const/16 v2, 0x23d

    const v3, -0xf69ecd4

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06da\u06e5\u06d8\u06d7\u06d6\u06d9\u06eb\u06eb\u06d6\u06d8\u06db\u06ec\u06d7\u06e0\u06e0\u06d6\u06e5\u06d8\u06dc\u06d8\u06db\u06e2\u06e6\u06d8\u06ec\u06d8\u06d9\u06e2\u06da\u06dc\u06d8\u06df\u06db\u06e1\u06e2\u06d9\u06e1\u06d8\u06da\u06e8\u06d8\u06e7\u06e8\u06e7\u06d8\u06d7\u06e8\u06dc\u06df\u06d6\u06e8\u06d8\u06e7\u06e1\u06d8\u06eb\u06db\u06e4\u06e2\u06e2\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06dc\u06e1\u06d6\u06d8\u06e7\u06dc\u06e7\u06d8\u06e7\u06e2\u06e0\u06e1\u06e2\u06dc\u06ec\u06e1\u06d9\u06e2\u06d9\u06e6\u06d8\u06e5\u06dc\u06df\u06e0\u06e8\u06dc\u06e4\u06dc\u06e7\u06d9\u06d8\u06eb"

    goto :goto_0

    :sswitch_2
    new-array v0, p1, [Lcom/elfin/ad/bean/response/FengLingAdInfo;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x66840198 -> :sswitch_1
        -0x448367e -> :sswitch_0
        0x2c602a16 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    const-string v0, "\u06eb\u06ec\u06db\u06eb\u06e0\u06da\u06d9\u06d6\u06d8\u06d8\u06e6\u06d9\u06ec\u06d8\u06dc\u06d8\u06d7\u06e5\u06e5\u06d8\u06db\u06e2\u06ec\u06e6\u06db\u06dc\u06d8\u06e5\u06e7\u06ec\u06db\u06d9\u06d9"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xff

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x96

    const/16 v2, 0x1d2

    const v3, 0x79c248c5

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06e0\u06e1\u06d9\u06e1\u06eb\u06d8\u06e8\u06e6\u06d8\u06d8\u06d6\u06d7\u06e4\u06d9\u06e6\u06da\u06e0\u06e1\u06e6\u06e8\u06da\u06e4\u06e5\u06e4\u06d6\u06d6\u06d8\u06e5\u06db\u06dc\u06d8\u06e6\u06da\u06e1\u06e1\u06e2\u06e6\u06d8\u06d6\u06e4\u06d6\u06d8\u06e5\u06e6\u06e7\u06d8\u06db\u06dc\u06eb\u06db\u06e8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e2\u06d7\u06e1\u06d8\u06d7\u06e2\u06d9\u06ec\u06dc\u06e0\u06d9\u06ec\u06d8\u06e1\u06eb\u06d6\u06e0\u06eb\u06e1\u06d8\u06df\u06e2\u06e8\u06d8\u06db\u06e2\u06e1\u06d8\u06d6\u06e5\u06d9\u06df\u06e7\u06e5\u06e4\u06dc\u06d8\u06e2\u06e4\u06d8\u06d7\u06e5\u06e6\u06d8\u06da\u06e0\u06e6\u06d8\u06d6\u06df\u06ec\u06df\u06e2\u06dc\u06d8\u06df\u06db\u06e5\u06d8\u06df\u06e0\u06e6"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO00o;->OooO00o(Landroid/os/Parcel;)Lcom/elfin/ad/bean/response/FengLingAdInfo;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x55e3ee51 -> :sswitch_1
        0x123b857d -> :sswitch_0
        0x2ab41103 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 4

    const-string v0, "\u06df\u06e8\u06d8\u06d8\u06d6\u06df\u06dc\u06e2\u06e2\u06df\u06db\u06e8\u06e1\u06d8\u06e4\u06ec\u06d6\u06ec\u06d6\u06e4\u06e8\u06ec\u06e6\u06d8\u06e8\u06e0\u06e7\u06d7\u06e2\u06da\u06d6\u06e7\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x230

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1e5

    const/16 v2, 0x235

    const v3, -0x5150f326

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06dc\u06e1\u06d6\u06d8\u06eb\u06eb\u06da\u06e6\u06dc\u06ec\u06dc\u06d8\u06db\u06e2\u06db\u06e0\u06d7\u06e6\u06db\u06e1\u06e1\u06d8\u06d6\u06dc\u06e4\u06da\u06d7\u06dc\u06d8\u06eb\u06e5\u06da\u06dc\u06da\u06df\u06ec\u06d7\u06db\u06e6\u06e2\u06d6\u06e8\u06d6\u06dc\u06d8\u06e8\u06e5\u06ec\u06d7\u06dc\u06da"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e0\u06e4\u06e8\u06d8\u06db\u06d8\u06e0\u06db\u06eb\u06e0\u06e0\u06e7\u06e6\u06d6\u06eb\u06d6\u06e4\u06e2\u06e0\u06df\u06da\u06e1\u06d7\u06dc\u06e2\u06eb\u06e2\u06e4\u06e0\u06e1\u06e6\u06d8\u06e0\u06ec\u06e2\u06e7\u06d6\u06e7\u06d8\u06d6\u06d8\u06e8\u06d9\u06e0\u06e8\u06d7\u06db\u06db\u06e1\u06e6\u06d8\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO00o;->OooO0O0(I)[Lcom/elfin/ad/bean/response/FengLingAdInfo;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x23bd07ef -> :sswitch_2
        0x289af2a3 -> :sswitch_1
        0x7b7fb302 -> :sswitch_0
    .end sparse-switch
.end method
