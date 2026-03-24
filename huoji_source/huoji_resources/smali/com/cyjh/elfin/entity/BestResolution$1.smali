.class public Lcom/cyjh/elfin/entity/BestResolution$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/entity/BestResolution;
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
        "Lcom/cyjh/elfin/entity/BestResolution;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/elfin/entity/BestResolution;
    .locals 4

    const-string v0, "\u06db\u06e7\u06e6\u06d8\u06db\u06eb\u06ec\u06e6\u06d8\u06e5\u06d8\u06e4\u06eb\u06dc\u06d8\u06d8\u06d9\u06e0\u06e4\u06e4\u06eb\u06e1\u06df\u06dc\u06d8\u06df\u06e4\u06dc\u06dc\u06e8\u06d9\u06da\u06e1"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x328

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x19d

    const/16 v2, 0x33f

    const v3, -0x7391e37d

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06e7\u06e5\u06ec\u06e4\u06e8\u06d8\u06df\u06dc\u06e2\u06e1\u06eb\u06d6\u06d8\u06ec\u06e4\u06e5\u06d8\u06d9\u06da\u06e0\u06e1\u06e7\u06df\u06d9\u06df\u06e2\u06e8\u06e7\u06d7\u06e2\u06d7\u06df\u06eb\u06db\u06e4\u06d9\u06e0\u06d8\u06d9\u06da\u06e8\u06d8\u06e1\u06da\u06df"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e8\u06e4\u06d7\u06ec\u06d7\u06da\u06d8\u06d6\u06d6\u06d8\u06ec\u06e5\u06e4\u06eb\u06d7\u06e1\u06db\u06e6\u06e0\u06eb\u06e2\u06ec\u06d9\u06da\u06e8\u06d8\u06e8\u06eb\u06d6\u06d8\u06e0\u06eb\u06dc\u06d9\u06d8\u06e7\u06df\u06da\u06e4\u06d7\u06d8\u06e8\u06e0\u06e6\u06e4\u06df\u06e0\u06d7\u06e6\u06da\u06da"

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/cyjh/elfin/entity/BestResolution;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/cyjh/elfin/entity/BestResolution;-><init>(II)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x3d2bfca0 -> :sswitch_0
        -0x151baa74 -> :sswitch_2
        0x346ee4cd -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    const-string v0, "\u06e2\u06e5\u06da\u06e6\u06e0\u06d9\u06e6\u06e8\u06e5\u06d8\u06db\u06eb\u06e5\u06d8\u06e0\u06da\u06ec\u06d6\u06e5\u06e6\u06d8\u06db\u06d7\u06e5\u06da\u06e2\u06dc\u06eb\u06d7\u06da\u06eb\u06d8\u06db\u06e7\u06e5\u06db\u06d6\u06eb\u06e6\u06e7\u06e8\u06e7\u06d8\u06e4\u06d6\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x68

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x282

    const/16 v2, 0xaa

    const v3, 0x509b5529

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06e0\u06da\u06d9\u06d7\u06d7\u06e6\u06e2\u06e4\u06da\u06e0\u06e2\u06e1\u06ec\u06ec\u06da\u06eb\u06e1\u06e2\u06eb\u06d8\u06e5\u06e6\u06db\u06d9\u06d9\u06d8\u06d8\u06da\u06e6\u06e1\u06d8\u06e4\u06db\u06ec\u06e2\u06e4\u06d8\u06db\u06da\u06d8\u06d8\u06e7\u06e2\u06df\u06d8\u06e4\u06eb\u06d7\u06e7\u06e1\u06d8\u06e1\u06d7\u06e1\u06e5\u06dc\u06d7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e1\u06e4\u06e6\u06d8\u06e2\u06d6\u06e8\u06d8\u06d9\u06db\u06ec\u06d8\u06dc\u06dc\u06e7\u06d8\u06d6\u06d8\u06e7\u06d8\u06e8\u06e4\u06da\u06e0\u06eb\u06e5\u06e7\u06e0\u06d6\u06db\u06e8\u06dc\u06e6\u06d8\u06d6\u06dc\u06d6\u06d8\u06eb\u06da\u06ec\u06e1\u06e2\u06e4\u06ec\u06e0\u06d8\u06d8\u06ec\u06da\u06da\u06e8\u06e8\u06df\u06d7\u06dc\u06da\u06dc\u06e4\u06d7"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/entity/BestResolution$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/elfin/entity/BestResolution;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x250862f3 -> :sswitch_2
        0x41771eaf -> :sswitch_0
        0x712fcd38 -> :sswitch_1
    .end sparse-switch
