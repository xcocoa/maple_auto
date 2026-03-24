.class public Lcom/cyjh/elfin/entity/FileVersion;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cyjh/elfin/entity/FileVersion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public atc:I

.field public mq:I

.field public prop:I

.field public rtd:I

.field public ui:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "\u06dc\u06d8\u06e2\u06da\u06ec\u06d9\u06df\u06df\u06e6\u06d8\u06df\u06d9\u06eb\u06db\u06e5\u06e7\u06e6\u06e4\u06da\u06e2\u06d8\u06df\u06ec\u06e7\u06dc\u06da\u06d6\u06d8\u06eb\u06da\u06e6\u06d8\u06da\u06e1\u06e4\u06e5\u06e2\u06e8\u06e4\u06dc\u06e8\u06d8\u06d8\u06dc\u06e7\u06da\u06d9\u06d8\u06e5\u06e4\u06d6\u06e4\u06e0\u06e2\u06e5\u06dc\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3d2

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xad

    const/16 v2, 0x13d

    const v3, 0x7a4ddb9a

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance v0, Lcom/cyjh/elfin/entity/FileVersion$1;

    invoke-direct {v0}, Lcom/cyjh/elfin/entity/FileVersion$1;-><init>()V

    sput-object v0, Lcom/cyjh/elfin/entity/FileVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v0, "\u06d7\u06e6\u06eb\u06df\u06e6\u06e6\u06d8\u06eb\u06e4\u06db\u06e1\u06e5\u06d7\u06e1\u06d9\u06e6\u06d7\u06e1\u06da\u06dc\u06dc\u06d8\u06db\u06e8\u06dc\u06d8\u06eb\u06db\u06e2\u06e0\u06d8\u06da\u06d6\u06db\u06e5\u06d6\u06d8\u06e7\u06df\u06e2\u06e0\u06eb\u06e8\u06d8"

    goto :goto_0

    :sswitch_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ab4db7a -> :sswitch_0
        0x6d773934 -> :sswitch_1
    .end sparse-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/cyjh/elfin/entity/FileVersion;->atc:I

    iput p2, p0, Lcom/cyjh/elfin/entity/FileVersion;->mq:I

    iput p3, p0, Lcom/cyjh/elfin/entity/FileVersion;->prop:I

    iput p4, p0, Lcom/cyjh/elfin/entity/FileVersion;->ui:I

    iput p5, p0, Lcom/cyjh/elfin/entity/FileVersion;->rtd:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    const-string v0, "\u06d7\u06e8\u06e5\u06d8\u06eb\u06da\u06e4\u06d6\u06e8\u06df\u06e6\u06d6\u06d8\u06e2\u06d8\u06e0\u06e4\u06d8\u06ec\u06d6\u06e2\u06e7\u06dc\u06df\u06dc\u06d8\u06d8\u06d7\u06e1\u06d8\u06d8\u06d8\u06e5\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xa9

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xba

    const/16 v2, 0x247

    const v3, -0x5f3b1f77

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06d8\u06e5\u06d7\u06df\u06df\u06ec\u06d8\u06e1\u06d8\u06da\u06db\u06e6\u06e6\u06e8\u06dc\u06d8\u06dc\u06e4\u06dc\u06d7\u06e5\u06d8\u06d8\u06d6\u06e0\u06e7\u06e8\u06e5\u06e5\u06dc\u06e1\u06df\u06da\u06d6\u06d8\u06e5\u06e5\u06d9\u06dc\u06d6\u06db\u06df\u06d8\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2993122c -> :sswitch_0
        -0x137a5be9 -> :sswitch_1
    .end sparse-switch
.end method

