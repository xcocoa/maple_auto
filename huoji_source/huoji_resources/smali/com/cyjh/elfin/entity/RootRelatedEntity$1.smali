.class public Lcom/cyjh/elfin/entity/RootRelatedEntity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/entity/RootRelatedEntity;
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
        "Lcom/cyjh/elfin/entity/RootRelatedEntity;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/elfin/entity/RootRelatedEntity;
    .locals 4

    const-string v0, "\u06e0\u06e8\u06eb\u06d8\u06d8\u06d9\u06e8\u06e0\u06e5\u06d8\u06db\u06e0\u06df\u06ec\u06eb\u06df\u06d8\u06d6\u06d8\u06e4\u06e5\u06d7\u06df\u06d9\u06e2\u06d9\u06db\u06e7\u06e6\u06d9\u06e0\u06d7\u06d8\u06e5\u06d8\u06e7\u06d9\u06e8\u06d8\u06e2\u06d6\u06e1\u06d8\u06dc\u06e1\u06e0\u06db\u06eb\u06e8\u06eb\u06da\u06da"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2fe

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1cc

    const/16 v2, 0x10b

    const v3, 0xcc6cadd

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06e5\u06e1\u06dc\u06d8\u06e6\u06d8\u06eb\u06da\u06e6\u06d8\u06e7\u06da\u06e7\u06db\u06d7\u06ec\u06e6\u06e2\u06e5\u06e4\u06d8\u06d6\u06e7\u06e5\u06d6\u06e6\u06eb\u06e8\u06d8\u06e4\u06d6\u06e6\u06e1\u06e5\u06e1\u06ec\u06d8\u06eb"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d7\u06dc\u06e5\u06e1\u06d6\u06e7\u06d8\u06e2\u06dc\u06df\u06dc\u06e4\u06dc\u06d8\u06e8\u06eb\u06da\u06da\u06d7\u06e0\u06dc\u06e0\u06e7\u06df\u06e4\u06d8\u06d6\u06d7\u06d6\u06d8\u06e2\u06eb\u06d6\u06d8\u06e2\u06e6\u06db\u06e0\u06d9\u06d7"

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/cyjh/elfin/entity/RootRelatedEntity;

    invoke-direct {v0, p1}, Lcom/cyjh/elfin/entity/RootRelatedEntity;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x29ff5b5c -> :sswitch_0
        0x42d5668f -> :sswitch_1
        0x71233150 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    const-string v0, "\u06d8\u06da\u06e1\u06e8\u06dc\u06d7\u06e8\u06d6\u06d8\u06e6\u06e6\u06e8\u06ec\u06df\u06d8\u06df\u06d9\u06ec\u06d7\u06e5\u06e8\u06db\u06ec\u06e7\u06dc\u06e5\u06d6\u06e8\u06d8\u06eb\u06ec\u06d7\u06d6\u06d9\u06e1\u06df\u06db\u06d9\u06d6\u06d7\u06e1\u06d8\u06e7\u06d8\u06e8\u06d8\u06dc\u06dc\u06d8\u06d8\u06df\u06e2\u06db\u06e5\u06e2\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x149

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3a8

    const/16 v2, 0x34c

    const v3, 0x202e2aa5

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06e8\u06e2\u06d6\u06d9\u06d7\u06e1\u06ec\u06e5\u06e7\u06e2\u06ec\u06df\u06d8\u06d8\u06d8\u06e6\u06da\u06e6\u06e7\u06e7\u06d7\u06e0\u06e1\u06e5\u06d8\u06e0\u06dc\u06e5\u06eb\u06d6\u06e8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e2\u06ec\u06d9\u06dc\u06e1\u06ec\u06e6\u06ec\u06e0\u06eb\u06e2\u06e1\u06d8\u06d6\u06d9\u06ec\u06d8\u06d9\u06e5\u06e5\u06e1\u06dc\u06df\u06e0\u06e6\u06d9\u06e2\u06ec\u06df\u06df\u06d8\u06eb\u06e2\u06d8\u06e6\u06dc\u06d8\u06dc\u06d6\u06e4\u06e4\u06e1\u06d8\u06d8\u06e1\u06d7\u06e8\u06d8\u06dc\u06e8\u06d6\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/entity/RootRelatedEntity$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/elfin/entity/RootRelatedEntity;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x64413c03 -> :sswitch_2
        -0x2187aed2 -> :sswitch_0
        0x13f35759 -> :sswitch_1
    .end sparse-switch
