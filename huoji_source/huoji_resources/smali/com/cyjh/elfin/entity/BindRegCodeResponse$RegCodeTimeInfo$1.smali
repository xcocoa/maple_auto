.class public Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;
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
        "Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;
    .locals 4

    const-string v0, "\u06d8\u06ec\u06d8\u06e8\u06e2\u06e0\u06db\u06dc\u06eb\u06e4\u06e1\u06d6\u06dc\u06da\u06e1\u06d9\u06e6\u06e4\u06ec\u06e7\u06e1\u06d8\u06e4\u06e0\u06d6\u06d8\u06e0\u06d6\u06e6\u06d8\u06e1\u06d7\u06e5\u06d8\u06eb\u06da\u06d8\u06eb\u06d9\u06ec\u06df\u06e0\u06e1\u06ec\u06e0\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x330

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x29a

    const/16 v2, 0x268

    const v3, -0x650f61fa

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e2\u06dc\u06e0\u06e5\u06d8\u06eb\u06e4\u06e5\u06d8\u06e5\u06da\u06e7\u06d6\u06e8\u06d6\u06df\u06ec\u06db\u06e6\u06db\u06da\u06ec\u06e2\u06e7\u06e2\u06d8\u06dc\u06d8\u06e7\u06db\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e4\u06da\u06df\u06da\u06eb\u06e8\u06e1\u06e7\u06eb\u06d6\u06d8\u06e8\u06d8\u06d8\u06df\u06e2\u06df\u06df\u06d9\u06d8\u06e4\u06e2\u06e0\u06d6\u06eb\u06e0\u06eb\u06e8\u06d8\u06d8\u06eb\u06d8\u06d8\u06dc\u06e8\u06e0\u06d6\u06d6\u06df\u06d9\u06e6\u06d9\u06dc\u06e8\u06e7\u06db\u06eb\u06eb\u06e8\u06d6\u06e7\u06d8\u06e8\u06e6\u06e8\u06d8\u06e8\u06da\u06e5\u06d8"

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;

    invoke-direct {v0, p1}, Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x63fed685 -> :sswitch_2
        -0x42b09383 -> :sswitch_1
        0x75699896 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    const-string v0, "\u06e4\u06e5\u06d6\u06d8\u06e1\u06e5\u06d6\u06d6\u06db\u06d6\u06d8\u06dc\u06ec\u06e4\u06e7\u06e5\u06dc\u06e7\u06d8\u06eb\u06e7\u06eb\u06ec\u06d7\u06df\u06d8\u06e5\u06d7\u06d8\u06db\u06e4\u06e6\u06d8\u06da\u06d6\u06dc\u06d8\u06e7\u06e4\u06d8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3dd

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x39e

    const/16 v2, 0x273

    const v3, 0x6bc3121e

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06e7\u06d7\u06da\u06d8\u06d8\u06df\u06e1\u06db\u06e5\u06e0\u06d8\u06e8\u06e1\u06e5\u06df\u06e7\u06e1\u06ec\u06e1\u06d8\u06e8\u06e1\u06d9\u06eb\u06e8\u06d6\u06d8\u06e4\u06df\u06e1\u06d8\u06ec\u06e6\u06ec\u06e5\u06da\u06e5\u06e4\u06e0\u06e4\u06e7\u06e1\u06d9\u06eb\u06d6\u06d8\u06d7\u06eb\u06db\u06dc\u06e8\u06d8\u06eb\u06e0\u06eb"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d6\u06e8\u06eb\u06e5\u06e8\u06d6\u06d8\u06d9\u06df\u06d6\u06d8\u06e6\u06e1\u06e5\u06d8\u06e5\u06e2\u06da\u06dc\u06e4\u06d6\u06e4\u06e7\u06d8\u06d8\u06e7\u06e1\u06da\u06e5\u06e1\u06da\u06dc\u06d7\u06d9\u06df\u06e0\u06e8\u06d8\u06e4\u06eb\u06e8\u06d8\u06dc\u06da\u06e7\u06db\u06d8\u06e2\u06ec\u06e0\u06e8\u06ec\u06e7\u06df"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x19cee258 -> :sswitch_1
        -0x118b2b3e -> :sswitch_2
        0x53a725fa -> :sswitch_0
    .end sparse-switch
