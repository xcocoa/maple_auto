.class public Lcom/cyjh/elfin/entity/FloatEditBean$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/entity/FloatEditBean;
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
        "Lcom/cyjh/elfin/entity/FloatEditBean;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/elfin/entity/FloatEditBean;
    .locals 4

    const-string v0, "\u06e2\u06e0\u06da\u06e2\u06da\u06dc\u06e0\u06e8\u06e1\u06da\u06d6\u06db\u06e6\u06da\u06d7\u06e7\u06d7\u06d6\u06d8\u06eb\u06d6\u06da\u06e1\u06e1\u06e0\u06db\u06e0\u06d9\u06d7\u06df\u06e6\u06ec\u06e5\u06dc\u06d8\u06e7\u06e4\u06d7\u06e1\u06da\u06d8\u06d8\u06d9\u06ec\u06d8\u06d8\u06dc\u06d8\u06da\u06da\u06e1\u06da\u06e5\u06d9\u06d7\u06e5\u06e8\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x29a

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x290

    const/16 v2, 0x2e8

    const v3, -0x73de05f3

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06e5\u06e6\u06d8\u06e6\u06d7\u06da\u06e0\u06d9\u06d8\u06d8\u06ec\u06d6\u06df\u06d9\u06e1\u06e6\u06db\u06d7\u06e5\u06e7\u06e0\u06d6\u06d6\u06db\u06e1\u06d8\u06e5\u06d6\u06e7\u06e5\u06e6\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06dc\u06ec\u06d8\u06d8\u06eb\u06e7\u06e1\u06eb\u06df\u06e2\u06e7\u06da\u06eb\u06d7\u06d6\u06d8\u06db\u06eb\u06da\u06d6\u06dc\u06df\u06e2\u06e4\u06e2\u06e0\u06e2\u06e6\u06d8\u06e2\u06e8\u06dc\u06d8\u06dc\u06e8\u06d7\u06d8\u06e4\u06df\u06e1\u06df\u06e2\u06db\u06da\u06df"

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/cyjh/elfin/entity/FloatEditBean;

    invoke-direct {v0, p1}, Lcom/cyjh/elfin/entity/FloatEditBean;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x66ecdb62 -> :sswitch_2
        0x2ad4f26 -> :sswitch_0
        0x47f329bb -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    const-string v0, "\u06da\u06e1\u06d6\u06da\u06d6\u06e8\u06db\u06e8\u06e8\u06ec\u06e5\u06d6\u06d8\u06e5\u06ec\u06e2\u06dc\u06db\u06eb\u06df\u06e2\u06e2\u06e5\u06d8\u06df\u06da\u06e6\u06db\u06db\u06e4\u06e2\u06db\u06e7\u06dc\u06d6\u06da\u06df\u06e5\u06da\u06d8\u06d9\u06df\u06ec\u06e0\u06d8\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x336

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1a1

    const/16 v2, 0x3d7

    const v3, 0x2751690f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06e0\u06e5\u06da\u06d9\u06da\u06e7\u06d6\u06d6\u06d8\u06ec\u06e0\u06d8\u06e7\u06e5\u06ec\u06e1\u06e4\u06e1\u06d8\u06db\u06dc\u06e1\u06dc\u06e5\u06e1\u06ec\u06d7\u06d6\u06d8\u06e6\u06da\u06e2"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06db\u06d6\u06df\u06d9\u06d9\u06df\u06e6\u06e6\u06e7\u06d8\u06e5\u06d7\u06e2\u06e1\u06e8\u06da\u06e6\u06e8\u06e6\u06d8\u06dc\u06d6\u06da\u06eb\u06e2\u06d9\u06ec\u06e1\u06e6\u06d8\u06d8\u06d8\u06dc\u06d8\u06e0\u06e5\u06d7\u06e5\u06e5\u06dc\u06d8\u06d6\u06e5\u06e5\u06d7\u06d9\u06e1\u06e2\u06e1\u06e8\u06d8\u06eb\u06e8\u06e6\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/entity/FloatEditBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/elfin/entity/FloatEditBean;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c18ee75 -> :sswitch_1
        0x3a07f42 -> :sswitch_2
        0x138882f1 -> :sswitch_0
    .end sparse-switch
