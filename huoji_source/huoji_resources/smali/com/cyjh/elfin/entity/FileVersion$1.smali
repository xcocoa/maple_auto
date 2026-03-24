.class public Lcom/cyjh/elfin/entity/FileVersion$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/entity/FileVersion;
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
        "Lcom/cyjh/elfin/entity/FileVersion;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/elfin/entity/FileVersion;
    .locals 6

    const-string v0, "\u06e0\u06e8\u06d8\u06df\u06e7\u06e8\u06e1\u06db\u06d7\u06e4\u06d6\u06e6\u06ec\u06d7\u06e8\u06d8\u06d6\u06e2\u06d9\u06d6\u06e8\u06eb\u06eb\u06e1\u06e5\u06d8\u06e1\u06e2\u06e0\u06e8\u06e1\u06ec\u06da\u06e7\u06df\u06da\u06e4\u06d6\u06ec\u06e2\u06d8\u06e0\u06e5\u06e4\u06e0\u06d7\u06da\u06e1\u06e0\u06dc"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x252

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x15a

    const/16 v2, 0x2d4

    const v3, -0x5bbe2a44

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06d7\u06da\u06e5\u06e1\u06e5\u06d8\u06dc\u06e5\u06e7\u06e6\u06d8\u06eb\u06ec\u06d6\u06d9\u06e8\u06da\u06d8\u06d8\u06e5\u06e1\u06df\u06e7\u06e4\u06e6\u06d8\u06e4\u06e8\u06e7\u06ec\u06e4\u06d9\u06da\u06e5\u06e5\u06db\u06e5\u06e1\u06e2\u06df\u06eb\u06ec\u06e5\u06da\u06e2\u06eb\u06d8\u06eb\u06e2\u06e1\u06da\u06e5\u06e8\u06d8\u06d9\u06e6\u06d7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e7\u06da\u06db\u06df\u06db\u06d6\u06d8\u06da\u06e8\u06ec\u06e7\u06d8\u06d6\u06d8\u06e4\u06e5\u06e8\u06ec\u06d6\u06d8\u06d8\u06e2\u06db\u06ec\u06db\u06e1\u06e7\u06d8\u06ec\u06da\u06da\u06e1\u06e2\u06d7"

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/cyjh/elfin/entity/FileVersion;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/cyjh/elfin/entity/FileVersion;-><init>(IIIII)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6dfdb2fa -> :sswitch_1
        0x362e09c -> :sswitch_0
        0x2845f5ae -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    const-string v0, "\u06ec\u06df\u06d9\u06e8\u06d7\u06e8\u06d8\u06d8\u06d7\u06ec\u06dc\u06db\u06e5\u06d8\u06e4\u06e5\u06d7\u06e5\u06d7\u06dc\u06dc\u06e5\u06d8\u06d8\u06df\u06e4\u06df\u06d8\u06e1\u06db\u06e0\u06d9\u06d6\u06d8\u06eb\u06e5\u06d6\u06d8\u06d8\u06e1\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x12b

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3eb

    const/16 v2, 0x2e1

    const v3, 0x7df78694

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06e2\u06d8\u06d9\u06dc\u06e5\u06d8\u06e2\u06df\u06eb\u06e7\u06da\u06e0\u06eb\u06e0\u06eb\u06d9\u06e6\u06d6\u06d8\u06d6\u06da\u06e5\u06d8\u06e8\u06e5\u06d7\u06e4\u06db\u06e4\u06e8\u06e8\u06e4"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e6\u06db\u06e2\u06e5\u06e7\u06e4\u06ec\u06e8\u06eb\u06d6\u06e0\u06e5\u06d8\u06e4\u06e5\u06e5\u06d8\u06d8\u06e5\u06d7\u06e8\u06d6\u06df\u06dc\u06e6\u06e2\u06e8\u06eb\u06d6\u06dc"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/entity/FileVersion$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/elfin/entity/FileVersion;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x60f9f366 -> :sswitch_2
        -0x491ca862 -> :sswitch_1
        0x3194ba3d -> :sswitch_0
    .end sparse-switch
.end method