.method public getAtc()I
    .locals 4

    const-string v0, "\u06db\u06dc\u06d8\u06e4\u06eb\u06d7\u06d9\u06d6\u06e7\u06e4\u06da\u06e8\u06d8\u06e8\u06eb\u06e5\u06e6\u06db\u06e5\u06e2\u06e7\u06e7\u06eb\u06e8\u06d6\u06d8\u06d7\u06d9\u06db\u06e1\u06e1\u06e7\u06e7\u06da\u06d6\u06d8\u06e0\u06e6\u06e1\u06dc\u06e6\u06d9\u06e7\u06e6\u06dc\u06d7\u06e6\u06dc\u06e6\u06d6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x40

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x34d

    const/16 v2, 0x223

    const v3, -0x24562578

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06df\u06e7\u06e1\u06e5\u06d8\u06e8\u06d7\u06e6\u06d8\u06d7\u06e0\u06df\u06d8\u06d6\u06e4\u06d8\u06e6\u06e5\u06d8\u06e0\u06e2\u06e6\u06e5\u06dc\u06e1\u06ec\u06df\u06e5\u06d8\u06e1\u06d7\u06e2\u06d8\u06e7\u06e8\u06e6\u06d8\u06e4\u06e8\u06d7\u06e6\u06ec\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/cyjh/elfin/entity/FileVersion;->atc:I

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x59ae418e -> :sswitch_1
        -0x4eaa8ecb -> :sswitch_0
    .end sparse-switch
.end method

.method public getMq()I
    .locals 4

    const-string v0, "\u06e5\u06df\u06eb\u06da\u06da\u06d6\u06da\u06d8\u06e4\u06d7\u06e7\u06e5\u06d8\u06ec\u06e4\u06e2\u06d9\u06e1\u06d8\u06da\u06d7\u06dc\u06df\u06e4\u06db\u06eb\u06da\u06d6\u06d8\u06e7\u06db\u06e0\u06d7\u06db\u06e7\u06d9\u06df\u06d7\u06eb\u06e6\u06dc\u06d8\u06db\u06d8\u06ec\u06e8\u06e6\u06e7\u06e4\u06e5\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x39b

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x17c

    const/16 v2, 0x202

    const v3, 0x385a7552

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06e8\u06d6\u06dc\u06d9\u06d7\u06d9\u06df\u06dc\u06d8\u06df\u06e4\u06d8\u06eb\u06e7\u06eb\u06dc\u06d6\u06e5\u06e8\u06df\u06dc\u06d8\u06e6\u06db\u06e4\u06eb\u06dc\u06da\u06e4\u06e2\u06e6\u06d8\u06db\u06e7\u06e2\u06e5\u06e6\u06e1\u06d8\u06e6\u06ec\u06d6\u06d8\u06e1\u06e5\u06d9"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/cyjh/elfin/entity/FileVersion;->mq:I

    return v0

    :sswitch_data_0
    .sparse-switch
        0xa95bfc6 -> :sswitch_0
        0x28e9ab12 -> :sswitch_1
    .end sparse-switch
.end method

.method public getProp()I
    .locals 4

    const-string v0, "\u06db\u06eb\u06e7\u06d9\u06e2\u06e5\u06e0\u06db\u06e8\u06d8\u06e8\u06e0\u06eb\u06e2\u06d7\u06e8\u06e5\u06da\u06d9\u06df\u06e6\u06e5\u06d8\u06d9\u06e5\u06df\u06e4\u06df\u06d6\u06d8\u06e7\u06eb\u06e0\u06dc\u06e5\u06e6\u06d8\u06e1\u06dc\u06dc\u06d8\u06eb\u06d6\u06e4\u06e2\u06e7\u06e6\u06e1\u06d9\u06e5\u06d8\u06d9\u06e8\u06d8\u06d7\u06d9\u06e2\u06d6\u06e0\u06e0"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x38a

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3c5

    const/16 v2, 0x4d

    const v3, 0x53c0f8fb

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06d9\u06dc\u06dc\u06db\u06da\u06d6\u06d8\u06e7\u06db\u06d9\u06e0\u06df\u06dc\u06d8\u06d7\u06eb\u06e6\u06e6\u06db\u06df\u06d7\u06e8\u06e0\u06e6\u06d6\u06e0\u06e1\u06d7\u06e8\u06eb\u06e0\u06e0\u06ec\u06e0\u06e7\u06eb\u06da\u06d7\u06e8\u06e4\u06e8\u06d7\u06d8\u06d8\u06d6\u06d8\u06e5\u06e4\u06e0\u06df\u06d7\u06d7\u06db"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/cyjh/elfin/entity/FileVersion;->prop:I

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x625bb206 -> :sswitch_1
        -0x27d3e5e7 -> :sswitch_0
    .end sparse-switch
.end method

