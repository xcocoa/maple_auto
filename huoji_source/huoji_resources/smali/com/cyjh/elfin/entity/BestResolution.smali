.class public Lcom/cyjh/elfin/entity/BestResolution;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cyjh/elfin/entity/BestResolution;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private X:I

.field private Y:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "\u06ec\u06e5\u06df\u06eb\u06e6\u06dc\u06d8\u06e7\u06e7\u06d6\u06dc\u06d6\u06db\u06db\u06ec\u06d9\u06ec\u06e1\u06d8\u06e0\u06db\u06e8\u06d8\u06e5\u06d6\u06e1\u06d8\u06d7\u06e4\u06e5\u06d8\u06e2\u06dc\u06d8\u06e5\u06eb\u06e1\u06eb\u06ec\u06eb\u06e7\u06e1\u06e8\u06d8\u06eb\u06db\u06e5"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3b5

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x137

    const/16 v2, 0x1a2

    const v3, -0x53cef28b

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance v0, Lcom/cyjh/elfin/entity/BestResolution$1;

    invoke-direct {v0}, Lcom/cyjh/elfin/entity/BestResolution$1;-><init>()V

    sput-object v0, Lcom/cyjh/elfin/entity/BestResolution;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v0, "\u06e0\u06db\u06dc\u06d8\u06e8\u06e2\u06e6\u06d8\u06da\u06dc\u06e1\u06eb\u06da\u06e0\u06ec\u06e4\u06d6\u06d8\u06e8\u06ec\u06d9\u06e5\u06e5\u06df\u06e8\u06e6\u06e2\u06d7\u06e8\u06eb\u06ec\u06d9\u06da\u06da\u06e0\u06d7\u06e7\u06dc\u06e5"

    goto :goto_0

    :sswitch_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2f27b17f -> :sswitch_0
        0x1912a648 -> :sswitch_1
    .end sparse-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/cyjh/elfin/entity/BestResolution;->X:I

    iput p2, p0, Lcom/cyjh/elfin/entity/BestResolution;->Y:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    const-string v0, "\u06d9\u06d7\u06e2\u06d9\u06d8\u06e8\u06db\u06e0\u06d7\u06db\u06d6\u06ec\u06d8\u06e0\u06df\u06e4\u06da\u06e6\u06e7\u06e1\u06df\u06e6\u06eb\u06d7\u06dc\u06d8\u06db\u06e6\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x332

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3c7

    const/16 v2, 0x2c3

    const v3, -0x57abd0fc

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06ec\u06ec\u06db\u06da\u06e1\u06e8\u06df\u06e8\u06db\u06ec\u06e6\u06d6\u06d6\u06eb\u06e5\u06db\u06e6\u06d8\u06db\u06e5\u06e8\u06d8\u06e6\u06d7\u06df\u06e2\u06e5\u06d8\u06e7\u06e7\u06e7"

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1b0afa61 -> :sswitch_1
        0x667b9e21 -> :sswitch_0
    .end sparse-switch
.end method

.method public getX()I
    .locals 4

    const-string v0, "\u06e7\u06e1\u06e5\u06d8\u06da\u06e1\u06d8\u06e8\u06d9\u06e5\u06eb\u06e8\u06e5\u06d8\u06dc\u06e7\u06d9\u06e6\u06ec\u06e6\u06e4\u06d7\u06db\u06e1\u06db\u06e7\u06d7\u06e8\u06d8\u06e0\u06e0\u06db\u06e8\u06e4\u06e7\u06e8\u06d8\u06e4\u06d9\u06d9\u06e7\u06d8\u06e1\u06ec\u06e0\u06dc\u06ec\u06dc\u06e8\u06da"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x269

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x110

    const/16 v2, 0x5f

    const v3, -0x1afbd914

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06dc\u06d7\u06eb\u06e2\u06e8\u06d8\u06d6\u06e1\u06d7\u06e2\u06e1\u06e6\u06e4\u06e6\u06e7\u06d9\u06e4\u06e1\u06e4\u06e5\u06d8\u06e8\u06e2\u06d6\u06e1\u06db\u06e1\u06d8\u06e7\u06e7\u06e2\u06d8\u06e1\u06e7\u06d8\u06d6\u06e2\u06d9\u06d8\u06db\u06e5\u06d8\u06d7\u06eb\u06e5\u06d6\u06e8\u06d9\u06d9\u06e2\u06d6"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/cyjh/elfin/entity/BestResolution;->X:I

    return v0

    :sswitch_data_0
    .sparse-switch
        0x231a0c2a -> :sswitch_1
        0x282e1024 -> :sswitch_0
    .end sparse-switch
.end method