.method public newArray(I)[Lcom/cyjh/elfin/entity/FileVersion;
    .locals 4

    const-string v0, "\u06e7\u06e2\u06d6\u06d8\u06ec\u06df\u06e2\u06eb\u06e2\u06e6\u06d8\u06da\u06eb\u06d6\u06d8\u06e1\u06d9\u06d8\u06e2\u06d7\u06ec\u06d8\u06e4\u06d8\u06d7\u06df\u06dc\u06ec\u06dc\u06e1\u06e2\u06ec\u06e8\u06d8\u06db\u06e4\u06e2\u06e6\u06db\u06dc\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2a4

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3f1

    const/16 v2, 0xc0

    const v3, -0x2cf5c73

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06df\u06e5\u06e2\u06d8\u06dc\u06e5\u06e0\u06dc\u06d8\u06df\u06e7\u06e0\u06da\u06e1\u06da\u06db\u06d7\u06e2\u06dc\u06e1\u06da\u06dc\u06e4\u06d8\u06d9\u06e8\u06da\u06e7\u06e7\u06e4\u06e6\u06e4\u06e2\u06ec\u06db\u06e0"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e1\u06e0\u06e7\u06e0\u06d6\u06ec\u06e0\u06e0\u06e7\u06e8\u06d9\u06d6\u06d8\u06dc\u06da\u06d9\u06e0\u06dc\u06ec\u06dc\u06dc\u06eb\u06ec\u06e2\u06e6\u06d6\u06e6\u06d6\u06d8\u06e1\u06e7\u06d7\u06d7\u06e4\u06d8\u06d8\u06e1\u06db\u06e2\u06e1\u06e0\u06e5\u06d8\u06e2\u06e0\u06e5\u06d8\u06db\u06e0\u06e7\u06e1\u06da\u06e6\u06d8\u06e0\u06e7\u06d6\u06d8\u06e2\u06d9\u06e4"

    goto :goto_0

    :sswitch_2
    new-array v0, p1, [Lcom/cyjh/elfin/entity/FileVersion;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c81341c -> :sswitch_2
        0x4d0c7dc3 -> :sswitch_1
        0x7a996d34 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 4

    const-string v0, "\u06e4\u06e8\u06e6\u06d8\u06e8\u06d9\u06d8\u06d8\u06e7\u06db\u06e8\u06d8\u06d8\u06e0\u06dc\u06db\u06db\u06d6\u06d8\u06da\u06e6\u06e6\u06eb\u06e4\u06e5\u06d8\u06e4\u06d6\u06e6\u06eb\u06eb\u06e7\u06e8\u06ec\u06e5\u06d8\u06e5\u06e8\u06d8\u06d8\u06dc\u06e6\u06e5\u06d8\u06d9\u06db\u06da\u06e8\u06df\u06e0"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1b5

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3f8

    const/16 v2, 0x1b6

    const v3, 0x313dd528

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06e6\u06e5\u06d8\u06e4\u06ec\u06ec\u06ec\u06e7\u06da\u06da\u06e0\u06ec\u06d8\u06e2\u06e8\u06d8\u06db\u06e7\u06db\u06da\u06d8\u06d8\u06e7\u06ec\u06eb\u06e2\u06e4\u06e5\u06d7\u06df"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e7\u06d8\u06d6\u06d8\u06d9\u06d8\u06e4\u06db\u06e1\u06d6\u06e8\u06e8\u06e6\u06d8\u06d8\u06df\u06e1\u06d8\u06e2\u06e7\u06ec\u06e6\u06db\u06e1\u06db\u06db\u06da\u06e2\u06e6\u06e0\u06e0\u06e7\u06e8\u06d8\u06e2\u06dc\u06d8\u06d8\u06df\u06e7\u06df\u06e8\u06d6\u06dc\u06ec\u06e8\u06eb"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/entity/FileVersion$1;->newArray(I)[Lcom/cyjh/elfin/entity/FileVersion;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ff11d1f -> :sswitch_2
        -0x64a3ff9b -> :sswitch_0
        0x3c098c8b -> :sswitch_1
    .end sparse-switch
.end method