.method public getRtd()I
    .locals 4

    const-string v0, "\u06da\u06d7\u06dc\u06d8\u06d8\u06da\u06e0\u06e8\u06e1\u06eb\u06e5\u06e6\u06da\u06d8\u06db\u06e8\u06dc\u06db\u06dc\u06ec\u06dc\u06d8\u06d6\u06e8\u06d6\u06e6\u06ec\u06e8\u06dc\u06da\u06e1\u06d8\u06d6\u06da\u06ec\u06e4\u06d7\u06d8\u06e5\u06db\u06e1\u06e0\u06e0\u06dc\u06e1\u06d7\u06e6\u06e2\u06e8\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x21b

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xeb

    const/16 v2, 0x1b0

    const v3, 0x2500cdf8

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06e8\u06e2\u06d7\u06d9\u06e1\u06d8\u06dc\u06dc\u06e1\u06df\u06e7\u06e6\u06d8\u06e5\u06ec\u06e8\u06e6\u06e6\u06e1\u06d8\u06df\u06e6\u06d8\u06d9\u06e6\u06e4\u06eb\u06e6\u06dc\u06d8\u06dc\u06e2\u06e6\u06d8\u06e0\u06df\u06e4\u06e0\u06d7\u06e1"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/cyjh/elfin/entity/FileVersion;->rtd:I

    return v0

    :sswitch_data_0
    .sparse-switch
        0x171fe9bd -> :sswitch_1
        0x26ffdb72 -> :sswitch_0
    .end sparse-switch
.end method

.method public getUi()I
    .locals 4

    const-string v0, "\u06ec\u06da\u06e5\u06e5\u06ec\u06e5\u06d8\u06e6\u06dc\u06da\u06d7\u06e4\u06e5\u06e1\u06e0\u06db\u06e4\u06e2\u06e1\u06d8\u06e0\u06d6\u06e2\u06e2\u06d7\u06d8\u06d8\u06e8\u06ec\u06df\u06d8\u06da\u06e8\u06d8\u06e1\u06e0\u06ec\u06d7\u06e5\u06d8\u06e8\u06d6\u06dc\u06d8\u06e7\u06e8\u06e5"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x14a

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1ac

    const/16 v2, 0x2af

    const v3, 0xee7758a

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06da\u06d6\u06d8\u06df\u06ec\u06d8\u06d8\u06e0\u06eb\u06e1\u06e2\u06e7\u06d9\u06e6\u06e7\u06dc\u06d8\u06d7\u06d8\u06d6\u06ec\u06eb\u06eb\u06e1\u06e7\u06da\u06e1\u06ec\u06df\u06e7\u06ec\u06d7\u06dc\u06eb\u06e8\u06d8\u06db\u06e4\u06d9\u06da\u06e1\u06e2\u06e2\u06e2\u06e1\u06d8\u06d9\u06d9\u06e5\u06d9\u06d8\u06eb\u06e1\u06e8\u06e8\u06db\u06d9\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/cyjh/elfin/entity/FileVersion;->ui:I

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x618b4334 -> :sswitch_1
        0x52030e46 -> :sswitch_0
    .end sparse-switch
.end method

