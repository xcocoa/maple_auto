.class public Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0O0;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elfin/ad/bean/response/FengLingAdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0O0"
.end annotation


# instance fields
.field private OooO00o:I

.field private OooO0O0:I

.field private OooO0OO:Ljava/lang/String;

.field public final OooO0Oo:Lcom/elfin/ad/bean/response/FengLingAdInfo;


# direct methods
.method public constructor <init>(Lcom/elfin/ad/bean/response/FengLingAdInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0O0;->OooO0Oo:Lcom/elfin/ad/bean/response/FengLingAdInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()I
    .locals 4

    const-string v0, "\u06e8\u06e7\u06e5\u06e8\u06e1\u06e4\u06e1\u06e6\u06d6\u06d7\u06df\u06da\u06e7\u06d7\u06d6\u06d8\u06e0\u06d9\u06df\u06e6\u06eb\u06d9\u06d6\u06e6\u06d8\u06d8\u06e2\u06e8\u06d8\u06dc\u06d7\u06e6\u06d8\u06e6\u06d8\u06eb\u06e5\u06e0\u06d8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2eb

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x54

    const/16 v2, 0x140

    const v3, 0x6a86b746

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06df\u06e8\u06d8\u06dc\u06dc\u06e5\u06e7\u06e5\u06e0\u06ec\u06df\u06e8\u06d8\u06ec\u06e1\u06da\u06e1\u06d7\u06d6\u06e6\u06e8\u06d6\u06d9\u06e4\u06e5\u06db\u06dc\u06e6\u06d8\u06e4\u06da\u06e1\u06d8\u06e0\u06e7\u06e6\u06db\u06df\u06e1\u06d8\u06ec\u06ec\u06e6\u06dc\u06e2\u06e1\u06e5\u06e5\u06e6\u06e8\u06dc\u06d8\u06e8\u06e7\u06e1\u06d8\u06d7\u06eb\u06d8"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0O0;->OooO00o:I

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x5f55108e -> :sswitch_0
        0x17332496 -> :sswitch_1
    .end sparse-switch
.end method

.method public OooO0O0()Ljava/lang/String;
    .locals 4

    const-string v0, "\u06eb\u06d6\u06d7\u06e2\u06d8\u06e1\u06e2\u06dc\u06ec\u06db\u06da\u06d8\u06d8\u06e5\u06e6\u06da\u06db\u06dc\u06e1\u06e4\u06db\u06e1\u06d8\u06e2\u06d6\u06e6\u06d8\u06ec\u06eb\u06df\u06e4\u06e8\u06db\u06e6\u06d8\u06d8\u06eb\u06da\u06e5"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x30e

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x177

    const/16 v2, 0x4f

    const v3, 0x70f7314b

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06df\u06dc\u06d8\u06e7\u06e7\u06dc\u06d7\u06e0\u06d8\u06e7\u06e8\u06e5\u06d7\u06dc\u06e2\u06e4\u06d8\u06e2\u06d9\u06db\u06eb\u06d8\u06ec\u06e0\u06e6\u06e7\u06e5\u06e1\u06d9\u06e5"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0O0;->OooO0OO:Ljava/lang/String;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x274cd651 -> :sswitch_1
        0x39ef66c9 -> :sswitch_0
    .end sparse-switch
.end method

.method public OooO0OO()I
    .locals 4

    const-string v0, "\u06e5\u06dc\u06ec\u06dc\u06e1\u06df\u06e7\u06e0\u06e0\u06d8\u06e7\u06dc\u06d8\u06d9\u06dc\u06e6\u06d8\u06d7\u06db\u06d7\u06e7\u06e7\u06d9\u06e6\u06da\u06e0\u06d6\u06d6\u06eb\u06dc\u06dc\u06e2\u06e7\u06e7\u06da\u06e6\u06db\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xd4

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x10

    const/16 v2, 0x99

    const v3, -0x2703cd6d

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06d9\u06e6\u06e2\u06e0\u06d8\u06d9\u06e8\u06d8\u06e8\u06da\u06e1\u06e1\u06df\u06d7\u06e2\u06e1\u06e1\u06d7\u06e8\u06e8\u06e5\u06da\u06d8\u06d8\u06d7\u06d9\u06e6\u06e5\u06e7"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0O0;->OooO0O0:I

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x5752afe2 -> :sswitch_1
        0x3b4700a9 -> :sswitch_0
    .end sparse-switch
.end method

.method public OooO0Oo(I)V
    .locals 4

    const-string v0, "\u06e4\u06dc\u06e8\u06d8\u06e0\u06e6\u06e5\u06d8\u06e7\u06db\u06e5\u06e0\u06e1\u06d8\u06d8\u06eb\u06e0\u06e0\u06d8\u06d9\u06e2\u06e4\u06ec\u06eb\u06e0\u06e7\u06eb\u06d7\u06e1\u06dc\u06d8\u06eb\u06d7\u06d8\u06d8\u06d8\u06df\u06e1\u06d8\u06db\u06e6\u06e7\u06d8\u06e8\u06dc\u06e0\u06d8\u06da\u06d6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1aa

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xfd

    const/16 v2, 0x260

    const v3, 0x2a68b3e0

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06e1\u06e8\u06d8\u06d8\u06df\u06dc\u06d8\u06e7\u06d9\u06e8\u06d6\u06d9\u06db\u06e7\u06e1\u06db\u06db\u06eb\u06e5\u06d7\u06e6\u06db\u06d6\u06e8\u06eb\u06e4\u06d8\u06da\u06e5\u06d6\u06e7\u06e0\u06dc\u06e5\u06d8\u06e6\u06dc\u06e0\u06db\u06e5\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e4\u06d7\u06eb\u06d6\u06e5\u06d9\u06da\u06d9\u06e2\u06d6\u06ec\u06d7\u06e4\u06d6\u06e2\u06e7\u06da\u06e7\u06e8\u06e4\u06da\u06d7\u06ec\u06dc\u06da\u06d6\u06d6\u06e7\u06e6\u06e5\u06d8\u06dc\u06e8\u06e7\u06d8\u06dc\u06d8\u06e7\u06e1\u06d7\u06e2\u06e8\u06dc\u06e8\u06df\u06e4\u06d9\u06da"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0O0;->OooO00o:I

    const-string v0, "\u06d7\u06d9\u06db\u06e5\u06d8\u06d9\u06d8\u06da\u06e2\u06db\u06e0\u06dc\u06d8\u06e2\u06d6\u06e5\u06d8\u06e4\u06da\u06d8\u06e5\u06db\u06d9\u06d6\u06eb\u06e4\u06e6\u06df\u06e0\u06d6\u06db\u06e1\u06d8\u06e2\u06da\u06e6\u06ec\u06dc\u06e1\u06d8\u06e7\u06d6\u06d8\u06e4\u06da\u06e1"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ecb09c6 -> :sswitch_2
        -0x61b142f5 -> :sswitch_0
        0x10c1fa10 -> :sswitch_3
        0x547ac6d7 -> :sswitch_1
    .end sparse-switch
.end method

.method public OooO0o(I)V
    .locals 4

    const-string v0, "\u06ec\u06dc\u06e7\u06d8\u06df\u06dc\u06e7\u06d8\u06e8\u06df\u06e2\u06e4\u06e5\u06e4\u06e8\u06e1\u06dc\u06d8\u06e8\u06e0\u06e8\u06dc\u06dc\u06e4\u06df\u06ec\u06dc\u06dc\u06d6\u06d9\u06ec\u06e5\u06d9\u06d9\u06dc\u06db\u06eb\u06e5"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3b6

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x34e

    const/16 v2, 0x3d8

    const v3, -0x1f9be1c2

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06e2\u06e0\u06d9\u06e8\u06e2\u06eb\u06e0\u06e8\u06d8\u06d9\u06e7\u06e0\u06e8\u06eb\u06dc\u06d9\u06e6\u06ec\u06df\u06d9\u06e6\u06e8\u06e1\u06d8\u06e6\u06d7\u06da\u06d6\u06e1\u06d8\u06d8\u06d6\u06ec\u06e2\u06db\u06d7\u06d7\u06e2\u06d6\u06ec\u06db\u06da\u06eb\u06d8\u06e7\u06e8\u06d8\u06d7\u06db\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e7\u06db\u06e1\u06d8\u06e5\u06d7\u06e6\u06e2\u06da\u06e6\u06d8\u06da\u06e4\u06ec\u06db\u06ec\u06d8\u06d8\u06d7\u06df\u06db\u06e0\u06db\u06e6\u06e8\u06e5\u06d6\u06e5\u06e5\u06e7\u06d8\u06d6\u06e4\u06e1\u06e4\u06da\u06e6\u06df\u06e2\u06e6\u06d8\u06e1\u06e1\u06e8\u06dc\u06ec\u06e7\u06e4\u06e2\u06e2\u06d6\u06e7\u06e0\u06e5\u06e5\u06df\u06d8\u06d8\u06e2"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0O0;->OooO0O0:I

    const-string v0, "\u06d7\u06e6\u06d8\u06d8\u06eb\u06e0\u06ec\u06e4\u06d6\u06d8\u06dc\u06d7\u06e4\u06e1\u06e4\u06e4\u06e6\u06d9\u06ec\u06e5\u06db\u06e0\u06d7\u06eb\u06df\u06d6\u06d8\u06e4\u06d8\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4a992474 -> :sswitch_0
        -0x34f2f840 -> :sswitch_3
        -0x2207c781 -> :sswitch_2
        -0x187d69e9 -> :sswitch_1
    .end sparse-switch
.end method

.method public OooO0o0(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u06da\u06e2\u06d6\u06ec\u06dc\u06ec\u06df\u06e4\u06e2\u06e2\u06e8\u06d6\u06d8\u06d9\u06e6\u06dc\u06d8\u06da\u06df\u06e5\u06d8\u06dc\u06df\u06da\u06ec\u06e8\u06e8\u06d7\u06e4\u06df\u06db\u06d7\u06d6\u06e6\u06d6\u06dc\u06ec\u06dc\u06e7\u06ec\u06d6\u06e2\u06da\u06dc\u06d8\u06d9\u06db\u06d8\u06e1\u06e6\u06d7\u06db\u06da\u06e6\u06eb\u06df\u06d6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x260

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x358

    const/16 v2, 0x320

    const v3, 0x53bf925b

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06ec\u06d8\u06d8\u06e7\u06e5\u06d6\u06d7\u06e4\u06e5\u06d8\u06e4\u06e7\u06e0\u06d9\u06e5\u06d8\u06e6\u06e4\u06d8\u06e2\u06db\u06e1\u06d8\u06e5\u06d9\u06e6\u06d8\u06da\u06e0\u06e1\u06e5\u06df\u06e8\u06d8\u06d9\u06eb\u06db\u06ec\u06d6\u06dc\u06d8\u06ec\u06e4\u06da\u06eb\u06d6\u06e8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d8\u06d8\u06d9\u06d7\u06d9\u06e6\u06d9\u06e5\u06d7\u06dc\u06d8\u06e5\u06e4\u06e4\u06e6\u06dc\u06da\u06e1\u06e7\u06e1\u06df\u06df\u06e1\u06d8\u06d9\u06e7\u06da\u06d6\u06d9\u06e6\u06d7\u06ec\u06eb\u06e2\u06d7\u06e8"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo$OooO0O0;->OooO0OO:Ljava/lang/String;

    const-string v0, "\u06e0\u06e6\u06dc\u06d8\u06df\u06e2\u06e7\u06e4\u06e7\u06e5\u06eb\u06e1\u06e0\u06dc\u06e7\u06e6\u06e5\u06ec\u06e0\u06d7\u06e8\u06d8\u06d8\u06e2\u06dc\u06e7\u06d8\u06e7\u06e1\u06db\u06d8\u06d9\u06d9\u06e5\u06e2\u06e5\u06e2\u06da\u06d6\u06d8\u06dc\u06e5\u06db\u06e1\u06e5\u06ec"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x67e50964 -> :sswitch_1
        -0x2f7920c0 -> :sswitch_0
        0x14d65588 -> :sswitch_2
        0x1c52375e -> :sswitch_3
    .end sparse-switch
.end method
