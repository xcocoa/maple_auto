.class public Lcom/cyjh/elfin/entity/GameSwitchInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/entity/GameSwitchInfo;
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
        "Lcom/cyjh/elfin/entity/GameSwitchInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/elfin/entity/GameSwitchInfo;
    .locals 4

    const-string v0, "\u06e4\u06da\u06d6\u06d7\u06e6\u06ec\u06e1\u06db\u06d8\u06d8\u06db\u06e1\u06d7\u06da\u06e7\u06e4\u06e7\u06d7\u06e4\u06e0\u06db\u06dc\u06d8\u06d9\u06db\u06da\u06e4\u06db\u06df\u06d7\u06d7\u06d8\u06e4\u06d8\u06e8\u06d8\u06d8\u06e1\u06e5\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x364

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xc4

    const/16 v2, 0x399

    const v3, -0x7ea54464

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06d9\u06d8\u06e7\u06e0\u06d7\u06ec\u06e6\u06e7\u06d8\u06db\u06ec\u06e0\u06e7\u06e1\u06db\u06d6\u06eb\u06d7\u06d7\u06d8\u06e2\u06d9\u06d9\u06d7\u06e5\u06ec\u06d6\u06d8\u06dc\u06e1\u06e7\u06da\u06da\u06e1\u06d8\u06e2\u06e7\u06db"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e5\u06eb\u06e7\u06e2\u06da\u06e6\u06d8\u06eb\u06e4\u06e1\u06d8\u06df\u06e5\u06d7\u06e1\u06eb\u06df\u06e0\u06d8\u06e2\u06e6\u06d7\u06e1\u06d8\u06d7\u06e5\u06d8\u06e2\u06ec\u06d9\u06d9\u06d7\u06d9"

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/cyjh/elfin/entity/GameSwitchInfo;

    invoke-direct {v0, p1}, Lcom/cyjh/elfin/entity/GameSwitchInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x71d64348 -> :sswitch_1
        0x6bc666 -> :sswitch_2
        0x496a725f -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    const-string v0, "\u06e2\u06da\u06d6\u06d8\u06e5\u06e0\u06db\u06e0\u06e5\u06d6\u06da\u06db\u06d8\u06d8\u06d9\u06e4\u06d9\u06e8\u06e2\u06d8\u06e1\u06e7\u06d7\u06e7\u06db\u06e8\u06e7\u06e0\u06dc\u06d8\u06d9\u06e4\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x11e

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xe4

    const/16 v2, 0xd4

    const v3, 0x4c88696e    # 7.1519088E7f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06d9\u06e8\u06ec\u06dc\u06dc\u06d7\u06da\u06d6\u06d8\u06db\u06d7\u06e1\u06e5\u06e2\u06d8\u06d8\u06df\u06df\u06db\u06eb\u06e1\u06e2\u06df\u06e5\u06e6\u06df\u06e8\u06df\u06e0\u06e6\u06e5\u06e0\u06e0\u06df\u06e8\u06d7\u06df\u06e4\u06e4\u06d6\u06df\u06e0\u06dc\u06d8\u06e4\u06e2\u06e1\u06d8\u06df\u06e0\u06e6"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e0\u06dc\u06df\u06dc\u06e8\u06dc\u06d8\u06ec\u06db\u06dc\u06e6\u06e7\u06e6\u06df\u06e1\u06e7\u06d8\u06e7\u06e5\u06d7\u06e8\u06e7\u06da\u06e1\u06e1\u06d9\u06e2\u06d8\u06e5\u06d8\u06dc\u06d7\u06d9\u06df\u06eb\u06d6\u06ec\u06e8\u06e7"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/entity/GameSwitchInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/elfin/entity/GameSwitchInfo;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5398840a -> :sswitch_0
        -0x52bfeeb -> :sswitch_2
        0x23c62ebb -> :sswitch_1
    .end sparse-switch
.end method

