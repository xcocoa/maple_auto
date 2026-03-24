.class public Lcom/cyjh/elfin/entity/ResultResponse$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/entity/ResultResponse;
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
        "Lcom/cyjh/elfin/entity/ResultResponse;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/elfin/entity/ResultResponse;
    .locals 4

    const-string v0, "\u06ec\u06d9\u06e6\u06e7\u06db\u06db\u06ec\u06e0\u06e5\u06d6\u06da\u06e8\u06e0\u06e6\u06eb\u06e8\u06d6\u06ec\u06ec\u06dc\u06eb\u06d8\u06e5\u06dc\u06d8\u06db\u06e5\u06dc\u06d6\u06d9\u06e8\u06d8\u06e5\u06e1\u06e0\u06d9\u06da\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xa9

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x310

    const/16 v2, 0xef

    const v3, -0x26772c71

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06dc\u06e5\u06d7\u06dc\u06ec\u06e0\u06e2\u06df\u06db\u06e7\u06d9\u06e1\u06e1\u06e7\u06e0\u06e1\u06e0\u06d9\u06e5\u06dc\u06d8\u06da\u06e8\u06e2\u06d9\u06e0\u06e8\u06d8\u06e5\u06e1\u06e8\u06e2\u06ec\u06e2\u06df\u06e6\u06e6\u06d7\u06d8\u06e7\u06dc\u06e6\u06eb\u06d9\u06e5\u06e5\u06d8\u06e7\u06eb\u06dc\u06eb\u06db\u06e4\u06dc\u06e0\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e4\u06e0\u06d6\u06d8\u06d7\u06eb\u06db\u06db\u06db\u06e5\u06d8\u06d6\u06dc\u06e8\u06e8\u06db\u06d7\u06e7\u06db\u06e1\u06dc\u06e6\u06dc\u06d8\u06e1\u06dc\u06d7\u06d7\u06eb\u06ec\u06df\u06e8\u06e4\u06df\u06e7\u06e7\u06ec\u06e5\u06ec\u06e6\u06e1\u06e7\u06e5\u06d6\u06d8"

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/cyjh/elfin/entity/ResultResponse;

    invoke-direct {v0, p1}, Lcom/cyjh/elfin/entity/ResultResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x40f56f40 -> :sswitch_2
        0x274278c -> :sswitch_0
        0x32562ad2 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    const-string v0, "\u06df\u06da\u06e6\u06d8\u06da\u06e5\u06d8\u06d8\u06db\u06da\u06d6\u06d8\u06dc\u06e8\u06d8\u06d9\u06d6\u06e0\u06e4\u06e2\u06e5\u06e5\u06d8\u06e0\u06e0\u06e4\u06e5\u06d8\u06db\u06e4\u06eb\u06da\u06d6\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2ba

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x164

    const/16 v2, 0x2f2

    const v3, 0x37f135bd

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06d8\u06d8\u06da\u06e8\u06db\u06e4\u06eb\u06e7\u06dc\u06d9\u06d6\u06da\u06e4\u06e1\u06e7\u06e5\u06d6\u06ec\u06e7\u06e0\u06d9\u06d6\u06d6\u06d8\u06e6\u06e1\u06e7\u06d8\u06df\u06d8\u06dc\u06e8\u06e0\u06e8\u06e6\u06df\u06e6\u06e4\u06e5\u06e5\u06df\u06e0\u06e7\u06e5\u06d7\u06d6\u06e5\u06dc\u06d7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06dc\u06d7\u06e8\u06d8\u06e4\u06e4\u06d6\u06e0\u06db\u06db\u06d6\u06e6\u06eb\u06eb\u06e0\u06db\u06da\u06d6\u06d8\u06d8\u06e4\u06e0\u06e1\u06e4\u06e5\u06d7\u06da\u06d9\u06dc\u06e0\u06d7\u06d9\u06df\u06d6\u06e7\u06d8\u06e7\u06e6\u06da\u06da\u06e6\u06dc\u06e7\u06eb\u06e4\u06d6\u06da\u06d6\u06d8\u06db\u06d8\u06e1\u06d8\u06df\u06da\u06e5\u06d8\u06ec\u06d7\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/entity/ResultResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/elfin/entity/ResultResponse;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x12b07f9b -> :sswitch_2
        -0x1174b996 -> :sswitch_1
        0x1102b070 -> :sswitch_0
    .end sparse-switch