.end method

.method public newArray(I)[Lcom/cyjh/elfin/entity/RootRelatedEntity;
    .locals 4

    const-string v0, "\u06e8\u06e6\u06e7\u06eb\u06e5\u06dc\u06db\u06ec\u06e1\u06d8\u06d8\u06e7\u06df\u06dc\u06d7\u06e6\u06d8\u06e2\u06d9\u06e1\u06d8\u06e2\u06e5\u06e4\u06d7\u06d9\u06e0\u06d9\u06e0\u06d8\u06d8\u06ec\u06dc\u06d9\u06e7\u06e1\u06e4\u06e0\u06e2\u06e5\u06d8\u06e2\u06e7\u06e6\u06e0\u06d6\u06db\u06e4\u06df\u06d7\u06db\u06e7\u06dc\u06d8\u06d7\u06e6\u06da\u06d9\u06e6\u06e5\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x20e

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0xe

    const/16 v2, 0x1fd

    const v3, -0x379363e1

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06d8\u06ec\u06dc\u06db\u06d7\u06e2\u06e0\u06db\u06e1\u06db\u06da\u06e7\u06eb\u06df\u06d6\u06eb\u06e2\u06d8\u06d6\u06e4\u06da\u06ec\u06dc\u06e1\u06d8\u06dc\u06eb\u06da\u06e1\u06d8\u06e4\u06e2\u06e6\u06dc\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e2\u06db\u06e6\u06d8\u06db\u06e6\u06d8\u06da\u06d6\u06e5\u06df\u06ec\u06e8\u06d8\u06d9\u06e5\u06d8\u06d6\u06e8\u06e8\u06d8\u06df\u06da\u06e6\u06d8\u06e6\u06da\u06e1\u06d8\u06df\u06e8\u06d7\u06d6\u06e8\u06ec\u06ec\u06d7\u06dc\u06d8\u06eb\u06e7\u06da"

    goto :goto_0

    :sswitch_2
    new-array v0, p1, [Lcom/cyjh/elfin/entity/RootRelatedEntity;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c64d413 -> :sswitch_0
        -0x3f0e8487 -> :sswitch_1
        0x2cdcaf8b -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 4

    const-string v0, "\u06d6\u06ec\u06d6\u06df\u06e1\u06e2\u06dc\u06d7\u06d9\u06da\u06dc\u06e5\u06dc\u06e4\u06e1\u06e2\u06d9\u06d6\u06d8\u06ec\u06d6\u06df\u06e2\u06e7\u06d6\u06e0\u06e2\u06e2\u06e6\u06d7\u06e8\u06e4\u06e2\u06e7\u06e1\u06e4\u06e7\u06da\u06df\u06d7\u06e0\u06df\u06d8\u06e7\u06d9\u06db\u06e1\u06eb\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xea

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1f6

    const/16 v2, 0x133

    const v3, -0x404be4fe

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06d7\u06e4\u06df\u06dc\u06eb\u06df\u06da\u06df\u06db\u06d9\u06e6\u06d8\u06eb\u06d8\u06e2\u06ec\u06d7\u06e8\u06e7\u06d8\u06eb\u06df\u06e2\u06da\u06e5\u06e5\u06e0\u06e1\u06e2\u06e0\u06d6\u06d8\u06e6\u06e5\u06e7\u06e1\u06d6\u06ec\u06e6\u06d7\u06e4"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e0\u06ec\u06e6\u06d8\u06e5\u06da\u06db\u06d8\u06d7\u06e1\u06d8\u06d7\u06eb\u06d6\u06d7\u06dc\u06db\u06da\u06e7\u06d8\u06e4\u06e6\u06e1\u06dc\u06d8\u06d6\u06d8\u06d9\u06ec\u06e5\u06d8\u06d6\u06e5\u06df"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/entity/RootRelatedEntity$1;->newArray(I)[Lcom/cyjh/elfin/entity/RootRelatedEntity;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3677010b -> :sswitch_2
        0x5821cf5d -> :sswitch_1
        0x64a02ba3 -> :sswitch_0
    .end sparse-switch
.end method