.method public getY()I
    .locals 4

    const-string v0, "\u06df\u06db\u06d6\u06d8\u06e6\u06d9\u06d6\u06d8\u06e8\u06dc\u06e0\u06e8\u06e1\u06e6\u06e8\u06d8\u06db\u06e0\u06db\u06d8\u06d8\u06d9\u06d8\u06e4\u06d6\u06e7\u06d6\u06d8\u06e4\u06dc\u06e6\u06d8\u06e0\u06db\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x80

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3d5

    const/16 v2, 0x21d

    const v3, -0x930c98e

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06da\u06db\u06eb\u06e5\u06da\u06e6\u06d8\u06e2\u06e5\u06e1\u06d8\u06e2\u06d7\u06d7\u06ec\u06e7\u06d9\u06d9\u06eb\u06e8\u06d8\u06e5\u06eb\u06e1\u06d8\u06d8\u06da\u06dc\u06d8\u06e4\u06dc\u06e0\u06e5\u06da\u06e1\u06d8\u06d6\u06df\u06db\u06d8\u06d9\u06e0\u06d8\u06d6\u06e4\u06e4\u06d6\u06d8\u06e2\u06ec\u06dc\u06d8"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/cyjh/elfin/entity/BestResolution;->Y:I

    return v0

    :sswitch_data_0
    .sparse-switch
        -0xffb1e99 -> :sswitch_0
        0x6dc2e475 -> :sswitch_1
    .end sparse-switch
.end method

.method public setX(I)V
    .locals 4

    const-string v0, "\u06df\u06e6\u06db\u06d7\u06da\u06d9\u06e8\u06d8\u06e2\u06d9\u06ec\u06df\u06d9\u06df\u06ec\u06dc\u06da\u06e1\u06dc\u06dc\u06eb\u06e5\u06db\u06da\u06e4\u06e5\u06db\u06e7\u06db\u06e7\u06e6\u06e4\u06df\u06d8\u06e1\u06ec\u06e6\u06e2\u06e0\u06e8\u06d8\u06e5\u06e8\u06e5\u06db\u06e4\u06e5\u06d8\u06e8\u06d9\u06e0\u06e0\u06d9\u06dc"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3c0

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2e0

    const/16 v2, 0x281

    const v3, -0x74f6e9cb

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06d7\u06d6\u06d8\u06dc\u06d7\u06e1\u06d8\u06d6\u06db\u06e2\u06df\u06eb\u06eb\u06e8\u06e0\u06df\u06d8\u06dc\u06d8\u06e8\u06d8\u06d7\u06d9\u06ec\u06dc\u06d7\u06da\u06dc\u06d8\u06e5\u06d8\u06db\u06df\u06e8\u06d8\u06eb\u06df\u06d6\u06dc\u06d6\u06da\u06e8\u06d9\u06ec\u06e0\u06e5\u06dc\u06e5\u06e6\u06d8\u06d7\u06e1\u06dc\u06df\u06ec\u06d9"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e1\u06d6\u06d6\u06d6\u06d7\u06e6\u06e4\u06e8\u06e1\u06d8\u06ec\u06dc\u06d8\u06eb\u06e5\u06df\u06d8\u06e0\u06df\u06df\u06d7\u06e7\u06db\u06e1\u06e8\u06eb\u06e4\u06df\u06d9\u06e0\u06e6\u06d8\u06d7\u06d9\u06dc\u06e6\u06e6\u06d6\u06da\u06e4\u06e0\u06e4\u06d7\u06e4\u06db\u06ec\u06d6\u06d8\u06db\u06e5\u06eb"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/cyjh/elfin/entity/BestResolution;->X:I

    const-string v0, "\u06da\u06e4\u06d9\u06dc\u06e0\u06d9\u06dc\u06eb\u06d7\u06ec\u06da\u06dc\u06df\u06e2\u06ec\u06d6\u06ec\u06dc\u06d8\u06e6\u06d8\u06df\u06d8\u06ec\u06e8\u06e0\u06d7\u06dc\u06d9\u06e7\u06e6\u06dc\u06dc\u06d8\u06d8\u06e6\u06d8\u06e5\u06e7\u06d8\u06d8\u06d8\u06df\u06e0\u06da\u06e8\u06dc\u06e6\u06e1\u06e4\u06da"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3ebe27 -> :sswitch_1
        0x1dbcc0f7 -> :sswitch_3
        0x547b9112 -> :sswitch_2
        0x6cc9447f -> :sswitch_0
    .end sparse-switch
.end method

