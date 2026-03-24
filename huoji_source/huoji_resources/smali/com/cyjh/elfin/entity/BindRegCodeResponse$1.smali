.class public Lcom/cyjh/elfin/entity/BindRegCodeResponse$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/entity/BindRegCodeResponse;
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
        "Lcom/cyjh/elfin/entity/BindRegCodeResponse;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/elfin/entity/BindRegCodeResponse;
    .locals 4

    const-string v0, "\u06e6\u06dc\u06e5\u06d8\u06e6\u06e7\u06e5\u06d8\u06d6\u06e7\u06dc\u06e0\u06e4\u06d8\u06d6\u06d8\u06d8\u06d6\u06e8\u06d8\u06e6\u06e8\u06e7\u06da\u06d7\u06e4\u06e0\u06d7\u06dc\u06d8\u06eb\u06da\u06e1\u06e1\u06d7\u06da\u06e8\u06db\u06ec\u06e7\u06da\u06d6\u06d8\u06e6\u06ec\u06dc"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xe

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xe7

    const/16 v2, 0x102

    const v3, 0x61c367c1

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06df\u06e2\u06e5\u06d9\u06da\u06e1\u06eb\u06d7\u06eb\u06df\u06d8\u06e6\u06e1\u06d8\u06d8\u06e1\u06d8\u06e8\u06d8\u06df\u06db\u06eb\u06ec\u06e7\u06dc\u06d9\u06e2\u06e0\u06e0\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e7\u06e5\u06ec\u06d9\u06d7\u06e1\u06eb\u06e2\u06d8\u06d8\u06ec\u06ec\u06eb\u06df\u06e5\u06e8\u06e8\u06d7\u06ec\u06da\u06df\u06e5\u06e2\u06d9\u06d8\u06d8\u06e8\u06e6\u06e0\u06d7\u06e8\u06df\u06dc\u06d7\u06df\u06d7\u06eb\u06ec\u06ec\u06e1\u06d8\u06db\u06da\u06d6\u06d8\u06eb\u06db\u06dc\u06d8\u06da\u06d6\u06e7\u06df\u06e0\u06db\u06d7\u06d9\u06e5"

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/cyjh/elfin/entity/BindRegCodeResponse;

    invoke-direct {v0, p1}, Lcom/cyjh/elfin/entity/BindRegCodeResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x791de055 -> :sswitch_2
        -0x89119c7 -> :sswitch_1
        0x2b04796f -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    const-string v0, "\u06d6\u06e5\u06d6\u06e1\u06e7\u06e5\u06d8\u06db\u06e1\u06e0\u06e4\u06e0\u06e2\u06d9\u06ec\u06da\u06eb\u06db\u06df\u06e4\u06e6\u06e6\u06db\u06e5\u06e7\u06ec\u06da\u06e2\u06e6\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x25d

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x347

    const/16 v2, 0x2d7

    const v3, 0x398dfd0f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06da\u06e1\u06d8\u06d8\u06dc\u06ec\u06db\u06eb\u06d8\u06e1\u06d7\u06e1\u06e5\u06dc\u06d8\u06e0\u06e5\u06dc\u06d8\u06e0\u06e4\u06eb\u06d8\u06d7\u06e6\u06d8\u06d6\u06d7\u06e6\u06e8\u06df\u06dc"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e5\u06db\u06d6\u06d8\u06e5\u06e8\u06e8\u06d8\u06ec\u06dc\u06eb\u06d9\u06dc\u06d8\u06e0\u06da\u06dc\u06e0\u06dc\u06ec\u06d8\u06ec\u06e6\u06e7\u06d9\u06e8\u06e2\u06d6\u06e7\u06d8\u06d6\u06e1\u06e1\u06d8\u06d6\u06eb\u06d7\u06da\u06db\u06d7\u06da\u06e2\u06e0\u06db\u06d9\u06da\u06e4\u06df\u06ec\u06e4\u06d8\u06e0"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/entity/BindRegCodeResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/elfin/entity/BindRegCodeResponse;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x51204fe -> :sswitch_0
        0x2e9718d3 -> :sswitch_2
        0x4e20d864 -> :sswitch_1
    .end sparse-switch