.end method

.method public newArray(I)[Lcom/cyjh/elfin/entity/BestResolution;
    .locals 4

    const-string v0, "\u06d8\u06e5\u06d8\u06d8\u06e7\u06e7\u06ec\u06e0\u06e6\u06e5\u06da\u06d6\u06eb\u06e8\u06e0\u06e2\u06e5\u06e8\u06df\u06df\u06e1\u06dc\u06d8\u06e5\u06e2\u06ec\u06e6\u06d9\u06e4\u06e8\u06da\u06d7\u06db\u06e8\u06e1\u06df\u06e1\u06db\u06eb\u06d6\u06e2\u06e2\u06e2\u06e7\u06e7\u06d6\u06db\u06eb\u06ec\u06e5\u06e0\u06db\u06e8\u06e5\u06e5\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x39d

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x22e

    const/16 v2, 0x2fa

    const v3, 0x2ee086f1

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06e2\u06e6\u06d8\u06e1\u06ec\u06df\u06e5\u06e6\u06d6\u06d8\u06e7\u06e5\u06e5\u06d8\u06ec\u06d9\u06d6\u06e7\u06e8\u06e5\u06d8\u06e6\u06e2\u06e2\u06d7\u06e2\u06d8\u06e0\u06e8\u06e5\u06d8\u06e6\u06df\u06e6"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e1\u06dc\u06e5\u06df\u06df\u06e1\u06d8\u06d8\u06e6\u06d8\u06d8\u06ec\u06d9\u06d6\u06d8\u06d8\u06d8\u06da\u06d7\u06e1\u06d8\u06e2\u06db\u06e1\u06d8\u06e6\u06e6\u06d6\u06e6\u06dc\u06e6\u06d8\u06e8\u06ec\u06e8\u06d8\u06df\u06e6\u06d7\u06ec\u06eb\u06e4"

    goto :goto_0

    :sswitch_2
    new-array v0, p1, [Lcom/cyjh/elfin/entity/BestResolution;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5cfada61 -> :sswitch_1
        0x543564d6 -> :sswitch_0
        0x7fe3ad5d -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 4

    const-string v0, "\u06e0\u06e1\u06d6\u06d9\u06e0\u06e8\u06d7\u06df\u06e0\u06eb\u06ec\u06e1\u06db\u06e5\u06e6\u06e5\u06db\u06e7\u06e0\u06e1\u06d8\u06e6\u06eb\u06e5\u06d8\u06e0\u06d9\u06d7\u06e7\u06e1\u06d7\u06dc\u06df\u06d8\u06ec\u06df\u06db\u06df\u06d7\u06e8\u06d8\u06d9\u06d6\u06db\u06d6\u06e6\u06d9\u06d9\u06dc\u06e5\u06d8\u06e0\u06e5\u06d8\u06e8\u06e0\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x17f

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x16e

    const/16 v2, 0x38e

    const v3, 0x25132f6b

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06d7\u06d8\u06d8\u06e6\u06d9\u06e4\u06e2\u06d9\u06d8\u06d8\u06d9\u06e2\u06dc\u06d8\u06e1\u06db\u06e5\u06e8\u06dc\u06e5\u06d8\u06eb\u06e5\u06df\u06e5\u06d8\u06eb\u06d6\u06e8\u06df\u06e6\u06e7\u06d7\u06e0\u06da\u06e8\u06e0\u06e0\u06e6\u06d8\u06d7\u06ec\u06df\u06e0\u06df\u06d8\u06d8\u06d7\u06d7\u06e1\u06db\u06e2\u06e4"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e6\u06d7\u06eb\u06e7\u06d8\u06dc\u06e2\u06e0\u06e8\u06d8\u06e4\u06d8\u06d6\u06d8\u06e7\u06da\u06e1\u06e6\u06ec\u06db\u06e1\u06e0\u06e1\u06d8\u06da\u06d6\u06d8\u06d9\u06e8\u06d6\u06d8\u06e5\u06d9\u06e6"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/entity/BestResolution$1;->newArray(I)[Lcom/cyjh/elfin/entity/BestResolution;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x556abeab -> :sswitch_0
        -0x439c5cd8 -> :sswitch_1
        -0x41064bd -> :sswitch_2
    .end sparse-switch
.end method
