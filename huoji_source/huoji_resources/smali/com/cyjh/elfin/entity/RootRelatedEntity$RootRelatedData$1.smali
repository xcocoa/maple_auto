.class public Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;
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
        "Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;
    .locals 4

    const-string v0, "\u06da\u06dc\u06d6\u06d7\u06d8\u06e4\u06df\u06d6\u06dc\u06d8\u06da\u06e5\u06da\u06e2\u06da\u06d7\u06e0\u06d6\u06d8\u06eb\u06dc\u06d8\u06d8\u06d6\u06ec\u06e2\u06e8\u06e0\u06d6\u06d8\u06e4\u06e6\u06e1\u06d8\u06e6\u06e4\u06e2\u06e6\u06d7\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1b4

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0xd

    const/16 v2, 0x289

    const v3, 0x21b10b1f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06e1\u06e7\u06d8\u06d6\u06ec\u06ec\u06e5\u06d8\u06e4\u06d7\u06d7\u06e8\u06d8\u06e7\u06e0\u06e6\u06d7\u06e6\u06db\u06d9\u06e6\u06e7\u06d8\u06d9\u06d7\u06ec\u06e0\u06e7\u06da\u06e1\u06d8\u06e2\u06df\u06e0\u06e1\u06df\u06df\u06e8\u06e5\u06e5\u06e7\u06e8\u06e6\u06dc\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d6\u06e8\u06e0\u06d6\u06e6\u06d8\u06e4\u06e5\u06e7\u06e8\u06e2\u06e7\u06e6\u06e0\u06e8\u06d9\u06ec\u06d7\u06ec\u06db\u06d6\u06d8\u06e6\u06d8\u06e0\u06ec\u06df\u06e2\u06d8\u06e0\u06d8\u06e0\u06e5\u06e8\u06e4\u06d6\u06e7\u06d8\u06e2\u06df\u06e5\u06d8\u06d9\u06d9\u06e1\u06d8"

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;

    invoke-direct {v0, p1}, Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x4535f882 -> :sswitch_0
        0x5a4135a9 -> :sswitch_2
        0x5b78d588 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    const-string v0, "\u06e4\u06d7\u06e7\u06e2\u06d9\u06eb\u06e2\u06e5\u06e0\u06d8\u06d8\u06e8\u06e0\u06eb\u06e1\u06d6\u06df\u06ec\u06e5\u06e5\u06eb\u06e6\u06e0\u06e4\u06e8\u06eb\u06e5\u06d8\u06d7\u06df\u06ec\u06d9\u06e8\u06db\u06dc\u06e1\u06d8\u06df\u06dc\u06e5\u06df\u06e7\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x38d

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x195

    const/16 v2, 0x361

    const v3, -0x711c9994

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06eb\u06e8\u06e7\u06e0\u06df\u06eb\u06db\u06e8\u06e4\u06d8\u06e8\u06d8\u06d6\u06d6\u06e1\u06d8\u06dc\u06d8\u06d6\u06e8\u06e0\u06e1\u06d8\u06e1\u06e0\u06d8\u06e8\u06d6\u06eb\u06e0\u06dc\u06e6\u06d8\u06da\u06e4\u06dc\u06e1\u06d8\u06dc\u06d8\u06da\u06d6\u06dc\u06d6\u06d7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d9\u06e4\u06e6\u06d8\u06e6\u06e2\u06e1\u06d8\u06e8\u06d8\u06d9\u06ec\u06e0\u06e4\u06d7\u06e5\u06d9\u06d6\u06df\u06e6\u06e4\u06e6\u06d8\u06e0\u06d8\u06e8\u06db\u06d7\u06dc\u06d8\u06d8\u06df\u06eb\u06e7\u06e2\u06ec\u06d8\u06dc\u06eb\u06d7\u06eb\u06e0\u06db\u06df\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5d86150 -> :sswitch_0
        0xcb50dd2 -> :sswitch_2
        0x2475d521 -> :sswitch_1
    .end sparse-switch