.method public newArray(I)[Lcom/cyjh/elfin/entity/GameSwitchInfo;
    .locals 4

    const-string v0, "\u06db\u06da\u06d6\u06d8\u06d7\u06e0\u06df\u06e1\u06dc\u06dc\u06d8\u06d8\u06da\u06e2\u06e4\u06ec\u06e1\u06e4\u06d7\u06dc\u06e7\u06e0\u06e2\u06d6\u06e7\u06ec\u06ec\u06e8\u06d8\u06d8\u06dc\u06df\u06d9\u06e4\u06e6\u06db\u06d9\u06e4\u06e5\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x171

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2a3

    const/16 v2, 0x1af

    const v3, -0x63c9f0f7

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06db\u06d7\u06e1\u06d7\u06d6\u06d8\u06eb\u06eb\u06df\u06d8\u06e8\u06d8\u06d8\u06db\u06e1\u06d6\u06d8\u06df\u06db\u06e8\u06e2\u06e2\u06e8\u06d6\u06e2\u06d6\u06d8\u06dc\u06e2\u06e7\u06d9\u06d6\u06eb\u06e6\u06da\u06e2\u06e2\u06d8\u06d8\u06e2\u06e4\u06d9\u06d8\u06ec\u06e4\u06d7\u06d8\u06d9\u06d7\u06e2\u06e1"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06df\u06da\u06e0\u06e2\u06d6\u06da\u06db\u06db\u06e2\u06db\u06d6\u06e1\u06db\u06eb\u06e6\u06d8\u06eb\u06ec\u06eb\u06db\u06e8\u06e1\u06db\u06e7\u06db\u06d9\u06e4\u06e8\u06d8\u06ec\u06e8\u06df\u06d8\u06e4\u06e1\u06d8\u06e2\u06e8\u06e8\u06d8"

    goto :goto_0

    :sswitch_2
    new-array v0, p1, [Lcom/cyjh/elfin/entity/GameSwitchInfo;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x273ade09 -> :sswitch_2
        -0x23465199 -> :sswitch_0
        0x523e08ee -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 4

    const-string v0, "\u06e0\u06e7\u06ec\u06d7\u06e4\u06e5\u06e0\u06d9\u06db\u06d6\u06e8\u06e8\u06e6\u06e2\u06d6\u06e2\u06e4\u06d8\u06db\u06e1\u06e7\u06da\u06dc\u06d8\u06d8\u06e1\u06e4\u06d6\u06d8\u06dc\u06dc\u06d8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x346

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x10e

    const/16 v2, 0x28b

    const v3, -0x5da993b4    # -2.905974E-18f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06db\u06df\u06e8\u06df\u06e8\u06d8\u06df\u06dc\u06e5\u06d8\u06e2\u06d6\u06e1\u06e6\u06e6\u06e5\u06d8\u06e6\u06db\u06d6\u06d8\u06d7\u06eb\u06e8\u06e1\u06ec\u06e5\u06e0\u06e8\u06e4\u06db\u06df\u06e1\u06d8\u06db\u06dc\u06dc\u06ec\u06da\u06ec\u06e7\u06e7\u06d6\u06e1\u06df\u06d8\u06d8\u06e6\u06e1\u06e6\u06e0\u06d7\u06e6\u06e1\u06e7\u06e6\u06e8\u06ec\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e8\u06d9\u06ec\u06e2\u06e7\u06dc\u06d9\u06eb\u06eb\u06e0\u06e7\u06e1\u06d8\u06d8\u06e2\u06e6\u06d8\u06dc\u06e6\u06e1\u06dc\u06d9\u06da\u06e8\u06d6\u06d8\u06ec\u06e1\u06e7\u06d8\u06e7\u06e7\u06eb"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/entity/GameSwitchInfo$1;->newArray(I)[Lcom/cyjh/elfin/entity/GameSwitchInfo;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2fc2c0b4 -> :sswitch_1
        -0x228c77c9 -> :sswitch_2
        0x52cdee8a -> :sswitch_0
    .end sparse-switch
.end method