.end method

.method public newArray(I)[Lcom/cyjh/elfin/entity/ResultResponse;
    .locals 4

    const-string v0, "\u06e2\u06db\u06e0\u06e0\u06d8\u06d8\u06d8\u06d8\u06db\u06d6\u06d8\u06df\u06e0\u06e6\u06d8\u06e4\u06e1\u06d8\u06da\u06db\u06dc\u06d8\u06da\u06e2\u06e6\u06d8\u06df\u06e5\u06e1\u06d8\u06e7\u06e8\u06e5\u06d8\u06e7\u06dc\u06dc\u06e1\u06e4\u06d6\u06e0\u06e1\u06e8\u06e4\u06e4\u06e5\u06d8\u06e7\u06e0"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x9

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xe0

    const/16 v2, 0x148

    const v3, -0x5c49c044

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06d9\u06d8\u06d8\u06eb\u06e8\u06da\u06d8\u06e2\u06e1\u06e5\u06eb\u06da\u06e5\u06e6\u06e6\u06d8\u06e2\u06db\u06e0\u06db\u06eb\u06e1\u06d9\u06e1\u06e7\u06d8\u06dc\u06dc\u06da\u06e6\u06e5\u06d7\u06e8\u06d7\u06e4\u06e1\u06e7\u06d8\u06e5\u06d7\u06e2\u06d9\u06e6\u06db\u06dc\u06dc\u06da\u06e0\u06eb\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06db\u06df\u06da\u06e1\u06e2\u06e8\u06d8\u06ec\u06e6\u06e7\u06dc\u06dc\u06d6\u06d8\u06df\u06e7\u06e6\u06d9\u06db\u06e1\u06d8\u06e4\u06d8\u06e8\u06d8\u06d6\u06d7\u06d8\u06e5\u06dc\u06db\u06d6\u06e6\u06d6\u06d8"

    goto :goto_0

    :sswitch_2
    new-array v0, p1, [Lcom/cyjh/elfin/entity/ResultResponse;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5d826a51 -> :sswitch_2
        0xc8c45f0 -> :sswitch_1
        0x36917026 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 4

    const-string v0, "\u06db\u06e0\u06e2\u06ec\u06df\u06db\u06d8\u06df\u06e2\u06e2\u06e0\u06e8\u06d8\u06e8\u06e2\u06d9\u06e5\u06e1\u06d9\u06e6\u06e8\u06e7\u06e1\u06e4\u06d6\u06d8\u06db\u06da\u06e8\u06d8\u06dc\u06ec\u06e8\u06d8\u06da\u06d8\u06d8\u06d8\u06e4\u06ec\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x326

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xfa

    const/16 v2, 0x35

    const v3, -0xde6ac3b

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06d7\u06eb\u06dc\u06e0\u06db\u06d6\u06d6\u06e8\u06d8\u06df\u06df\u06e8\u06d8\u06eb\u06e6\u06db\u06dc\u06e5\u06d8\u06d8\u06da\u06dc\u06df\u06db\u06e4\u06d6\u06d8\u06e6\u06ec\u06d8\u06d8\u06df\u06eb\u06e5"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06eb\u06d7\u06ec\u06d9\u06e7\u06dc\u06d8\u06e6\u06df\u06d6\u06d8\u06da\u06df\u06d8\u06ec\u06eb\u06eb\u06df\u06db\u06e4\u06ec\u06e6\u06e8\u06e0\u06e6\u06e7\u06d8\u06eb\u06d6\u06e7\u06d8\u06ec\u06dc\u06e8\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/entity/ResultResponse$1;->newArray(I)[Lcom/cyjh/elfin/entity/ResultResponse;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5b4a1065 -> :sswitch_2
        -0x1305e308 -> :sswitch_0
        0x5f4d9206 -> :sswitch_1
    .end sparse-switch
.end method