.method public setY(I)V
    .locals 4

    const-string v0, "\u06db\u06d8\u06e4\u06d9\u06df\u06db\u06dc\u06e0\u06dc\u06d8\u06d8\u06d6\u06e1\u06d8\u06e6\u06d6\u06e0\u06d6\u06e6\u06d7\u06d7\u06e1\u06e1\u06d8\u06e0\u06e1\u06e1\u06d9\u06df\u06d6\u06d8\u06da\u06e5\u06e5\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1e7

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2f7

    const/16 v2, 0x1db

    const v3, 0x6ef20e7f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06d8\u06d8\u06d8\u06d7\u06dc\u06eb\u06df\u06e2\u06d8\u06e5\u06dc\u06da\u06e1\u06e2\u06db\u06d9\u06eb\u06ec\u06e8\u06dc\u06e5\u06ec\u06dc\u06eb\u06e8\u06e1\u06e4\u06d7\u06e5\u06e5\u06e5\u06e8\u06d7\u06e1\u06db\u06e4"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e7\u06d9\u06e1\u06d8\u06e1\u06db\u06d8\u06d8\u06e2\u06dc\u06e0\u06db\u06e5\u06e0\u06df\u06ec\u06e0\u06d7\u06e1\u06d8\u06e4\u06dc\u06df\u06e6\u06e0\u06e1\u06d8\u06e4\u06d9\u06e2\u06d6\u06ec\u06dc\u06e2\u06d6\u06d7\u06db\u06e6"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/cyjh/elfin/entity/BestResolution;->Y:I

    const-string v0, "\u06ec\u06eb\u06ec\u06d8\u06e8\u06e8\u06e1\u06dc\u06d6\u06d8\u06e2\u06e8\u06dc\u06e4\u06d7\u06d6\u06d8\u06e4\u06d9\u06e1\u06d8\u06db\u06d9\u06e4\u06e8\u06df\u06d6\u06d8\u06d9\u06df\u06d6\u06db\u06e5\u06e4"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x23bd0da1 -> :sswitch_2
        -0x1fd97b29 -> :sswitch_1
        -0x94cd952 -> :sswitch_3
        0x65cedbf -> :sswitch_0
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e6\u06db\u06e6\u06e6\u06e1\u06e2\u06e8\u06d7\u06d8\u06e0\u06e7\u06d7\u06d6\u06d7\u06ec\u06e8\u06e7\u06e6\u06d8\u06e5\u06dc\u06d6\u06eb\u06e4\u06d9\u06d9\u06da\u06d9\u06e8\u06e8\u06d8\u06d8\u06e2\u06db\u06db\u06e1\u06d8\u06d8\u06e4\u06e1\u06da\u06eb\u06d9\u06da\u06e7\u06d6\u06e0\u06d7\u06e7\u06e6\u06e6\u06e8\u06eb\u06e2\u06ec\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x2ae

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0xee

    const/16 v3, 0x10e

    const v4, 0x5ad72eac

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06e0\u06df\u06e6\u06da\u06ec\u06db\u06d6\u06e0\u06e5\u06d8\u06da\u06e1\u06ec\u06e8\u06d9\u06e7\u06eb\u06d7\u06e2\u06e6\u06db\u06e1\u06db\u06e1\u06dc\u06dc\u06d8\u06d6\u06e8\u06d9\u06e2\u06d8\u06e6\u06d8\u06e6\u06d9\u06e5\u06e0\u06e2\u06ec\u06e2\u06db\u06eb"

    goto :goto_0

    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u06df\u06df\u06da\u06df\u06e1\u06d7\u06d6\u06df\u06ec\u06e0\u06e7\u06d9\u06e8\u06e4\u06e7\u06e8\u06d6\u06dc\u06d8\u06d8\u06d8\u06da\u06e7\u06e8\u06d8\u06dc\u06e2\u06e0\u06d9\u06d9\u06db"

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/cyjh/elfin/entity/BestResolution;->X:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u06e6\u06e7\u06e5\u06d8\u06df\u06e5\u06e6\u06d8\u06d8\u06d9\u06e8\u06ec\u06d8\u06df\u06df\u06e7\u06db\u06e0\u06dc\u06e2\u06e2\u06da\u06da\u06e5\u06eb\u06e8\u06d8\u06db\u06e8\u06dc\u06ec\u06e6\u06dc\u06d8\u06d8\u06e1\u06dc\u06d8\u06e2\u06dc\u06ec\u06d7\u06e8\u06e6\u06d8\u06eb\u06dc\u06e6"

    goto :goto_0

    :sswitch_3
    const-string v0, "X"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e5\u06df\u06e6\u06d8\u06e6\u06da\u06e1\u06e0\u06dc\u06d7\u06ec\u06df\u06e0\u06d6\u06eb\u06e8\u06df\u06d6\u06e7\u06d8\u06db\u06e7\u06e2\u06ec\u06d9\u06e6\u06d6\u06e7\u06db\u06e4\u06d6\u06e6"

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lcom/cyjh/elfin/entity/BestResolution;->Y:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u06e1\u06e2\u06e0\u06e8\u06da\u06e0\u06d6\u06da\u06e5\u06d8\u06e1\u06d7\u06ec\u06e2\u06d9\u06eb\u06d9\u06d6\u06e6\u06d9\u06e2\u06e6\u06d8\u06e2\u06e0\u06d7\u06eb\u06e8\u06d8\u06dc\u06d6\u06e7\u06d8\u06e4\u06e4\u06e1\u06d7\u06df\u06dc"

    goto :goto_0

    :sswitch_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x495d08be -> :sswitch_5
        -0x2cd18fe9 -> :sswitch_4
        -0x13e84e23 -> :sswitch_0
        0x1530728b -> :sswitch_2
        0x171f7f7f -> :sswitch_3
        0x4777ead2 -> :sswitch_1
    .end sparse-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string v0, "\u06ec\u06e5\u06e5\u06eb\u06e5\u06e4\u06df\u06d9\u06ec\u06e7\u06d7\u06d6\u06d8\u06df\u06df\u06e8\u06d7\u06e6\u06df\u06e7\u06e4\u06e8\u06db\u06d6\u06da\u06da\u06e4\u06d7\u06db\u06e8\u06e1\u06d6\u06e2\u06e2\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2cb

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x246

    const/16 v2, 0x2b9

    const v3, -0x6a5a4789

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06e1\u06d8\u06d8\u06d8\u06df\u06e0\u06d6\u06d8\u06e8\u06dc\u06df\u06eb\u06e4\u06e2\u06d6\u06d8\u06d8\u06e6\u06ec\u06d6\u06d8\u06d8\u06da\u06d8\u06e5\u06eb\u06eb\u06d6\u06d7\u06e0\u06e2\u06db\u06eb\u06e4\u06e4\u06d7\u06d9"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e7\u06dc\u06e0\u06d7\u06da\u06e5\u06d8\u06e2\u06d7\u06da\u06e8\u06da\u06e8\u06d8\u06d7\u06d7\u06d8\u06d8\u06eb\u06db\u06e5\u06e4\u06eb\u06e5\u06d8\u06e8\u06e0\u06e7\u06e4\u06d8\u06e6\u06d8\u06ec\u06d6\u06e6\u06e7\u06d8\u06e5\u06d8\u06eb\u06ec\u06d8\u06e5\u06e5\u06da\u06e1\u06da\u06e0"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e0\u06df\u06d9\u06da\u06eb\u06d6\u06d8\u06d9\u06e0\u06e6\u06d8\u06da\u06d6\u06d8\u06e7\u06ec\u06e4\u06e8\u06db\u06e8\u06d8\u06e0\u06db\u06e5\u06e1\u06e5\u06db\u06d9\u06d9\u06e1\u06e8\u06e4\u06dc\u06e4\u06e6\u06e2\u06d9\u06e8\u06e5\u06e4\u06e6\u06d8\u06ec\u06e1\u06db\u06eb\u06dc\u06e8\u06d8\u06e0\u06e6\u06e6\u06d8\u06e1\u06db\u06e6\u06d8\u06d9\u06eb\u06d8"

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcom/cyjh/elfin/entity/BestResolution;->X:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const-string v0, "\u06e5\u06e1\u06d6\u06eb\u06d9\u06e6\u06e0\u06eb\u06e8\u06d8\u06e7\u06e2\u06d6\u06eb\u06e6\u06d6\u06d8\u06df\u06dc\u06e4\u06e0\u06e0\u06d6\u06eb\u06db\u06e1\u06e0\u06e4\u06e7\u06da\u06d6\u06e0\u06e6\u06e0\u06d8\u06d8\u06dc\u06e1\u06dc\u06e0\u06d7\u06dc\u06e0\u06ec\u06d8\u06dc\u06eb\u06d8\u06e5\u06df\u06e8\u06d8\u06da\u06e0\u06dc\u06db\u06e8\u06db"

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lcom/cyjh/elfin/entity/BestResolution;->Y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const-string v0, "\u06d7\u06e8\u06d6\u06e8\u06dc\u06e4\u06e8\u06e7\u06d8\u06e8\u06e4\u06d8\u06e0\u06d7\u06e1\u06d8\u06d7\u06e5\u06e6\u06d8\u06db\u06e5\u06d6\u06d8\u06e2\u06d9\u06d9\u06e7\u06df\u06e1\u06d8\u06e1\u06e6\u06e7\u06d8\u06df\u06e5\u06d6\u06d6\u06e6\u06dc\u06db\u06e5\u06db\u06e8\u06e7\u06e8\u06d8"

    goto :goto_0

    :sswitch_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x735fd013 -> :sswitch_0
        -0x5a4ededa -> :sswitch_5
        -0x1ea864a0 -> :sswitch_3
        -0x12b8f40d -> :sswitch_2
        0x26ce0e68 -> :sswitch_4
        0x759f651d -> :sswitch_1
    .end sparse-switch
.end method