.method public setAtc(I)V
    .locals 4

    const-string v0, "\u06e8\u06d6\u06e8\u06d8\u06e6\u06e1\u06d6\u06d8\u06e6\u06e0\u06e0\u06da\u06e4\u06da\u06db\u06ec\u06d9\u06e5\u06e1\u06e4\u06d7\u06ec\u06e8\u06d8\u06dc\u06d6\u06e7\u06d8\u06e1\u06d9\u06df\u06e6\u06ec\u06e7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x349

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x182

    const/16 v2, 0x3c3

    const v3, -0x5a7026bc

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06d8\u06d6\u06dc\u06d9\u06e4\u06df\u06e1\u06e7\u06d8\u06d7\u06e4\u06d8\u06d9\u06e8\u06d8\u06d7\u06e6\u06eb\u06eb\u06d8\u06ec\u06eb\u06e7\u06d9\u06db\u06e2\u06eb\u06e7\u06d9\u06d9"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e5\u06e8\u06ec\u06d9\u06e8\u06e5\u06d8\u06e8\u06d8\u06ec\u06e7\u06df\u06e6\u06d8\u06eb\u06e6\u06e8\u06eb\u06ec\u06e1\u06eb\u06e8\u06d9\u06da\u06d6\u06e2\u06df\u06ec\u06e8\u06e5\u06e2\u06d8\u06da\u06dc\u06e4\u06d9\u06e5\u06d8\u06e1\u06e0\u06e0\u06d8\u06df\u06ec\u06e7\u06e6\u06ec\u06d8\u06df\u06d8\u06d8"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/cyjh/elfin/entity/FileVersion;->atc:I

    const-string v0, "\u06eb\u06eb\u06e5\u06d8\u06dc\u06da\u06e4\u06e6\u06d7\u06dc\u06d8\u06db\u06e0\u06ec\u06e5\u06e8\u06d6\u06e8\u06df\u06e8\u06d8\u06e6\u06dc\u06dc\u06d9\u06e8\u06da\u06eb\u06e4\u06e7\u06e8\u06d8\u06d8\u06e7\u06e7\u06e5\u06d8\u06d8\u06dc\u06dc\u06df\u06d9\u06e1\u06d8\u06e5\u06d8\u06d8\u06e6\u06da\u06db\u06e5\u06e1\u06e8\u06d8\u06ec\u06e7\u06e8\u06d8\u06e4\u06e4\u06ec"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6acf319e -> :sswitch_2
        0x14f2be7 -> :sswitch_1
        0x1cfbabc3 -> :sswitch_3
        0x4a1765a3 -> :sswitch_0
    .end sparse-switch
.end method

.method public setMq(I)V
    .locals 4

    const-string v0, "\u06e4\u06df\u06e6\u06d8\u06eb\u06d8\u06ec\u06e5\u06d8\u06d9\u06e2\u06ec\u06d6\u06d8\u06e6\u06db\u06e2\u06e1\u06df\u06d6\u06d8\u06e7\u06db\u06e4\u06e8\u06e1\u06d8\u06d8\u06d6\u06eb\u06d8\u06d8\u06df\u06eb\u06d6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x362

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x163

    const/16 v2, 0x245

    const v3, -0x1c66aaac    # -5.657001E21f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06d9\u06e7\u06d9\u06db\u06eb\u06d6\u06db\u06df\u06e2\u06e8\u06e1\u06d8\u06e1\u06e6\u06e7\u06d7\u06d7\u06e2\u06e2\u06d7\u06d8\u06e1\u06e7\u06e8\u06d8\u06e8\u06e7\u06e8\u06d8\u06e6\u06e0\u06e1\u06d8\u06db\u06d7\u06df\u06e5\u06e8\u06ec\u06e1\u06e8\u06d6\u06d8\u06e8\u06d9\u06e6\u06d8\u06e7\u06e4\u06e0\u06e4\u06d7\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d8\u06e7\u06e2\u06e0\u06da\u06dc\u06d9\u06da\u06d6\u06d8\u06e1\u06e6\u06ec\u06dc\u06e0\u06d9\u06e7\u06db\u06d8\u06d8\u06d7\u06e7\u06e6\u06d8\u06eb\u06d8\u06dc\u06d8\u06d9\u06dc\u06d8\u06e8\u06e4\u06d7\u06e2\u06e7\u06e7\u06ec\u06e4"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/cyjh/elfin/entity/FileVersion;->mq:I

    const-string v0, "\u06d6\u06e8\u06db\u06e5\u06e5\u06df\u06d6\u06e6\u06e5\u06d8\u06eb\u06da\u06d9\u06db\u06d6\u06e4\u06db\u06d7\u06e1\u06d8\u06e7\u06e2\u06e5\u06e0\u06dc\u06d9\u06e8\u06e5\u06e8\u06db\u06e1\u06e1\u06e8\u06da\u06e5\u06eb\u06db\u06e8\u06d8\u06da\u06df\u06e6\u06df\u06e8\u06e5\u06e1\u06e6\u06d8\u06d9\u06eb\u06df"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6f383f11 -> :sswitch_0
        -0x1710e316 -> :sswitch_3
        0x1838be25 -> :sswitch_2
        0x33a2c89a -> :sswitch_1
    .end sparse-switch
.end method