.end method

.method public newArray(I)[Lcom/cyjh/elfin/entity/FloatEditBean;
    .locals 4

    const-string v0, "\u06da\u06e7\u06e1\u06d8\u06db\u06db\u06dc\u06d8\u06e1\u06d6\u06e7\u06db\u06e4\u06d7\u06da\u06e4\u06dc\u06dc\u06db\u06e6\u06da\u06df\u06d6\u06db\u06df\u06d8\u06eb\u06d6\u06d8\u06e5\u06d6\u06e5\u06d9\u06e1\u06ec\u06d8\u06d6\u06df\u06ec\u06e4\u06e6\u06d7\u06e4\u06e0\u06dc\u06e2\u06e8\u06d8\u06da\u06e7\u06e1"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x16e

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x12c

    const/16 v2, 0x2e2

    const v3, -0x47f67b75

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e4\u06eb\u06df\u06e2\u06e1\u06dc\u06db\u06e8\u06d8\u06e7\u06ec\u06e2\u06d7\u06df\u06e1\u06d8\u06e8\u06e2\u06d8\u06d8\u06d8\u06e8\u06dc\u06d7\u06db\u06e5\u06d8\u06e6\u06d7\u06dc\u06d8\u06d9\u06e7\u06e5\u06d8\u06e6\u06d8\u06dc\u06d8\u06e7\u06d6\u06d6\u06d8\u06d7\u06e8\u06e5\u06d8\u06d8\u06dc\u06d8\u06e6\u06da\u06eb\u06df\u06e0\u06e7\u06d9\u06e8\u06dc\u06d7\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d9\u06d7\u06d8\u06dc\u06d7\u06e1\u06d8\u06e0\u06e2\u06da\u06dc\u06d8\u06e5\u06e8\u06e6\u06d8\u06d9\u06da\u06e8\u06d8\u06d7\u06e7\u06e4\u06d7\u06e6\u06dc\u06d8\u06d7\u06d8\u06e8\u06d8\u06e5\u06eb\u06d6"

    goto :goto_0

    :sswitch_2
    new-array v0, p1, [Lcom/cyjh/elfin/entity/FloatEditBean;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ab29e56 -> :sswitch_0
        -0x2ab0b323 -> :sswitch_1
        0x33d03245 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 4

    const-string v0, "\u06e1\u06e5\u06d8\u06e2\u06dc\u06db\u06dc\u06d9\u06da\u06da\u06e8\u06e0\u06dc\u06dc\u06df\u06e0\u06dc\u06dc\u06d7\u06da\u06eb\u06dc\u06e2\u06e8\u06e4\u06dc\u06db\u06da\u06e0"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x343

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2e9

    const/16 v2, 0x116

    const v3, -0x7547f36c

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06df\u06eb\u06d7\u06dc\u06e2\u06e2\u06da\u06e4\u06df\u06e2\u06db\u06dc\u06dc\u06da\u06d7\u06e2\u06e6\u06dc\u06df\u06ec\u06d7\u06e2\u06d6\u06df\u06dc\u06e4\u06e4\u06ec"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d9\u06db\u06e5\u06d8\u06db\u06d6\u06ec\u06d7\u06db\u06d8\u06d8\u06da\u06eb\u06da\u06e4\u06e7\u06d6\u06df\u06e5\u06e6\u06d8\u06eb\u06e4\u06e6\u06e4\u06df\u06e6\u06d8\u06d7\u06eb\u06e0\u06e2\u06e6"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/entity/FloatEditBean$1;->newArray(I)[Lcom/cyjh/elfin/entity/FloatEditBean;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x11d64d1c -> :sswitch_0
        0xebb9170 -> :sswitch_2
        0x3e4b00fe -> :sswitch_1
    .end sparse-switch
.end method