.end method

.method public newArray(I)[Lcom/cyjh/elfin/entity/BindRegCodeResponse;
    .locals 4

    const-string v0, "\u06df\u06da\u06e0\u06e1\u06d8\u06e7\u06d8\u06e7\u06e0\u06e1\u06ec\u06d6\u06e4\u06e0\u06d8\u06d9\u06db\u06d8\u06e7\u06da\u06e5\u06d8\u06df\u06ec\u06e5\u06d6\u06e4\u06d6\u06e4\u06dc\u06e8\u06d8\u06d6\u06dc\u06ec\u06eb\u06da\u06eb\u06e6\u06eb\u06eb\u06d7\u06e5\u06d8\u06d9\u06db\u06d8\u06d8\u06e8\u06d7\u06e1\u06da\u06d9\u06e2\u06e0\u06db\u06dc\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3db

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x37f

    const/16 v2, 0x20

    const v3, -0x32c92af3

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06e5\u06dc\u06d8\u06d7\u06db\u06d8\u06d8\u06df\u06d7\u06d7\u06e8\u06eb\u06dc\u06d8\u06e4\u06e4\u06eb\u06d7\u06da\u06e8\u06e6\u06db\u06e8\u06d8\u06d7\u06db\u06dc\u06e7\u06e7\u06e6\u06d8\u06df\u06e8\u06e5\u06d8\u06e4\u06e8\u06d6\u06d8\u06e0\u06e5\u06e1\u06d8\u06e7\u06e8\u06df\u06e6\u06df\u06db\u06df\u06d6\u06d8\u06e6\u06e0\u06ec\u06d7\u06d6\u06e7\u06e5\u06e5\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d7\u06e2\u06e0\u06d6\u06e2\u06d6\u06d9\u06ec\u06dc\u06d8\u06e0\u06db\u06e5\u06d8\u06e2\u06ec\u06dc\u06d8\u06d8\u06d8\u06dc\u06e7\u06df\u06d9\u06e8\u06d6\u06d8\u06e8\u06e2\u06dc\u06d8\u06db\u06e1\u06e1\u06d8\u06db\u06e6\u06dc\u06d8\u06d8\u06db\u06e2"

    goto :goto_0

    :sswitch_2
    new-array v0, p1, [Lcom/cyjh/elfin/entity/BindRegCodeResponse;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x714c84aa -> :sswitch_1
        -0x69ddccf8 -> :sswitch_0
        -0x2ff4830f -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 4

    const-string v0, "\u06ec\u06e4\u06d6\u06e1\u06d8\u06dc\u06d8\u06e7\u06eb\u06db\u06d6\u06e0\u06e1\u06db\u06eb\u06d7\u06dc\u06e7\u06dc\u06d8\u06d7\u06e6\u06e1\u06d8\u06e4\u06e0\u06e1\u06d6\u06df\u06e7\u06eb\u06e5\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x12a

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3dc

    const/16 v2, 0x2aa

    const v3, 0x60b6f046

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06e2\u06e1\u06db\u06e2\u06ec\u06dc\u06e7\u06eb\u06ec\u06e6\u06eb\u06e7\u06dc\u06d7\u06e7\u06db\u06e1\u06d8\u06d6\u06eb\u06e5\u06df\u06eb\u06d8\u06d8\u06df\u06dc\u06d6\u06d8\u06e2\u06e6\u06db\u06df\u06d8\u06e6\u06da\u06e0\u06d9"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06da\u06e2\u06da\u06e4\u06e6\u06e8\u06e6\u06df\u06e0\u06db\u06d8\u06e5\u06d8\u06d6\u06ec\u06e7\u06e1\u06dc\u06d9\u06db\u06e5\u06db\u06db\u06d7\u06eb\u06e5\u06ec\u06db\u06e6\u06eb"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/entity/BindRegCodeResponse$1;->newArray(I)[Lcom/cyjh/elfin/entity/BindRegCodeResponse;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6eb5f942 -> :sswitch_1
        -0x1d60b3af -> :sswitch_2
        0x173c06f -> :sswitch_0
    .end sparse-switch
.end method