.method public setProp(I)V
    .locals 4

    const-string v0, "\u06e1\u06e6\u06e5\u06da\u06dc\u06d8\u06d8\u06e0\u06eb\u06e1\u06e4\u06da\u06e1\u06d8\u06e8\u06db\u06da\u06d8\u06e8\u06df\u06e5\u06db\u06eb\u06d9\u06e4\u06e0\u06e4\u06e5\u06eb\u06d9\u06ec\u06d9\u06d8\u06d6\u06dc\u06d8\u06e6\u06dc\u06e0\u06eb\u06dc\u06d6\u06d6\u06d6\u06da\u06e6\u06ec\u06dc\u06e1\u06e4\u06e2\u06ec\u06e8\u06e1\u06e5"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x169

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x31e

    const/16 v2, 0x26

    const v3, -0x56f8262

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06d9\u06e7\u06e4\u06df\u06e6\u06d8\u06dc\u06ec\u06d7\u06e2\u06d6\u06d8\u06e0\u06eb\u06dc\u06d8\u06eb\u06ec\u06eb\u06d8\u06df\u06e1\u06e6\u06e6\u06db\u06e6\u06e8\u06da\u06da\u06e1\u06e0\u06e7\u06e2\u06e0\u06e7\u06e2\u06e0\u06e1\u06e5\u06da\u06e4\u06e5\u06e4"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06df\u06d7\u06e5\u06e7\u06d6\u06e8\u06d8\u06ec\u06e6\u06d8\u06d8\u06d7\u06da\u06e4\u06e7\u06dc\u06d6\u06dc\u06d8\u06db\u06d8\u06e2\u06e8\u06d8\u06e0\u06ec\u06d6\u06d8\u06ec\u06d8\u06e8\u06d8\u06e1\u06d8\u06dc\u06d8"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/cyjh/elfin/entity/FileVersion;->prop:I

    const-string v0, "\u06dc\u06e4\u06df\u06e0\u06ec\u06da\u06df\u06e2\u06ec\u06d6\u06d8\u06e2\u06e7\u06df\u06d8\u06e4\u06dc\u06dc\u06d8\u06db\u06e0\u06d8\u06e0\u06db\u06e6\u06e7\u06d8\u06d9\u06e6\u06dc\u06df\u06d7\u06df\u06da\u06e4\u06d9\u06e8\u06d8\u06e0\u06d7\u06d8\u06d8\u06e7\u06d6\u06e6\u06e2\u06e0\u06e5\u06d7\u06dc\u06e7\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7d1b62da -> :sswitch_0
        -0x110e5a6 -> :sswitch_3
        0x493515f1 -> :sswitch_1
        0x7641733f -> :sswitch_2
    .end sparse-switch
.end method

.method public setRtd(I)V
    .locals 4

    const-string v0, "\u06df\u06e2\u06e4\u06da\u06d8\u06dc\u06d8\u06e0\u06eb\u06db\u06eb\u06e7\u06e7\u06e7\u06e1\u06e1\u06d8\u06dc\u06ec\u06e8\u06e0\u06db\u06e5\u06d8\u06e6\u06e5\u06eb\u06e0\u06d6\u06eb\u06d7\u06e1"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x47

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x152

    const/16 v2, 0x35f

    const v3, -0x746a0c7d

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06d9\u06e0\u06e4\u06d9\u06eb\u06dc\u06d7\u06e1\u06e8\u06e5\u06e5\u06d8\u06eb\u06e0\u06e8\u06d8\u06ec\u06ec\u06e5\u06dc\u06eb\u06dc\u06df\u06e4\u06e8\u06d6\u06eb\u06df\u06e6\u06e0\u06d9\u06e5\u06e6\u06d8\u06d7\u06e0\u06df\u06db\u06df\u06dc\u06dc\u06d8\u06d6"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e6\u06e1\u06e4\u06e7\u06d9\u06d6\u06d8\u06eb\u06d7\u06db\u06da\u06da\u06da\u06eb\u06e8\u06e0\u06e4\u06db\u06e2\u06db\u06db\u06e7\u06e7\u06e7\u06d6\u06e2\u06d7\u06da\u06dc\u06ec\u06dc\u06df\u06d9\u06e0\u06dc\u06dc\u06d8\u06e8\u06db\u06e5\u06d8\u06e8\u06e4\u06e5\u06d8\u06e0\u06e6\u06dc\u06d8\u06e8\u06e5"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/cyjh/elfin/entity/FileVersion;->rtd:I

    const-string v0, "\u06da\u06e6\u06e7\u06d8\u06e5\u06dc\u06d8\u06d8\u06da\u06e2\u06d8\u06e7\u06eb\u06e2\u06e7\u06d9\u06dc\u06d8\u06d8\u06da\u06e0\u06e2\u06d8\u06e2\u06ec\u06db\u06dc\u06e6\u06e1\u06e1\u06df\u06e5\u06e7\u06d8\u06d7\u06da\u06e1\u06df\u06eb\u06e0"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4978195b -> :sswitch_2
        -0x3a3783d3 -> :sswitch_3
        0x6087ba8f -> :sswitch_1
        0x6442173b -> :sswitch_0
    .end sparse-switch