.end method

.method public newArray(I)[Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;
    .locals 4

    const-string v0, "\u06e2\u06ec\u06e0\u06db\u06e7\u06df\u06e7\u06e1\u06e2\u06ec\u06e4\u06d6\u06d8\u06eb\u06da\u06e0\u06e6\u06e5\u06d6\u06d9\u06e6\u06d6\u06e8\u06e2\u06d6\u06d8\u06d8\u06e5\u06d8\u06db\u06d8\u06e1\u06d8\u06e5\u06ec\u06e0\u06e0\u06d8\u06e5\u06d8\u06d9\u06e4\u06d8\u06e4\u06eb\u06e8\u06e4\u06da\u06d7\u06df\u06d8\u06dc\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x226

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2a7

    const/16 v2, 0x183

    const v3, 0x1d93a8c2

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06e1\u06e1\u06df\u06d8\u06e7\u06d8\u06d7\u06dc\u06e0\u06e6\u06e6\u06d8\u06d8\u06da\u06e0\u06dc\u06eb\u06eb\u06d7\u06e7\u06dc\u06df\u06da\u06df\u06d6\u06d8\u06d6\u06e4\u06d6\u06e2\u06d9\u06df\u06e0\u06dc\u06d7\u06e1\u06df\u06e7\u06e6\u06e2\u06d6\u06d8\u06e4\u06e8\u06df\u06e0\u06d6\u06d7\u06db"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d7\u06e5\u06dc\u06e5\u06d7\u06db\u06e6\u06df\u06d6\u06eb\u06e5\u06df\u06e7\u06da\u06df\u06db\u06da\u06e0\u06e4\u06e6\u06d6\u06e1\u06e5\u06e7\u06dc\u06df\u06df\u06df\u06e1"

    goto :goto_0

    :sswitch_2
    new-array v0, p1, [Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1d6a4add -> :sswitch_0
        0x182b78b2 -> :sswitch_1
        0x2bbbf697 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 4

    const-string v0, "\u06d7\u06db\u06e0\u06d6\u06df\u06e0\u06d7\u06df\u06d8\u06e8\u06e0\u06e7\u06e7\u06d6\u06df\u06dc\u06e4\u06e2\u06dc\u06e4\u06eb\u06d8\u06e0\u06e6\u06d8\u06e6\u06e0\u06dc\u06e1\u06d8\u06d9\u06df\u06e7\u06e2\u06da\u06e6\u06e6\u06da\u06ec\u06eb\u06e5\u06db\u06e6\u06d8\u06d6\u06db\u06e2\u06e7\u06d9"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x285

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x311

    const/16 v2, 0xde

    const v3, -0x5eac041a

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06e5\u06db\u06d8\u06d6\u06e2\u06e7\u06e1\u06e8\u06e7\u06e5\u06d8\u06e0\u06d9\u06d6\u06e0\u06e5\u06d8\u06d8\u06e2\u06df\u06e8\u06df\u06df\u06e1\u06e5\u06e1\u06e1\u06d8\u06df\u06e4"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d6\u06ec\u06d9\u06e6\u06d6\u06d8\u06e0\u06df\u06dc\u06d8\u06da\u06df\u06df\u06e7\u06dc\u06e5\u06da\u06e7\u06d9\u06e8\u06e5\u06d6\u06d9\u06e2\u06d7\u06ec\u06da\u06e8\u06d6\u06e1\u06e5\u06d8\u06e8\u06e2\u06db\u06ec\u06e4\u06e8\u06d8\u06ec\u06eb\u06eb\u06dc\u06e2\u06d7"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo$1;->newArray(I)[Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79a93fb5 -> :sswitch_0
        -0x6c086544 -> :sswitch_1
        -0xf24c8b3 -> :sswitch_2
    .end sparse-switch
.end method