.end method

.method public newArray(I)[Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;
    .locals 4

    const-string v0, "\u06d9\u06d6\u06d8\u06d8\u06eb\u06e7\u06e6\u06d9\u06d6\u06d7\u06d9\u06ec\u06e6\u06d8\u06e8\u06df\u06d7\u06e8\u06e4\u06e6\u06d8\u06da\u06dc\u06d8\u06d8\u06e8\u06df\u06e5\u06eb\u06e2\u06d7\u06d6\u06da"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2cb

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x111

    const/16 v2, 0x3ce

    const v3, -0x5bbc8440

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06e8\u06db\u06eb\u06d8\u06e5\u06d8\u06d7\u06df\u06e0\u06e2\u06e4\u06d8\u06d8\u06da\u06d7\u06dc\u06d8\u06e0\u06d6\u06d8\u06e8\u06e7\u06eb\u06da\u06eb\u06e0\u06e7\u06ec\u06e0\u06e8\u06eb\u06e4\u06d7\u06e1\u06e2\u06e2\u06df\u06e2\u06ec\u06dc\u06da\u06e4\u06d8\u06d8\u06e7\u06db\u06dc\u06da\u06d8\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d9\u06e4\u06dc\u06df\u06d9\u06d8\u06ec\u06e2\u06ec\u06e4\u06e6\u06e7\u06e5\u06e4\u06d8\u06d8\u06d8\u06e5\u06df\u06df\u06d6\u06eb\u06d8\u06d8\u06d6\u06d8\u06e1\u06e7\u06da\u06e0\u06e1\u06d6"

    goto :goto_0

    :sswitch_2
    new-array v0, p1, [Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5fccc305 -> :sswitch_1
        0x372b97b4 -> :sswitch_2
        0x5050c7e0 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 4

    const-string v0, "\u06d7\u06e5\u06db\u06d9\u06d9\u06eb\u06d7\u06d9\u06e4\u06e0\u06d7\u06e8\u06ec\u06d9\u06da\u06e5\u06d9\u06e4\u06eb\u06da\u06db\u06e0\u06eb\u06d6\u06da\u06e1\u06e0\u06db\u06db\u06db\u06d7\u06ec\u06dc\u06e4\u06dc"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1e6

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x336

    const/16 v2, 0x2c2

    const v3, 0x353a192b

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06df\u06e8\u06dc\u06dc\u06e8\u06e0\u06df\u06e5\u06d8\u06df\u06ec\u06d8\u06eb\u06df\u06e1\u06d8\u06ec\u06d7\u06d7\u06d9\u06d9\u06ec\u06e7\u06e7\u06e6\u06ec\u06db\u06e1\u06df\u06e1\u06d8\u06eb\u06e8\u06e2\u06dc\u06da\u06df\u06e4\u06da\u06e1\u06d8\u06db\u06e7\u06e5\u06d8\u06e4\u06db\u06e6\u06d8\u06dc\u06e4\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e7\u06e5\u06d8\u06d8\u06ec\u06df\u06e1\u06ec\u06e5\u06e6\u06d8\u06e2\u06d7\u06eb\u06e8\u06d9\u06d9\u06db\u06ec\u06dc\u06da\u06e7\u06d8\u06d8\u06dc\u06e4\u06e5\u06d8\u06e1\u06e0\u06e5\u06dc\u06d9\u06e1\u06d9\u06da\u06da\u06d8\u06e8\u06df\u06db\u06e8\u06e2\u06d6\u06e7\u06e6\u06e5\u06db\u06da\u06e1\u06dc\u06e4"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData$1;->newArray(I)[Lcom/cyjh/elfin/entity/RootRelatedEntity$RootRelatedData;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x38399a1a -> :sswitch_2
        0xfffe584 -> :sswitch_1
        0x437d50f7 -> :sswitch_0
    .end sparse-switch
.end method