.end method

.method public setUI(I)V
    .locals 4

    const-string v0, "\u06d6\u06df\u06db\u06d8\u06d8\u06df\u06e4\u06d7\u06e1\u06d8\u06e6\u06db\u06e6\u06dc\u06e6\u06d8\u06e6\u06db\u06eb\u06e2\u06e6\u06d8\u06e0\u06e2\u06eb\u06d9\u06ec\u06e0\u06e8\u06ec\u06da\u06d8\u06d9\u06e6\u06e4\u06e7\u06d6\u06e1\u06d8\u06e8\u06e0\u06d8\u06e4\u06d9\u06e6\u06d8\u06db\u06e5\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3a9

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x38b

    const/16 v2, 0x7c

    const v3, 0x42320e8d

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06e8\u06e5\u06d8\u06ec\u06e0\u06d9\u06e2\u06d9\u06e2\u06d8\u06d6\u06e1\u06e7\u06e8\u06df\u06e7\u06d9\u06e0\u06ec\u06d8\u06d6\u06d8\u06d8\u06d8\u06e1\u06e6\u06dc\u06da\u06dc\u06d9\u06dc\u06d8\u06df\u06e1\u06e6\u06d8\u06e7\u06d8\u06e4"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e5\u06e6\u06e6\u06da\u06da\u06e2\u06e5\u06d6\u06d8\u06e1\u06e4\u06d7\u06e4\u06db\u06d8\u06d8\u06e7\u06da\u06e5\u06e0\u06d7\u06e6\u06db\u06e0\u06e5\u06d8\u06e7\u06e6\u06e1\u06d8\u06e4\u06e1\u06e7\u06d8"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/cyjh/elfin/entity/FileVersion;->ui:I

    const-string v0, "\u06d7\u06ec\u06e8\u06e4\u06e7\u06e7\u06d6\u06e0\u06e6\u06e4\u06e0\u06df\u06da\u06e5\u06d9\u06d7\u06e6\u06e2\u06da\u06da\u06d8\u06e0\u06e8\u06d8\u06e8\u06e5\u06d6\u06d8\u06db\u06dc\u06e6\u06da\u06ec\u06e1\u06d8\u06d9\u06e7\u06d7"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x77d29de4 -> :sswitch_3
        -0x6c7ec3ec -> :sswitch_1
        0x1da7530d -> :sswitch_0
        0x336f4a69 -> :sswitch_2
    .end sparse-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string v0, "\u06db\u06d7\u06dc\u06dc\u06d9\u06df\u06e1\u06d8\u06d8\u06d8\u06e1\u06d7\u06e7\u06e0\u06d8\u06e5\u06da\u06db\u06dc\u06e7\u06d8\u06e6\u06d7\u06e1\u06e2\u06e4\u06d8\u06d8\u06da\u06ec\u06d9\u06d6\u06d8\u06d7\u06e6\u06df\u06e6\u06d8\u06ec\u06da\u06e7\u06e1\u06d7\u06e1"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x182

    const/16 v2, 0x30b

    const v3, -0x54c21c16

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06eb\u06d6\u06eb\u06e8\u06eb\u06df\u06eb\u06ec\u06d7\u06e6\u06d8\u06e8\u06e4\u06db\u06d6\u06d7\u06e5\u06d8\u06eb\u06d8\u06df\u06e4\u06e4\u06d8\u06da\u06e1\u06da\u06e6\u06e6\u06e7\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d8\u06da\u06da\u06e7\u06e2\u06ec\u06da\u06d6\u06eb\u06d9\u06e1\u06e2\u06e5\u06e8\u06e5\u06d8\u06da\u06d8\u06e7\u06d8\u06dc\u06d6\u06e5\u06d8\u06dc\u06ec\u06dc\u06dc\u06db\u06d6\u06d8\u06dc\u06dc\u06db\u06e4\u06e5\u06e7\u06dc\u06db\u06d9"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06df\u06df\u06d7\u06da\u06eb\u06d6\u06eb\u06e5\u06e1\u06d8\u06e8\u06e6\u06d8\u06d8\u06e2\u06eb\u06dc\u06d8\u06e2\u06e5\u06da\u06df\u06e6\u06d7\u06d7\u06e5\u06dc\u06d8\u06da\u06e1\u06ec\u06dc\u06e4\u06e5\u06d8\u06e8\u06db\u06d6\u06d8\u06dc\u06e8"

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcom/cyjh/elfin/entity/FileVersion;->atc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const-string v0, "\u06da\u06e5\u06eb\u06e4\u06d7\u06e6\u06dc\u06e2\u06db\u06da\u06e1\u06e6\u06e4\u06d9\u06df\u06e4\u06d7\u06db\u06e2\u06d8\u06d6\u06d8\u06ec\u06d9\u06d7\u06e6\u06e1\u06db\u06e7\u06d6\u06da"

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lcom/cyjh/elfin/entity/FileVersion;->mq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const-string v0, "\u06e1\u06d6\u06e5\u06d8\u06df\u06d8\u06d9\u06e6\u06df\u06d6\u06df\u06e8\u06e6\u06e5\u06e4\u06e6\u06e2\u06d6\u06ec\u06d7\u06eb\u06eb\u06e1\u06df\u06dc\u06d8\u06df\u06d9\u06e1\u06e2\u06dc\u06d6\u06e5\u06e4\u06e2\u06e2\u06e1\u06d6\u06d8\u06d6\u06e8\u06d9\u06e5\u06e7\u06d8"

    goto :goto_0

    :sswitch_5
    iget v0, p0, Lcom/cyjh/elfin/entity/FileVersion;->prop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const-string v0, "\u06eb\u06d6\u06e4\u06e6\u06e6\u06db\u06d6\u06d9\u06d6\u06d8\u06e0\u06da\u06e6\u06d8\u06db\u06d8\u06e5\u06d7\u06dc\u06e0\u06ec\u06e6\u06db\u06ec\u06ec\u06e2\u06e5\u06e4\u06d8\u06d8\u06da\u06d9\u06e2"

    goto :goto_0

    :sswitch_6
    iget v0, p0, Lcom/cyjh/elfin/entity/FileVersion;->ui:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const-string v0, "\u06e4\u06d7\u06d8\u06e1\u06d8\u06db\u06d8\u06d8\u06e8\u06e0\u06e7\u06db\u06e0\u06e6\u06eb\u06d7\u06d7\u06e4\u06e7\u06e8\u06d8\u06e8\u06d9\u06e6\u06d8\u06ec\u06e8\u06e6\u06d8\u06e2\u06dc\u06e7\u06d8\u06e6\u06e0\u06d8\u06d9\u06ec\u06d7\u06dc\u06d7\u06e0\u06e2\u06e4\u06df"

    goto :goto_0

    :sswitch_7
    iget v0, p0, Lcom/cyjh/elfin/entity/FileVersion;->rtd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const-string v0, "\u06e2\u06db\u06d7\u06dc\u06dc\u06e2\u06d9\u06d7\u06e2\u06e6\u06e2\u06d6\u06d8\u06eb\u06d9\u06e7\u06eb\u06e4\u06d7\u06e8\u06d8\u06d8\u06d9\u06d8\u06d9\u06e4\u06e1\u06e4\u06e0\u06ec\u06e8\u06e1\u06df\u06d8\u06e2\u06e2\u06e8\u06d8"

    goto :goto_0

    :sswitch_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x714b4d9f -> :sswitch_7
        -0x6ed15a25 -> :sswitch_1
        -0x4284b246 -> :sswitch_3
        -0x41e71905 -> :sswitch_6
        -0x35a28e22 -> :sswitch_2
        -0x132f439a -> :sswitch_8
        -0xef2bd5c -> :sswitch_4
        0x2681580 -> :sswitch_0
        0x6096a5b0 -> :sswitch_5
    .end sparse-switch
.end method
