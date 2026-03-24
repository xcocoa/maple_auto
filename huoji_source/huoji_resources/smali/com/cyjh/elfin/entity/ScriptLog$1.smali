.class public Lcom/cyjh/elfin/entity/ScriptLog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/entity/ScriptLog;
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
        "Lcom/cyjh/elfin/entity/ScriptLog;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/elfin/entity/ScriptLog;
    .locals 4

    const-string v0, "\u06d7\u06e8\u06e2\u06e6\u06ec\u06ec\u06ec\u06e7\u06d8\u06d8\u06e0\u06e5\u06dc\u06dc\u06e6\u06e7\u06db\u06e4\u06d8\u06d8\u06da\u06e1\u06d8\u06d8\u06d8\u06d8\u06d8\u06d7\u06e8\u06eb\u06e7\u06e1\u06df\u06d7\u06e8\u06e1\u06d8\u06eb\u06d8\u06d8\u06d6\u06eb\u06e7\u06e8\u06e6\u06e0\u06e6\u06db\u06e6\u06ec\u06e5\u06d6\u06ec\u06d9\u06e8\u06d8\u06d6\u06e2\u06dc"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x6f

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x166

    const/16 v2, 0x118

    const v3, -0x62b52ecd

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06e1\u06e6\u06d8\u06db\u06d9\u06e5\u06d9\u06d9\u06e2\u06db\u06e5\u06dc\u06e8\u06e7\u06d8\u06db\u06dc\u06e8\u06d8\u06d7\u06e8\u06e0\u06e7\u06d9\u06d9\u06d7\u06e4\u06e6\u06e5\u06d6"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06dc\u06db\u06e2\u06e0\u06e7\u06d9\u06d6\u06dc\u06d9\u06eb\u06db\u06dc\u06d8\u06db\u06e0\u06d8\u06d8\u06e1\u06d8\u06e2\u06e2\u06e0\u06e6\u06e0\u06ec\u06d7\u06e4\u06e8\u06da\u06ec\u06e5\u06e0\u06e2\u06e0\u06e5\u06d9\u06d9\u06db\u06eb\u06e7\u06e1\u06d8\u06e5\u06d9\u06d6\u06e1\u06d7\u06e6\u06d8\u06d7\u06e7\u06dc"

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/cyjh/elfin/entity/ScriptLog;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/cyjh/elfin/entity/ScriptLog;-><init>(Landroid/os/Parcel;Lcom/cyjh/elfin/entity/ScriptLog$1;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4eb3206d -> :sswitch_0
        -0x3120234f -> :sswitch_2
        0x5de61580 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    const-string v0, "\u06e1\u06df\u06e5\u06d8\u06e2\u06e4\u06da\u06e4\u06e5\u06df\u06df\u06e5\u06e8\u06d8\u06e7\u06e8\u06e6\u06e8\u06d8\u06d8\u06e6\u06df\u06eb\u06df\u06e1\u06e1\u06e8\u06e4\u06e4\u06e2\u06d6\u06da"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x211

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x147

    const/16 v2, 0x3c4

    const v3, 0x2264f049

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06d6\u06e4\u06d6\u06e0\u06eb\u06df\u06e1\u06d9\u06e0\u06e5\u06e6\u06d8\u06e2\u06df\u06e7\u06da\u06e2\u06da\u06e7\u06e1\u06da\u06e1\u06da\u06e1\u06d8\u06e8\u06da\u06e7\u06e4\u06df\u06e1\u06dc\u06d7\u06dc\u06e1\u06ec\u06e7\u06dc\u06ec\u06d8\u06df\u06d6\u06e2\u06ec\u06e1\u06e5\u06e0\u06dc\u06eb\u06eb\u06e5\u06dc\u06d8\u06ec\u06d6\u06d9"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d8\u06d6\u06e8\u06d8\u06dc\u06e5\u06d8\u06e1\u06e7\u06e0\u06e5\u06ec\u06e7\u06e8\u06e1\u06d8\u06d6\u06d8\u06d6\u06df\u06db\u06da\u06e7\u06ec\u06e2\u06e7\u06e0\u06e4\u06e6\u06e2\u06e5\u06e2\u06e6\u06db\u06d9\u06e7"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/entity/ScriptLog$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/elfin/entity/ScriptLog;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f780760 -> :sswitch_0
        -0x700b84c3 -> :sswitch_1
        0x3fbd8517 -> :sswitch_2
    .end sparse-switch
.end method

.method public newArray(I)[Lcom/cyjh/elfin/entity/ScriptLog;
    .locals 4

    const-string v0, "\u06e8\u06e6\u06e7\u06e7\u06e1\u06e6\u06d8\u06d8\u06e7\u06e7\u06e5\u06e4\u06da\u06e5\u06d6\u06eb\u06d6\u06e0\u06da\u06db\u06eb\u06e8\u06d8\u06d9\u06eb\u06d6\u06ec\u06d9\u06e6\u06d8\u06d9\u06df\u06d9\u06e2\u06db\u06e8\u06d8\u06e5\u06dc\u06d8\u06ec\u06e5\u06e4\u06d6\u06eb\u06eb\u06e7\u06e6\u06e8\u06da\u06dc\u06e7\u06d8\u06df\u06df\u06eb\u06da\u06eb\u06d6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x184

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x9b

    const/16 v2, 0x2b0

    const v3, 0x2ce67a89

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06ec\u06e6\u06d8\u06d6\u06d9\u06e5\u06d8\u06e5\u06e4\u06e1\u06e5\u06db\u06e6\u06d8\u06e2\u06e4\u06e6\u06df\u06ec\u06e5\u06d8\u06d9\u06d8\u06e6\u06d7\u06e5\u06e5\u06e6\u06e8\u06df\u06df\u06eb\u06e5\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e2\u06df\u06ec\u06d6\u06e5\u06e1\u06d8\u06d8\u06d8\u06e6\u06e5\u06db\u06d8\u06eb\u06d6\u06da\u06e7\u06d9\u06d8\u06d8\u06e5\u06e2\u06e8\u06d8\u06df\u06e4\u06d6\u06d8\u06df\u06d9\u06d8\u06d8\u06eb\u06e1\u06e0\u06da\u06d6\u06e1\u06ec\u06e7\u06d8\u06d8\u06e5\u06eb\u06e8\u06d8\u06e1\u06df\u06d8\u06d8\u06d7\u06df\u06d8\u06d8\u06dc\u06e6\u06db"

    goto :goto_0

    :sswitch_2
    new-array v0, p1, [Lcom/cyjh/elfin/entity/ScriptLog;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xeffd2b2 -> :sswitch_1
        0x41573827 -> :sswitch_2
        0x5c1b2681 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 4

    const-string v0, "\u06dc\u06d9\u06e0\u06df\u06e4\u06db\u06df\u06dc\u06d8\u06df\u06eb\u06db\u06d6\u06dc\u06e8\u06da\u06e0\u06ec\u06da\u06d7\u06dc\u06e0\u06e1\u06d8\u06eb\u06d7\u06dc\u06d9\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1b0

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x9

    const/16 v2, 0x92

    const v3, -0x3d65a2b5

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06dc\u06d8\u06d8\u06e1\u06e4\u06dc\u06d8\u06d7\u06dc\u06e7\u06d8\u06dc\u06ec\u06da\u06e4\u06e7\u06e8\u06db\u06da\u06d8\u06ec\u06dc\u06d7\u06e0\u06e6\u06eb\u06ec\u06da\u06d6\u06dc\u06d9\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e5\u06e0\u06d6\u06e2\u06da\u06e4\u06e4\u06e4\u06db\u06e2\u06ec\u06ec\u06e8\u06df\u06eb\u06d8\u06eb\u06e6\u06d8\u06ec\u06eb\u06e2\u06d7\u06d7\u06d7\u06e1\u06e1\u06e0\u06d6\u06eb\u06e8\u06d9\u06d8\u06e4\u06e6\u06e6\u06e6\u06d8\u06ec\u06d7\u06d9\u06e4\u06d9\u06e4"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/entity/ScriptLog$1;->newArray(I)[Lcom/cyjh/elfin/entity/ScriptLog;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76a71ae0 -> :sswitch_1
        -0x69421111 -> :sswitch_0
        -0x549e5350 -> :sswitch_2
    .end sparse-switch
.end method
